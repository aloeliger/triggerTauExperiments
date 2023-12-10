import hls4ml
from tensorflow import keras

theModel = keras.models.load_model("./bestSTOATModel")

hls_model = hls4ml.converters.convert_from_keras_model(
    theModel,
    output_dir="./STOAT_HLS"
)

hls_model.write()
