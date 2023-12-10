import h5py
import numpy as np
from tensorflow import keras
from sklearn.model_selection import train_test_split
from sklearn.utils.class_weight import compute_class_weight, compute_sample_weight
from rich.console import Console
from qkeras import *

console = Console()

def main():
    with h5py.File('dataset.h5', 'r') as theFile:
        X_all = np.array(theFile['inputs'])
        y_all = np.array(theFile['outputs'])

    X_all = np.reshape(X_all, (-1,18,14,1))
    y_all = np.reshape(y_all, (-1,18,14,1))

    print(X_all.shape)
    print(y_all.shape)

    X_train, X_val, y_train, y_val = train_test_split(
        X_all,
        y_all,
        test_size=0.3,
        random_state=1234
    )

    print(X_train.shape)
    print(y_train.shape)
    print(X_val.shape)
    print(y_val.shape)

    y_reshape = np.reshape(y_train, (-1,))

    print(np.unique(y_reshape))
    class_weighting = compute_class_weight(class_weight='balanced', classes=np.unique(y_reshape), y=y_reshape)
    class_weight_dic = dict(enumerate(class_weighting))
    print(class_weight_dic)
    sample_weights = compute_sample_weight('balanced', y_reshape)
    sample_weights = np.reshape(sample_weights, (-1, 18, 14, 1))

    model = keras.models.Sequential(
        [
            keras.layers.Input(shape=X_train.shape[1:]),
            QConv2D(
                4,
                kernel_size=7,
                padding="same",
                kernel_quantizer=quantized_bits(16),
            ),
            QActivation(
                "quantized_relu(16,8)"
            ),
            QConv2D(
                4,
                kernel_size=5,
                padding="same",
                kernel_quantizer=quantized_bits(16),
            ),
            QActivation(
                "quantized_relu(16,8)"
            ),
            QConv2D(
                1,
                kernel_size=3,
                padding="same",
                kernel_quantizer=quantized_bits(16),
            ),
            keras.layers.Activation('sigmoid')
        ]
    )

    model.compile(
        loss='binary_crossentropy',
        optimizer='adam',
        metrics = [keras.metrics.BinaryAccuracy()]
    )

    model.summary()

    bestModelCheckpoint = keras.callbacks.ModelCheckpoint(
        filepath='./bestSTOATModel',
        save_best_only=True
    )

    model.fit(
        x=X_train,
        y=y_train,
        validation_data=(X_val, y_val),
        epochs=10,
        sample_weight=sample_weights,
        callbacks=[bestModelCheckpoint]
    )

    model = keras.models.load_model('./bestSTOATModel')

    with open('bestSTOATJson.json', 'w') as jsonFile:
        jsonFile.write(model.to_json())


if __name__ == '__main__':
    main()