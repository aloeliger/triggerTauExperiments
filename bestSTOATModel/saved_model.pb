ޗ&
��
.
Abs
x"T
y"T"
Ttype:

2	
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
8
Pow
x"T
y"T
z"T"
Ttype:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
2
Round
x"T
y"T"
Ttype:
2
	
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
1
Sign
x"T
y"T"
Ttype:
2
	
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.6.42unknown8��$
�
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namebatch_normalization/gamma
�
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:*
dtype0
�
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namebatch_normalization/beta
�
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:*
dtype0
�
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!batch_normalization/moving_mean
�
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:*
dtype0
�
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization/moving_variance
�
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:*
dtype0
�
q_conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameq_conv2d/kernel
{
#q_conv2d/kernel/Read/ReadVariableOpReadVariableOpq_conv2d/kernel*&
_output_shapes
:*
dtype0
r
q_conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameq_conv2d/bias
k
!q_conv2d/bias/Read/ReadVariableOpReadVariableOpq_conv2d/bias*
_output_shapes
:*
dtype0
�
q_conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameq_conv2d_1/kernel

%q_conv2d_1/kernel/Read/ReadVariableOpReadVariableOpq_conv2d_1/kernel*&
_output_shapes
:*
dtype0
v
q_conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameq_conv2d_1/bias
o
#q_conv2d_1/bias/Read/ReadVariableOpReadVariableOpq_conv2d_1/bias*
_output_shapes
:*
dtype0
�
q_conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameq_conv2d_2/kernel

%q_conv2d_2/kernel/Read/ReadVariableOpReadVariableOpq_conv2d_2/kernel*&
_output_shapes
:*
dtype0
v
q_conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameq_conv2d_2/bias
o
#q_conv2d_2/bias/Read/ReadVariableOpReadVariableOpq_conv2d_2/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
�
 Adam/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/batch_normalization/gamma/m
�
4Adam/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/m*
_output_shapes
:*
dtype0
�
Adam/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/batch_normalization/beta/m
�
3Adam/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/m*
_output_shapes
:*
dtype0
�
Adam/q_conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/q_conv2d/kernel/m
�
*Adam/q_conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/q_conv2d/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/q_conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/q_conv2d/bias/m
y
(Adam/q_conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/q_conv2d/bias/m*
_output_shapes
:*
dtype0
�
Adam/q_conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/q_conv2d_1/kernel/m
�
,Adam/q_conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/q_conv2d_1/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/q_conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/q_conv2d_1/bias/m
}
*Adam/q_conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/q_conv2d_1/bias/m*
_output_shapes
:*
dtype0
�
Adam/q_conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/q_conv2d_2/kernel/m
�
,Adam/q_conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/q_conv2d_2/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/q_conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/q_conv2d_2/bias/m
}
*Adam/q_conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/q_conv2d_2/bias/m*
_output_shapes
:*
dtype0
�
 Adam/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/batch_normalization/gamma/v
�
4Adam/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/v*
_output_shapes
:*
dtype0
�
Adam/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/batch_normalization/beta/v
�
3Adam/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/v*
_output_shapes
:*
dtype0
�
Adam/q_conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/q_conv2d/kernel/v
�
*Adam/q_conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/q_conv2d/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/q_conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/q_conv2d/bias/v
y
(Adam/q_conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/q_conv2d/bias/v*
_output_shapes
:*
dtype0
�
Adam/q_conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/q_conv2d_1/kernel/v
�
,Adam/q_conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/q_conv2d_1/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/q_conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/q_conv2d_1/bias/v
}
*Adam/q_conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/q_conv2d_1/bias/v*
_output_shapes
:*
dtype0
�
Adam/q_conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/q_conv2d_2/kernel/v
�
,Adam/q_conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/q_conv2d_2/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/q_conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/q_conv2d_2/bias/v
}
*Adam/q_conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/q_conv2d_2/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�:
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�:
value�9B�9 B�9
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
	optimizer
	regularization_losses

trainable_variables
	variables
	keras_api

signatures
�
axis
	gamma
beta
moving_mean
moving_variance
regularization_losses
trainable_variables
	variables
	keras_api
�
kernel_quantizer
kernel_quantizer_internal

quantizers

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
a
	quantizer
 regularization_losses
!trainable_variables
"	variables
#	keras_api
�
$kernel_quantizer
$kernel_quantizer_internal
%
quantizers

&kernel
'bias
(regularization_losses
)trainable_variables
*	variables
+	keras_api
a
,	quantizer
-regularization_losses
.trainable_variables
/	variables
0	keras_api
�
1kernel_quantizer
1kernel_quantizer_internal
2
quantizers

3kernel
4bias
5regularization_losses
6trainable_variables
7	variables
8	keras_api
R
9regularization_losses
:trainable_variables
;	variables
<	keras_api
�
=iter

>beta_1

?beta_2
	@decay
Alearning_ratemumvmwmx&my'mz3m{4m|v}v~vv�&v�'v�3v�4v�
 
8
0
1
2
3
&4
'5
36
47
F
0
1
2
3
4
5
&6
'7
38
49
�
	regularization_losses

Blayers
Clayer_regularization_losses

trainable_variables
Dnon_trainable_variables
Elayer_metrics
Fmetrics
	variables
 
 
db
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
2
3
�
regularization_losses

Glayers
Hlayer_regularization_losses
trainable_variables
Inon_trainable_variables
Jlayer_metrics
Kmetrics
	variables
 

0
[Y
VARIABLE_VALUEq_conv2d/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEq_conv2d/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
�
regularization_losses

Llayers
Mlayer_regularization_losses
trainable_variables
Nnon_trainable_variables
Olayer_metrics
Pmetrics
	variables
 
 
 
 
�
 regularization_losses

Qlayers
Rlayer_regularization_losses
!trainable_variables
Snon_trainable_variables
Tlayer_metrics
Umetrics
"	variables
 

$0
][
VARIABLE_VALUEq_conv2d_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEq_conv2d_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

&0
'1

&0
'1
�
(regularization_losses

Vlayers
Wlayer_regularization_losses
)trainable_variables
Xnon_trainable_variables
Ylayer_metrics
Zmetrics
*	variables
 
 
 
 
�
-regularization_losses

[layers
\layer_regularization_losses
.trainable_variables
]non_trainable_variables
^layer_metrics
_metrics
/	variables
 

10
][
VARIABLE_VALUEq_conv2d_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEq_conv2d_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

30
41

30
41
�
5regularization_losses

`layers
alayer_regularization_losses
6trainable_variables
bnon_trainable_variables
clayer_metrics
dmetrics
7	variables
 
 
 
�
9regularization_losses

elayers
flayer_regularization_losses
:trainable_variables
gnon_trainable_variables
hlayer_metrics
imetrics
;	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
1
0
1
2
3
4
5
6
 

0
1
 

j0
k1
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	ltotal
	mcount
n	variables
o	keras_api
D
	ptotal
	qcount
r
_fn_kwargs
s	variables
t	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

l0
m1

n	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

p0
q1

s	variables
��
VARIABLE_VALUE Adam/batch_normalization/gamma/mQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/batch_normalization/beta/mPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/q_conv2d/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/q_conv2d/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/q_conv2d_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/q_conv2d_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/q_conv2d_2/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/q_conv2d_2/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE Adam/batch_normalization/gamma/vQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/batch_normalization/beta/vPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/q_conv2d/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/q_conv2d/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/q_conv2d_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/q_conv2d_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/q_conv2d_2/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/q_conv2d_2/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_input_1Placeholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1batch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceq_conv2d/kernelq_conv2d/biasq_conv2d_1/kernelq_conv2d_1/biasq_conv2d_2/kernelq_conv2d_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2*0,1J 8� *.
f)R'
%__inference_signature_wrapper_3133457
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp#q_conv2d/kernel/Read/ReadVariableOp!q_conv2d/bias/Read/ReadVariableOp%q_conv2d_1/kernel/Read/ReadVariableOp#q_conv2d_1/bias/Read/ReadVariableOp%q_conv2d_2/kernel/Read/ReadVariableOp#q_conv2d_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp4Adam/batch_normalization/gamma/m/Read/ReadVariableOp3Adam/batch_normalization/beta/m/Read/ReadVariableOp*Adam/q_conv2d/kernel/m/Read/ReadVariableOp(Adam/q_conv2d/bias/m/Read/ReadVariableOp,Adam/q_conv2d_1/kernel/m/Read/ReadVariableOp*Adam/q_conv2d_1/bias/m/Read/ReadVariableOp,Adam/q_conv2d_2/kernel/m/Read/ReadVariableOp*Adam/q_conv2d_2/bias/m/Read/ReadVariableOp4Adam/batch_normalization/gamma/v/Read/ReadVariableOp3Adam/batch_normalization/beta/v/Read/ReadVariableOp*Adam/q_conv2d/kernel/v/Read/ReadVariableOp(Adam/q_conv2d/bias/v/Read/ReadVariableOp,Adam/q_conv2d_1/kernel/v/Read/ReadVariableOp*Adam/q_conv2d_1/bias/v/Read/ReadVariableOp,Adam/q_conv2d_2/kernel/v/Read/ReadVariableOp*Adam/q_conv2d_2/bias/v/Read/ReadVariableOpConst*0
Tin)
'2%	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *)
f$R"
 __inference__traced_save_3136015
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceq_conv2d/kernelq_conv2d/biasq_conv2d_1/kernelq_conv2d_1/biasq_conv2d_2/kernelq_conv2d_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1 Adam/batch_normalization/gamma/mAdam/batch_normalization/beta/mAdam/q_conv2d/kernel/mAdam/q_conv2d/bias/mAdam/q_conv2d_1/kernel/mAdam/q_conv2d_1/bias/mAdam/q_conv2d_2/kernel/mAdam/q_conv2d_2/bias/m Adam/batch_normalization/gamma/vAdam/batch_normalization/beta/vAdam/q_conv2d/kernel/vAdam/q_conv2d/bias/vAdam/q_conv2d_1/kernel/vAdam/q_conv2d_1/bias/vAdam/q_conv2d_2/kernel/vAdam/q_conv2d_2/bias/v*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *,
f'R%
#__inference__traced_restore_3136130߿#
�
�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3135085

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3133245

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_sequential_layer_call_fn_3133164
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_31331412
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�

�
,__inference_sequential_layer_call_fn_3133482

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_31331412
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�&
e
I__inference_q_activation_layer_call_and_return_conditional_losses_3132642

inputs
identityP
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
Pow/xP
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :2
Pow/yR
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: 2
PowM
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
CastT
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
Pow_1/xT
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
Pow_1/yZ
Pow_1PowPow_1/x:output:0Pow_1/y:output:0*
T0*
_output_shapes
: 2
Pow_1S
Cast_1Cast	Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_1S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
ConstV
Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B :2

Cast_2/x[
Cast_2CastCast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_2S
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �A2
sub/yN
subSub
Cast_2:y:0sub/y:output:0*
T0*
_output_shapes
: 2
subO
Pow_2PowConst:output:0sub:z:0*
T0*
_output_shapes
: 2
Pow_2M
sub_1Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: 2
sub_1p
	LessEqual	LessEqualinputs	sub_1:z:0*
T0*/
_output_shapes
:���������2
	LessEqualV
ReluReluinputs*
T0*/
_output_shapes
:���������2
ReluX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like/Const�
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*/
_output_shapes
:���������2
	ones_likeM
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: 2
sub_2j
mulMulones_like:output:0	sub_2:z:0*
T0*/
_output_shapes
:���������2
mul�
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*/
_output_shapes
:���������2

SelectV2a
mul_1MulinputsCast:y:0*
T0*/
_output_shapes
:���������2
mul_1n
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*/
_output_shapes
:���������2	
truedivX
NegNegtruediv:z:0*
T0*/
_output_shapes
:���������2
Neg^
RoundRoundtruediv:z:0*
T0*/
_output_shapes
:���������2
Rounda
addAddV2Neg:y:0	Round:y:0*
T0*/
_output_shapes
:���������2
addo
StopGradientStopGradientadd:z:0*
T0*/
_output_shapes
:���������2
StopGradientu
add_1AddV2truediv:z:0StopGradient:output:0*
T0*/
_output_shapes
:���������2
add_1p
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*/
_output_shapes
:���������2
	truediv_1_
truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
truediv_2/xb
	truediv_2RealDivtruediv_2/x:output:0Cast:y:0*
T0*
_output_shapes
: 2
	truediv_2W
sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2	
sub_3/xW
sub_3Subsub_3/x:output:0truediv_2:z:0*
T0*
_output_shapes
: 2
sub_3�
clip_by_value/MinimumMinimumtruediv_1:z:0	sub_3:z:0*
T0*/
_output_shapes
:���������2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y�
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:���������2
clip_by_valuen
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*/
_output_shapes
:���������2
mul_2b
Neg_1NegSelectV2:output:0*
T0*/
_output_shapes
:���������2
Neg_1g
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*/
_output_shapes
:���������2
add_2W
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2	
mul_3/xl
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*/
_output_shapes
:���������2
mul_3u
StopGradient_1StopGradient	mul_3:z:0*
T0*/
_output_shapes
:���������2
StopGradient_1}
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*/
_output_shapes
:���������2
add_3e
IdentityIdentity	add_3:z:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
c
G__inference_activation_layer_call_and_return_conditional_losses_3135887

inputs
identity_
SigmoidSigmoidinputs*
T0*/
_output_shapes
:���������2	
Sigmoidg
IdentityIdentitySigmoid:y:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
G__inference_q_conv2d_1_layer_call_and_return_conditional_losses_3135601

inputs1
readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�ReadVariableOpP
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
Pow/xP
Pow/yConst*
_output_shapes
: *
dtype0*
value	B : 2
Pow/yR
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: 2
PowM
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast�
ReadVariableOpReadVariableOpreadvariableop_resource*&
_output_shapes
:*
dtype02
ReadVariableOpp
truedivRealDivReadVariableOp:value:0Cast:y:0*
T0*&
_output_shapes
:2	
truedivO
AbsAbstruediv:z:0*
T0*&
_output_shapes
:2
Abs�
Max/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Max/reduction_indices|
MaxMaxAbs:y:0Max/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
MaxS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
mul/y`
mulMulMax:output:0mul/y:output:0*
T0*&
_output_shapes
:2
mul_
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
truediv_1/yq
	truediv_1RealDivmul:z:0truediv_1/y:output:0*
T0*&
_output_shapes
:2
	truediv_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
add/yc
addAddV2truediv_1:z:0add/y:output:0*
T0*&
_output_shapes
:2
addK
LogLogadd:z:0*
T0*&
_output_shapes
:2
Log_
truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_2/yq
	truediv_2RealDivLog:y:0truediv_2/y:output:0*
T0*&
_output_shapes
:2
	truediv_2W
RoundRoundtruediv_2:z:0*
T0*&
_output_shapes
:2
RoundW
Pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_1/xc
Pow_1PowPow_1/x:output:0	Round:y:0*
T0*&
_output_shapes
:2
Pow_1S
Abs_1Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_1h
	truediv_3RealDiv	Abs_1:y:0	Pow_1:z:0*
T0*&
_output_shapes
:2
	truediv_3W
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
add_1/yi
add_1AddV2truediv_3:z:0add_1/y:output:0*
T0*&
_output_shapes
:2
add_1S
FloorFloor	add_1:z:0*
T0*&
_output_shapes
:2
FloorU
Less/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
Less/ya
LessLess	Floor:y:0Less/y:output:0*
T0*&
_output_shapes
:2
LessR
SignSigntruediv:z:0*
T0*&
_output_shapes
:2
Sign{
ones_like/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like/Const�
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*&
_output_shapes
:2
	ones_likeW
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2	
mul_1/yl
mul_1Mulones_like:output:0mul_1/y:output:0*
T0*&
_output_shapes
:2
mul_1_
truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_4/ys
	truediv_4RealDiv	mul_1:z:0truediv_4/y:output:0*
T0*&
_output_shapes
:2
	truediv_4u
SelectV2SelectV2Less:z:0	Floor:y:0truediv_4:z:0*
T0*&
_output_shapes
:2

SelectV2c
mul_2MulSign:y:0SelectV2:output:0*
T0*&
_output_shapes
:2
mul_2^
Mul_3Multruediv:z:0	mul_2:z:0*
T0*&
_output_shapes
:2
Mul_3�
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean/reduction_indices�
MeanMean	Mul_3:z:0Mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean\
Mul_4Mul	mul_2:z:0	mul_2:z:0*
T0*&
_output_shapes
:2
Mul_4�
Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_1/reduction_indices�
Mean_1Mean	Mul_4:z:0!Mean_1/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_1W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_2/yk
add_2AddV2Mean_1:output:0add_2/y:output:0*
T0*&
_output_shapes
:2
add_2l
	truediv_5RealDivMean:output:0	add_2:z:0*
T0*&
_output_shapes
:2
	truediv_5W
add_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_3/yi
add_3AddV2truediv_5:z:0add_3/y:output:0*
T0*&
_output_shapes
:2
add_3Q
Log_1Log	add_3:z:0*
T0*&
_output_shapes
:2
Log_1_
truediv_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_6/ys
	truediv_6RealDiv	Log_1:y:0truediv_6/y:output:0*
T0*&
_output_shapes
:2
	truediv_6[
Round_1Roundtruediv_6:z:0*
T0*&
_output_shapes
:2	
Round_1W
Pow_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_2/xe
Pow_2PowPow_2/x:output:0Round_1:y:0*
T0*&
_output_shapes
:2
Pow_2S
Abs_2Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_2h
	truediv_7RealDiv	Abs_2:y:0	Pow_2:z:0*
T0*&
_output_shapes
:2
	truediv_7W
add_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
add_4/yi
add_4AddV2truediv_7:z:0add_4/y:output:0*
T0*&
_output_shapes
:2
add_4W
Floor_1Floor	add_4:z:0*
T0*&
_output_shapes
:2	
Floor_1Y
Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_1/yi
Less_1LessFloor_1:y:0Less_1/y:output:0*
T0*&
_output_shapes
:2
Less_1V
Sign_1Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_1
ones_like_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_1/Const�
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*&
_output_shapes
:2
ones_like_1W
mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2	
mul_5/yn
mul_5Mulones_like_1:output:0mul_5/y:output:0*
T0*&
_output_shapes
:2
mul_5_
truediv_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_8/ys
	truediv_8RealDiv	mul_5:z:0truediv_8/y:output:0*
T0*&
_output_shapes
:2
	truediv_8}

SelectV2_1SelectV2
Less_1:z:0Floor_1:y:0truediv_8:z:0*
T0*&
_output_shapes
:2

SelectV2_1g
mul_6Mul
Sign_1:y:0SelectV2_1:output:0*
T0*&
_output_shapes
:2
mul_6^
Mul_7Multruediv:z:0	mul_6:z:0*
T0*&
_output_shapes
:2
Mul_7�
Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_2/reduction_indices�
Mean_2Mean	Mul_7:z:0!Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_2\
Mul_8Mul	mul_6:z:0	mul_6:z:0*
T0*&
_output_shapes
:2
Mul_8�
Mean_3/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_3/reduction_indices�
Mean_3Mean	Mul_8:z:0!Mean_3/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_3W
add_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_5/yk
add_5AddV2Mean_3:output:0add_5/y:output:0*
T0*&
_output_shapes
:2
add_5n
	truediv_9RealDivMean_2:output:0	add_5:z:0*
T0*&
_output_shapes
:2
	truediv_9W
add_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_6/yi
add_6AddV2truediv_9:z:0add_6/y:output:0*
T0*&
_output_shapes
:2
add_6Q
Log_2Log	add_6:z:0*
T0*&
_output_shapes
:2
Log_2a
truediv_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_10/yv

truediv_10RealDiv	Log_2:y:0truediv_10/y:output:0*
T0*&
_output_shapes
:2

truediv_10\
Round_2Roundtruediv_10:z:0*
T0*&
_output_shapes
:2	
Round_2W
Pow_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_3/xe
Pow_3PowPow_3/x:output:0Round_2:y:0*
T0*&
_output_shapes
:2
Pow_3S
Abs_3Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_3j

truediv_11RealDiv	Abs_3:y:0	Pow_3:z:0*
T0*&
_output_shapes
:2

truediv_11W
add_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
add_7/yj
add_7AddV2truediv_11:z:0add_7/y:output:0*
T0*&
_output_shapes
:2
add_7W
Floor_2Floor	add_7:z:0*
T0*&
_output_shapes
:2	
Floor_2Y
Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_2/yi
Less_2LessFloor_2:y:0Less_2/y:output:0*
T0*&
_output_shapes
:2
Less_2V
Sign_2Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_2
ones_like_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_2/Shapek
ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_2/Const�
ones_like_2Fillones_like_2/Shape:output:0ones_like_2/Const:output:0*
T0*&
_output_shapes
:2
ones_like_2W
mul_9/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2	
mul_9/yn
mul_9Mulones_like_2:output:0mul_9/y:output:0*
T0*&
_output_shapes
:2
mul_9a
truediv_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_12/yv

truediv_12RealDiv	mul_9:z:0truediv_12/y:output:0*
T0*&
_output_shapes
:2

truediv_12~

SelectV2_2SelectV2
Less_2:z:0Floor_2:y:0truediv_12:z:0*
T0*&
_output_shapes
:2

SelectV2_2i
mul_10Mul
Sign_2:y:0SelectV2_2:output:0*
T0*&
_output_shapes
:2
mul_10a
Mul_11Multruediv:z:0
mul_10:z:0*
T0*&
_output_shapes
:2
Mul_11�
Mean_4/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_4/reduction_indices�
Mean_4Mean
Mul_11:z:0!Mean_4/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_4`
Mul_12Mul
mul_10:z:0
mul_10:z:0*
T0*&
_output_shapes
:2
Mul_12�
Mean_5/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_5/reduction_indices�
Mean_5Mean
Mul_12:z:0!Mean_5/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_5W
add_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_8/yk
add_8AddV2Mean_5:output:0add_8/y:output:0*
T0*&
_output_shapes
:2
add_8p

truediv_13RealDivMean_4:output:0	add_8:z:0*
T0*&
_output_shapes
:2

truediv_13W
add_9/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_9/yj
add_9AddV2truediv_13:z:0add_9/y:output:0*
T0*&
_output_shapes
:2
add_9Q
Log_3Log	add_9:z:0*
T0*&
_output_shapes
:2
Log_3a
truediv_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_14/yv

truediv_14RealDiv	Log_3:y:0truediv_14/y:output:0*
T0*&
_output_shapes
:2

truediv_14\
Round_3Roundtruediv_14:z:0*
T0*&
_output_shapes
:2	
Round_3W
Pow_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_4/xe
Pow_4PowPow_4/x:output:0Round_3:y:0*
T0*&
_output_shapes
:2
Pow_4S
Abs_4Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_4j

truediv_15RealDiv	Abs_4:y:0	Pow_4:z:0*
T0*&
_output_shapes
:2

truediv_15Y
add_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2

add_10/ym
add_10AddV2truediv_15:z:0add_10/y:output:0*
T0*&
_output_shapes
:2
add_10X
Floor_3Floor
add_10:z:0*
T0*&
_output_shapes
:2	
Floor_3Y
Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_3/yi
Less_3LessFloor_3:y:0Less_3/y:output:0*
T0*&
_output_shapes
:2
Less_3V
Sign_3Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_3
ones_like_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_3/Shapek
ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_3/Const�
ones_like_3Fillones_like_3/Shape:output:0ones_like_3/Const:output:0*
T0*&
_output_shapes
:2
ones_like_3Y
mul_13/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2

mul_13/yq
mul_13Mulones_like_3:output:0mul_13/y:output:0*
T0*&
_output_shapes
:2
mul_13a
truediv_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_16/yw

truediv_16RealDiv
mul_13:z:0truediv_16/y:output:0*
T0*&
_output_shapes
:2

truediv_16~

SelectV2_3SelectV2
Less_3:z:0Floor_3:y:0truediv_16:z:0*
T0*&
_output_shapes
:2

SelectV2_3i
mul_14Mul
Sign_3:y:0SelectV2_3:output:0*
T0*&
_output_shapes
:2
mul_14a
Mul_15Multruediv:z:0
mul_14:z:0*
T0*&
_output_shapes
:2
Mul_15�
Mean_6/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_6/reduction_indices�
Mean_6Mean
Mul_15:z:0!Mean_6/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_6`
Mul_16Mul
mul_14:z:0
mul_14:z:0*
T0*&
_output_shapes
:2
Mul_16�
Mean_7/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_7/reduction_indices�
Mean_7Mean
Mul_16:z:0!Mean_7/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_7Y
add_11/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_11/yn
add_11AddV2Mean_7:output:0add_11/y:output:0*
T0*&
_output_shapes
:2
add_11q

truediv_17RealDivMean_6:output:0
add_11:z:0*
T0*&
_output_shapes
:2

truediv_17Y
add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_12/ym
add_12AddV2truediv_17:z:0add_12/y:output:0*
T0*&
_output_shapes
:2
add_12R
Log_4Log
add_12:z:0*
T0*&
_output_shapes
:2
Log_4a
truediv_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_18/yv

truediv_18RealDiv	Log_4:y:0truediv_18/y:output:0*
T0*&
_output_shapes
:2

truediv_18\
Round_4Roundtruediv_18:z:0*
T0*&
_output_shapes
:2	
Round_4W
Pow_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_5/xe
Pow_5PowPow_5/x:output:0Round_4:y:0*
T0*&
_output_shapes
:2
Pow_5S
Abs_5Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_5j

truediv_19RealDiv	Abs_5:y:0	Pow_5:z:0*
T0*&
_output_shapes
:2

truediv_19Y
add_13/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2

add_13/ym
add_13AddV2truediv_19:z:0add_13/y:output:0*
T0*&
_output_shapes
:2
add_13X
Floor_4Floor
add_13:z:0*
T0*&
_output_shapes
:2	
Floor_4Y
Less_4/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_4/yi
Less_4LessFloor_4:y:0Less_4/y:output:0*
T0*&
_output_shapes
:2
Less_4V
Sign_4Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_4
ones_like_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_4/Shapek
ones_like_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_4/Const�
ones_like_4Fillones_like_4/Shape:output:0ones_like_4/Const:output:0*
T0*&
_output_shapes
:2
ones_like_4Y
mul_17/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2

mul_17/yq
mul_17Mulones_like_4:output:0mul_17/y:output:0*
T0*&
_output_shapes
:2
mul_17a
truediv_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_20/yw

truediv_20RealDiv
mul_17:z:0truediv_20/y:output:0*
T0*&
_output_shapes
:2

truediv_20~

SelectV2_4SelectV2
Less_4:z:0Floor_4:y:0truediv_20:z:0*
T0*&
_output_shapes
:2

SelectV2_4i
mul_18Mul
Sign_4:y:0SelectV2_4:output:0*
T0*&
_output_shapes
:2
mul_18a
Mul_19Multruediv:z:0
mul_18:z:0*
T0*&
_output_shapes
:2
Mul_19�
Mean_8/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_8/reduction_indices�
Mean_8Mean
Mul_19:z:0!Mean_8/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_8`
Mul_20Mul
mul_18:z:0
mul_18:z:0*
T0*&
_output_shapes
:2
Mul_20�
Mean_9/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_9/reduction_indices�
Mean_9Mean
Mul_20:z:0!Mean_9/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_9Y
add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_14/yn
add_14AddV2Mean_9:output:0add_14/y:output:0*
T0*&
_output_shapes
:2
add_14q

truediv_21RealDivMean_8:output:0
add_14:z:0*
T0*&
_output_shapes
:2

truediv_21Y
add_15/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_15/ym
add_15AddV2truediv_21:z:0add_15/y:output:0*
T0*&
_output_shapes
:2
add_15R
Log_5Log
add_15:z:0*
T0*&
_output_shapes
:2
Log_5a
truediv_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_22/yv

truediv_22RealDiv	Log_5:y:0truediv_22/y:output:0*
T0*&
_output_shapes
:2

truediv_22\
Round_5Roundtruediv_22:z:0*
T0*&
_output_shapes
:2	
Round_5W
Pow_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_6/xe
Pow_6PowPow_6/x:output:0Round_5:y:0*
T0*&
_output_shapes
:2
Pow_6Y
mul_21/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2

mul_21/yf
mul_21Mul	Pow_6:z:0mul_21/y:output:0*
T0*&
_output_shapes
:2
mul_21_
mul_22MulCast:y:0truediv:z:0*
T0*&
_output_shapes
:2
mul_22^
mul_23MulCast:y:0
mul_18:z:0*
T0*&
_output_shapes
:2
mul_23a
truediv_23/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2
truediv_23/yw

truediv_23RealDiv
mul_23:z:0truediv_23/y:output:0*
T0*&
_output_shapes
:2

truediv_23d
mul_24Mul
mul_21:z:0truediv_23:z:0*
T0*&
_output_shapes
:2
mul_24N
NegNeg
mul_22:z:0*
T0*&
_output_shapes
:2
Neg_
add_16AddV2Neg:y:0
mul_24:z:0*
T0*&
_output_shapes
:2
add_16Y
mul_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2

mul_25/xg
mul_25Mulmul_25/x:output:0
add_16:z:0*
T0*&
_output_shapes
:2
mul_25i
StopGradientStopGradient
mul_25:z:0*
T0*&
_output_shapes
:2
StopGradientm
add_17AddV2
mul_22:z:0StopGradient:output:0*
T0*&
_output_shapes
:2
add_17�
convolutionConv2Dinputs
add_17:z:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
convolution�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconvolution:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityx
NoOpNoOp^BiasAdd/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2 
ReadVariableOpReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
5__inference_batch_normalization_layer_call_fn_3135018

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_31323642
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�$
�
G__inference_sequential_layer_call_and_return_conditional_losses_3133314

inputs)
batch_normalization_3133286:)
batch_normalization_3133288:)
batch_normalization_3133290:)
batch_normalization_3133292:*
q_conv2d_3133295:
q_conv2d_3133297:,
q_conv2d_1_3133301: 
q_conv2d_1_3133303:,
q_conv2d_2_3133307: 
q_conv2d_2_3133309:
identity��+batch_normalization/StatefulPartitionedCall� q_conv2d/StatefulPartitionedCall�"q_conv2d_1/StatefulPartitionedCall�"q_conv2d_2/StatefulPartitionedCall�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_3133286batch_normalization_3133288batch_normalization_3133290batch_normalization_3133292*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_31332452-
+batch_normalization/StatefulPartitionedCall�
 q_conv2d/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0q_conv2d_3133295q_conv2d_3133297*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_q_conv2d_layer_call_and_return_conditional_losses_31325872"
 q_conv2d/StatefulPartitionedCall�
q_activation/PartitionedCallPartitionedCall)q_conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_q_activation_layer_call_and_return_conditional_losses_31326422
q_activation/PartitionedCall�
"q_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall%q_activation/PartitionedCall:output:0q_conv2d_1_3133301q_conv2d_1_3133303*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_q_conv2d_1_layer_call_and_return_conditional_losses_31328572$
"q_conv2d_1/StatefulPartitionedCall�
q_activation_1/PartitionedCallPartitionedCall+q_conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_q_activation_1_layer_call_and_return_conditional_losses_31329122 
q_activation_1/PartitionedCall�
"q_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall'q_activation_1/PartitionedCall:output:0q_conv2d_2_3133307q_conv2d_2_3133309*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_q_conv2d_2_layer_call_and_return_conditional_losses_31331272$
"q_conv2d_2/StatefulPartitionedCall�
activation/PartitionedCallPartitionedCall+q_conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_31331382
activation/PartitionedCall�
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp,^batch_normalization/StatefulPartitionedCall!^q_conv2d/StatefulPartitionedCall#^q_conv2d_1/StatefulPartitionedCall#^q_conv2d_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2D
 q_conv2d/StatefulPartitionedCall q_conv2d/StatefulPartitionedCall2H
"q_conv2d_1/StatefulPartitionedCall"q_conv2d_1/StatefulPartitionedCall2H
"q_conv2d_2/StatefulPartitionedCall"q_conv2d_2/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�&
g
K__inference_q_activation_1_layer_call_and_return_conditional_losses_3132912

inputs
identityP
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
Pow/xP
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :2
Pow/yR
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: 2
PowM
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
CastT
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
Pow_1/xT
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
Pow_1/yZ
Pow_1PowPow_1/x:output:0Pow_1/y:output:0*
T0*
_output_shapes
: 2
Pow_1S
Cast_1Cast	Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_1S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
ConstV
Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B :2

Cast_2/x[
Cast_2CastCast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_2S
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �A2
sub/yN
subSub
Cast_2:y:0sub/y:output:0*
T0*
_output_shapes
: 2
subO
Pow_2PowConst:output:0sub:z:0*
T0*
_output_shapes
: 2
Pow_2M
sub_1Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: 2
sub_1p
	LessEqual	LessEqualinputs	sub_1:z:0*
T0*/
_output_shapes
:���������2
	LessEqualV
ReluReluinputs*
T0*/
_output_shapes
:���������2
ReluX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like/Const�
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*/
_output_shapes
:���������2
	ones_likeM
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: 2
sub_2j
mulMulones_like:output:0	sub_2:z:0*
T0*/
_output_shapes
:���������2
mul�
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*/
_output_shapes
:���������2

SelectV2a
mul_1MulinputsCast:y:0*
T0*/
_output_shapes
:���������2
mul_1n
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*/
_output_shapes
:���������2	
truedivX
NegNegtruediv:z:0*
T0*/
_output_shapes
:���������2
Neg^
RoundRoundtruediv:z:0*
T0*/
_output_shapes
:���������2
Rounda
addAddV2Neg:y:0	Round:y:0*
T0*/
_output_shapes
:���������2
addo
StopGradientStopGradientadd:z:0*
T0*/
_output_shapes
:���������2
StopGradientu
add_1AddV2truediv:z:0StopGradient:output:0*
T0*/
_output_shapes
:���������2
add_1p
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*/
_output_shapes
:���������2
	truediv_1_
truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
truediv_2/xb
	truediv_2RealDivtruediv_2/x:output:0Cast:y:0*
T0*
_output_shapes
: 2
	truediv_2W
sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2	
sub_3/xW
sub_3Subsub_3/x:output:0truediv_2:z:0*
T0*
_output_shapes
: 2
sub_3�
clip_by_value/MinimumMinimumtruediv_1:z:0	sub_3:z:0*
T0*/
_output_shapes
:���������2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y�
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:���������2
clip_by_valuen
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*/
_output_shapes
:���������2
mul_2b
Neg_1NegSelectV2:output:0*
T0*/
_output_shapes
:���������2
Neg_1g
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*/
_output_shapes
:���������2
add_2W
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2	
mul_3/xl
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*/
_output_shapes
:���������2
mul_3u
StopGradient_1StopGradient	mul_3:z:0*
T0*/
_output_shapes
:���������2
StopGradient_1}
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*/
_output_shapes
:���������2
add_3e
IdentityIdentity	add_3:z:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
G__inference_sequential_layer_call_and_return_conditional_losses_3134243

inputs9
+batch_normalization_readvariableop_resource:;
-batch_normalization_readvariableop_1_resource:J
<batch_normalization_fusedbatchnormv3_readvariableop_resource:L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource::
 q_conv2d_readvariableop_resource:6
(q_conv2d_biasadd_readvariableop_resource:<
"q_conv2d_1_readvariableop_resource:8
*q_conv2d_1_biasadd_readvariableop_resource:<
"q_conv2d_2_readvariableop_resource:8
*q_conv2d_2_biasadd_readvariableop_resource:
identity��3batch_normalization/FusedBatchNormV3/ReadVariableOp�5batch_normalization/FusedBatchNormV3/ReadVariableOp_1�"batch_normalization/ReadVariableOp�$batch_normalization/ReadVariableOp_1�q_conv2d/BiasAdd/ReadVariableOp�q_conv2d/ReadVariableOp�!q_conv2d_1/BiasAdd/ReadVariableOp�q_conv2d_1/ReadVariableOp�!q_conv2d_2/BiasAdd/ReadVariableOp�q_conv2d_2/ReadVariableOp�
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype02$
"batch_normalization/ReadVariableOp�
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype02&
$batch_normalization/ReadVariableOp_1�
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype025
3batch_normalization/FusedBatchNormV3/ReadVariableOp�
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype027
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1�
$batch_normalization/FusedBatchNormV3FusedBatchNormV3inputs*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 2&
$batch_normalization/FusedBatchNormV3b
q_conv2d/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
q_conv2d/Pow/xb
q_conv2d/Pow/yConst*
_output_shapes
: *
dtype0*
value	B : 2
q_conv2d/Pow/yv
q_conv2d/PowPowq_conv2d/Pow/x:output:0q_conv2d/Pow/y:output:0*
T0*
_output_shapes
: 2
q_conv2d/Powh
q_conv2d/CastCastq_conv2d/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
q_conv2d/Cast�
q_conv2d/ReadVariableOpReadVariableOp q_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
q_conv2d/ReadVariableOp�
q_conv2d/truedivRealDivq_conv2d/ReadVariableOp:value:0q_conv2d/Cast:y:0*
T0*&
_output_shapes
:2
q_conv2d/truedivj
q_conv2d/AbsAbsq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Abs�
q_conv2d/Max/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
q_conv2d/Max/reduction_indices�
q_conv2d/MaxMaxq_conv2d/Abs:y:0'q_conv2d/Max/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Maxe
q_conv2d/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/mul/y�
q_conv2d/mulMulq_conv2d/Max:output:0q_conv2d/mul/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/mulq
q_conv2d/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d/truediv_1/y�
q_conv2d/truediv_1RealDivq_conv2d/mul:z:0q_conv2d/truediv_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_1e
q_conv2d/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add/y�
q_conv2d/addAddV2q_conv2d/truediv_1:z:0q_conv2d/add/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/addf
q_conv2d/LogLogq_conv2d/add:z:0*
T0*&
_output_shapes
:2
q_conv2d/Logq
q_conv2d/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d/truediv_2/y�
q_conv2d/truediv_2RealDivq_conv2d/Log:y:0q_conv2d/truediv_2/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_2r
q_conv2d/RoundRoundq_conv2d/truediv_2:z:0*
T0*&
_output_shapes
:2
q_conv2d/Roundi
q_conv2d/Pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/Pow_1/x�
q_conv2d/Pow_1Powq_conv2d/Pow_1/x:output:0q_conv2d/Round:y:0*
T0*&
_output_shapes
:2
q_conv2d/Pow_1n
q_conv2d/Abs_1Absq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Abs_1�
q_conv2d/truediv_3RealDivq_conv2d/Abs_1:y:0q_conv2d/Pow_1:z:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_3i
q_conv2d/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d/add_1/y�
q_conv2d/add_1AddV2q_conv2d/truediv_3:z:0q_conv2d/add_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_1n
q_conv2d/FloorFloorq_conv2d/add_1:z:0*
T0*&
_output_shapes
:2
q_conv2d/Floorg
q_conv2d/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d/Less/y�
q_conv2d/LessLessq_conv2d/Floor:y:0q_conv2d/Less/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/Lessm
q_conv2d/SignSignq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Sign�
q_conv2d/ones_like/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d/ones_like/Shapey
q_conv2d/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d/ones_like/Const�
q_conv2d/ones_likeFill!q_conv2d/ones_like/Shape:output:0!q_conv2d/ones_like/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d/ones_likei
q_conv2d/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d/mul_1/y�
q_conv2d/mul_1Mulq_conv2d/ones_like:output:0q_conv2d/mul_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_1q
q_conv2d/truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/truediv_4/y�
q_conv2d/truediv_4RealDivq_conv2d/mul_1:z:0q_conv2d/truediv_4/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_4�
q_conv2d/SelectV2SelectV2q_conv2d/Less:z:0q_conv2d/Floor:y:0q_conv2d/truediv_4:z:0*
T0*&
_output_shapes
:2
q_conv2d/SelectV2�
q_conv2d/mul_2Mulq_conv2d/Sign:y:0q_conv2d/SelectV2:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_2�
q_conv2d/Mul_3Mulq_conv2d/truediv:z:0q_conv2d/mul_2:z:0*
T0*&
_output_shapes
:2
q_conv2d/Mul_3�
q_conv2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2!
q_conv2d/Mean/reduction_indices�
q_conv2d/MeanMeanq_conv2d/Mul_3:z:0(q_conv2d/Mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Mean�
q_conv2d/Mul_4Mulq_conv2d/mul_2:z:0q_conv2d/mul_2:z:0*
T0*&
_output_shapes
:2
q_conv2d/Mul_4�
!q_conv2d/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d/Mean_1/reduction_indices�
q_conv2d/Mean_1Meanq_conv2d/Mul_4:z:0*q_conv2d/Mean_1/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Mean_1i
q_conv2d/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add_2/y�
q_conv2d/add_2AddV2q_conv2d/Mean_1:output:0q_conv2d/add_2/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_2�
q_conv2d/truediv_5RealDivq_conv2d/Mean:output:0q_conv2d/add_2:z:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_5i
q_conv2d/add_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add_3/y�
q_conv2d/add_3AddV2q_conv2d/truediv_5:z:0q_conv2d/add_3/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_3l
q_conv2d/Log_1Logq_conv2d/add_3:z:0*
T0*&
_output_shapes
:2
q_conv2d/Log_1q
q_conv2d/truediv_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d/truediv_6/y�
q_conv2d/truediv_6RealDivq_conv2d/Log_1:y:0q_conv2d/truediv_6/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_6v
q_conv2d/Round_1Roundq_conv2d/truediv_6:z:0*
T0*&
_output_shapes
:2
q_conv2d/Round_1i
q_conv2d/Pow_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/Pow_2/x�
q_conv2d/Pow_2Powq_conv2d/Pow_2/x:output:0q_conv2d/Round_1:y:0*
T0*&
_output_shapes
:2
q_conv2d/Pow_2n
q_conv2d/Abs_2Absq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Abs_2�
q_conv2d/truediv_7RealDivq_conv2d/Abs_2:y:0q_conv2d/Pow_2:z:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_7i
q_conv2d/add_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d/add_4/y�
q_conv2d/add_4AddV2q_conv2d/truediv_7:z:0q_conv2d/add_4/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_4r
q_conv2d/Floor_1Floorq_conv2d/add_4:z:0*
T0*&
_output_shapes
:2
q_conv2d/Floor_1k
q_conv2d/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d/Less_1/y�
q_conv2d/Less_1Lessq_conv2d/Floor_1:y:0q_conv2d/Less_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/Less_1q
q_conv2d/Sign_1Signq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Sign_1�
q_conv2d/ones_like_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d/ones_like_1/Shape}
q_conv2d/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d/ones_like_1/Const�
q_conv2d/ones_like_1Fill#q_conv2d/ones_like_1/Shape:output:0#q_conv2d/ones_like_1/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d/ones_like_1i
q_conv2d/mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d/mul_5/y�
q_conv2d/mul_5Mulq_conv2d/ones_like_1:output:0q_conv2d/mul_5/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_5q
q_conv2d/truediv_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/truediv_8/y�
q_conv2d/truediv_8RealDivq_conv2d/mul_5:z:0q_conv2d/truediv_8/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_8�
q_conv2d/SelectV2_1SelectV2q_conv2d/Less_1:z:0q_conv2d/Floor_1:y:0q_conv2d/truediv_8:z:0*
T0*&
_output_shapes
:2
q_conv2d/SelectV2_1�
q_conv2d/mul_6Mulq_conv2d/Sign_1:y:0q_conv2d/SelectV2_1:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_6�
q_conv2d/Mul_7Mulq_conv2d/truediv:z:0q_conv2d/mul_6:z:0*
T0*&
_output_shapes
:2
q_conv2d/Mul_7�
!q_conv2d/Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d/Mean_2/reduction_indices�
q_conv2d/Mean_2Meanq_conv2d/Mul_7:z:0*q_conv2d/Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Mean_2�
q_conv2d/Mul_8Mulq_conv2d/mul_6:z:0q_conv2d/mul_6:z:0*
T0*&
_output_shapes
:2
q_conv2d/Mul_8�
!q_conv2d/Mean_3/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d/Mean_3/reduction_indices�
q_conv2d/Mean_3Meanq_conv2d/Mul_8:z:0*q_conv2d/Mean_3/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Mean_3i
q_conv2d/add_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add_5/y�
q_conv2d/add_5AddV2q_conv2d/Mean_3:output:0q_conv2d/add_5/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_5�
q_conv2d/truediv_9RealDivq_conv2d/Mean_2:output:0q_conv2d/add_5:z:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_9i
q_conv2d/add_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add_6/y�
q_conv2d/add_6AddV2q_conv2d/truediv_9:z:0q_conv2d/add_6/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_6l
q_conv2d/Log_2Logq_conv2d/add_6:z:0*
T0*&
_output_shapes
:2
q_conv2d/Log_2s
q_conv2d/truediv_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d/truediv_10/y�
q_conv2d/truediv_10RealDivq_conv2d/Log_2:y:0q_conv2d/truediv_10/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_10w
q_conv2d/Round_2Roundq_conv2d/truediv_10:z:0*
T0*&
_output_shapes
:2
q_conv2d/Round_2i
q_conv2d/Pow_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/Pow_3/x�
q_conv2d/Pow_3Powq_conv2d/Pow_3/x:output:0q_conv2d/Round_2:y:0*
T0*&
_output_shapes
:2
q_conv2d/Pow_3n
q_conv2d/Abs_3Absq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Abs_3�
q_conv2d/truediv_11RealDivq_conv2d/Abs_3:y:0q_conv2d/Pow_3:z:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_11i
q_conv2d/add_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d/add_7/y�
q_conv2d/add_7AddV2q_conv2d/truediv_11:z:0q_conv2d/add_7/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_7r
q_conv2d/Floor_2Floorq_conv2d/add_7:z:0*
T0*&
_output_shapes
:2
q_conv2d/Floor_2k
q_conv2d/Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d/Less_2/y�
q_conv2d/Less_2Lessq_conv2d/Floor_2:y:0q_conv2d/Less_2/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/Less_2q
q_conv2d/Sign_2Signq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Sign_2�
q_conv2d/ones_like_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d/ones_like_2/Shape}
q_conv2d/ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d/ones_like_2/Const�
q_conv2d/ones_like_2Fill#q_conv2d/ones_like_2/Shape:output:0#q_conv2d/ones_like_2/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d/ones_like_2i
q_conv2d/mul_9/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d/mul_9/y�
q_conv2d/mul_9Mulq_conv2d/ones_like_2:output:0q_conv2d/mul_9/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_9s
q_conv2d/truediv_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/truediv_12/y�
q_conv2d/truediv_12RealDivq_conv2d/mul_9:z:0q_conv2d/truediv_12/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_12�
q_conv2d/SelectV2_2SelectV2q_conv2d/Less_2:z:0q_conv2d/Floor_2:y:0q_conv2d/truediv_12:z:0*
T0*&
_output_shapes
:2
q_conv2d/SelectV2_2�
q_conv2d/mul_10Mulq_conv2d/Sign_2:y:0q_conv2d/SelectV2_2:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_10�
q_conv2d/Mul_11Mulq_conv2d/truediv:z:0q_conv2d/mul_10:z:0*
T0*&
_output_shapes
:2
q_conv2d/Mul_11�
!q_conv2d/Mean_4/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d/Mean_4/reduction_indices�
q_conv2d/Mean_4Meanq_conv2d/Mul_11:z:0*q_conv2d/Mean_4/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Mean_4�
q_conv2d/Mul_12Mulq_conv2d/mul_10:z:0q_conv2d/mul_10:z:0*
T0*&
_output_shapes
:2
q_conv2d/Mul_12�
!q_conv2d/Mean_5/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d/Mean_5/reduction_indices�
q_conv2d/Mean_5Meanq_conv2d/Mul_12:z:0*q_conv2d/Mean_5/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Mean_5i
q_conv2d/add_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add_8/y�
q_conv2d/add_8AddV2q_conv2d/Mean_5:output:0q_conv2d/add_8/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_8�
q_conv2d/truediv_13RealDivq_conv2d/Mean_4:output:0q_conv2d/add_8:z:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_13i
q_conv2d/add_9/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add_9/y�
q_conv2d/add_9AddV2q_conv2d/truediv_13:z:0q_conv2d/add_9/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_9l
q_conv2d/Log_3Logq_conv2d/add_9:z:0*
T0*&
_output_shapes
:2
q_conv2d/Log_3s
q_conv2d/truediv_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d/truediv_14/y�
q_conv2d/truediv_14RealDivq_conv2d/Log_3:y:0q_conv2d/truediv_14/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_14w
q_conv2d/Round_3Roundq_conv2d/truediv_14:z:0*
T0*&
_output_shapes
:2
q_conv2d/Round_3i
q_conv2d/Pow_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/Pow_4/x�
q_conv2d/Pow_4Powq_conv2d/Pow_4/x:output:0q_conv2d/Round_3:y:0*
T0*&
_output_shapes
:2
q_conv2d/Pow_4n
q_conv2d/Abs_4Absq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Abs_4�
q_conv2d/truediv_15RealDivq_conv2d/Abs_4:y:0q_conv2d/Pow_4:z:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_15k
q_conv2d/add_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d/add_10/y�
q_conv2d/add_10AddV2q_conv2d/truediv_15:z:0q_conv2d/add_10/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_10s
q_conv2d/Floor_3Floorq_conv2d/add_10:z:0*
T0*&
_output_shapes
:2
q_conv2d/Floor_3k
q_conv2d/Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d/Less_3/y�
q_conv2d/Less_3Lessq_conv2d/Floor_3:y:0q_conv2d/Less_3/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/Less_3q
q_conv2d/Sign_3Signq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Sign_3�
q_conv2d/ones_like_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d/ones_like_3/Shape}
q_conv2d/ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d/ones_like_3/Const�
q_conv2d/ones_like_3Fill#q_conv2d/ones_like_3/Shape:output:0#q_conv2d/ones_like_3/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d/ones_like_3k
q_conv2d/mul_13/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d/mul_13/y�
q_conv2d/mul_13Mulq_conv2d/ones_like_3:output:0q_conv2d/mul_13/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_13s
q_conv2d/truediv_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/truediv_16/y�
q_conv2d/truediv_16RealDivq_conv2d/mul_13:z:0q_conv2d/truediv_16/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_16�
q_conv2d/SelectV2_3SelectV2q_conv2d/Less_3:z:0q_conv2d/Floor_3:y:0q_conv2d/truediv_16:z:0*
T0*&
_output_shapes
:2
q_conv2d/SelectV2_3�
q_conv2d/mul_14Mulq_conv2d/Sign_3:y:0q_conv2d/SelectV2_3:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_14�
q_conv2d/Mul_15Mulq_conv2d/truediv:z:0q_conv2d/mul_14:z:0*
T0*&
_output_shapes
:2
q_conv2d/Mul_15�
!q_conv2d/Mean_6/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d/Mean_6/reduction_indices�
q_conv2d/Mean_6Meanq_conv2d/Mul_15:z:0*q_conv2d/Mean_6/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Mean_6�
q_conv2d/Mul_16Mulq_conv2d/mul_14:z:0q_conv2d/mul_14:z:0*
T0*&
_output_shapes
:2
q_conv2d/Mul_16�
!q_conv2d/Mean_7/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d/Mean_7/reduction_indices�
q_conv2d/Mean_7Meanq_conv2d/Mul_16:z:0*q_conv2d/Mean_7/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Mean_7k
q_conv2d/add_11/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add_11/y�
q_conv2d/add_11AddV2q_conv2d/Mean_7:output:0q_conv2d/add_11/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_11�
q_conv2d/truediv_17RealDivq_conv2d/Mean_6:output:0q_conv2d/add_11:z:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_17k
q_conv2d/add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add_12/y�
q_conv2d/add_12AddV2q_conv2d/truediv_17:z:0q_conv2d/add_12/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_12m
q_conv2d/Log_4Logq_conv2d/add_12:z:0*
T0*&
_output_shapes
:2
q_conv2d/Log_4s
q_conv2d/truediv_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d/truediv_18/y�
q_conv2d/truediv_18RealDivq_conv2d/Log_4:y:0q_conv2d/truediv_18/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_18w
q_conv2d/Round_4Roundq_conv2d/truediv_18:z:0*
T0*&
_output_shapes
:2
q_conv2d/Round_4i
q_conv2d/Pow_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/Pow_5/x�
q_conv2d/Pow_5Powq_conv2d/Pow_5/x:output:0q_conv2d/Round_4:y:0*
T0*&
_output_shapes
:2
q_conv2d/Pow_5n
q_conv2d/Abs_5Absq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Abs_5�
q_conv2d/truediv_19RealDivq_conv2d/Abs_5:y:0q_conv2d/Pow_5:z:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_19k
q_conv2d/add_13/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d/add_13/y�
q_conv2d/add_13AddV2q_conv2d/truediv_19:z:0q_conv2d/add_13/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_13s
q_conv2d/Floor_4Floorq_conv2d/add_13:z:0*
T0*&
_output_shapes
:2
q_conv2d/Floor_4k
q_conv2d/Less_4/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d/Less_4/y�
q_conv2d/Less_4Lessq_conv2d/Floor_4:y:0q_conv2d/Less_4/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/Less_4q
q_conv2d/Sign_4Signq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Sign_4�
q_conv2d/ones_like_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d/ones_like_4/Shape}
q_conv2d/ones_like_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d/ones_like_4/Const�
q_conv2d/ones_like_4Fill#q_conv2d/ones_like_4/Shape:output:0#q_conv2d/ones_like_4/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d/ones_like_4k
q_conv2d/mul_17/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d/mul_17/y�
q_conv2d/mul_17Mulq_conv2d/ones_like_4:output:0q_conv2d/mul_17/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_17s
q_conv2d/truediv_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/truediv_20/y�
q_conv2d/truediv_20RealDivq_conv2d/mul_17:z:0q_conv2d/truediv_20/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_20�
q_conv2d/SelectV2_4SelectV2q_conv2d/Less_4:z:0q_conv2d/Floor_4:y:0q_conv2d/truediv_20:z:0*
T0*&
_output_shapes
:2
q_conv2d/SelectV2_4�
q_conv2d/mul_18Mulq_conv2d/Sign_4:y:0q_conv2d/SelectV2_4:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_18�
q_conv2d/Mul_19Mulq_conv2d/truediv:z:0q_conv2d/mul_18:z:0*
T0*&
_output_shapes
:2
q_conv2d/Mul_19�
!q_conv2d/Mean_8/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d/Mean_8/reduction_indices�
q_conv2d/Mean_8Meanq_conv2d/Mul_19:z:0*q_conv2d/Mean_8/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Mean_8�
q_conv2d/Mul_20Mulq_conv2d/mul_18:z:0q_conv2d/mul_18:z:0*
T0*&
_output_shapes
:2
q_conv2d/Mul_20�
!q_conv2d/Mean_9/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d/Mean_9/reduction_indices�
q_conv2d/Mean_9Meanq_conv2d/Mul_20:z:0*q_conv2d/Mean_9/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Mean_9k
q_conv2d/add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add_14/y�
q_conv2d/add_14AddV2q_conv2d/Mean_9:output:0q_conv2d/add_14/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_14�
q_conv2d/truediv_21RealDivq_conv2d/Mean_8:output:0q_conv2d/add_14:z:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_21k
q_conv2d/add_15/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add_15/y�
q_conv2d/add_15AddV2q_conv2d/truediv_21:z:0q_conv2d/add_15/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_15m
q_conv2d/Log_5Logq_conv2d/add_15:z:0*
T0*&
_output_shapes
:2
q_conv2d/Log_5s
q_conv2d/truediv_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d/truediv_22/y�
q_conv2d/truediv_22RealDivq_conv2d/Log_5:y:0q_conv2d/truediv_22/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_22w
q_conv2d/Round_5Roundq_conv2d/truediv_22:z:0*
T0*&
_output_shapes
:2
q_conv2d/Round_5i
q_conv2d/Pow_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/Pow_6/x�
q_conv2d/Pow_6Powq_conv2d/Pow_6/x:output:0q_conv2d/Round_5:y:0*
T0*&
_output_shapes
:2
q_conv2d/Pow_6k
q_conv2d/mul_21/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2
q_conv2d/mul_21/y�
q_conv2d/mul_21Mulq_conv2d/Pow_6:z:0q_conv2d/mul_21/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_21�
q_conv2d/mul_22Mulq_conv2d/Cast:y:0q_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/mul_22�
q_conv2d/mul_23Mulq_conv2d/Cast:y:0q_conv2d/mul_18:z:0*
T0*&
_output_shapes
:2
q_conv2d/mul_23s
q_conv2d/truediv_23/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2
q_conv2d/truediv_23/y�
q_conv2d/truediv_23RealDivq_conv2d/mul_23:z:0q_conv2d/truediv_23/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_23�
q_conv2d/mul_24Mulq_conv2d/mul_21:z:0q_conv2d/truediv_23:z:0*
T0*&
_output_shapes
:2
q_conv2d/mul_24i
q_conv2d/NegNegq_conv2d/mul_22:z:0*
T0*&
_output_shapes
:2
q_conv2d/Neg�
q_conv2d/add_16AddV2q_conv2d/Neg:y:0q_conv2d/mul_24:z:0*
T0*&
_output_shapes
:2
q_conv2d/add_16k
q_conv2d/mul_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d/mul_25/x�
q_conv2d/mul_25Mulq_conv2d/mul_25/x:output:0q_conv2d/add_16:z:0*
T0*&
_output_shapes
:2
q_conv2d/mul_25�
q_conv2d/StopGradientStopGradientq_conv2d/mul_25:z:0*
T0*&
_output_shapes
:2
q_conv2d/StopGradient�
q_conv2d/add_17AddV2q_conv2d/mul_22:z:0q_conv2d/StopGradient:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_17�
q_conv2d/convolutionConv2D(batch_normalization/FusedBatchNormV3:y:0q_conv2d/add_17:z:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
q_conv2d/convolution�
q_conv2d/BiasAdd/ReadVariableOpReadVariableOp(q_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
q_conv2d/BiasAdd/ReadVariableOp�
q_conv2d/BiasAddBiasAddq_conv2d/convolution:output:0'q_conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
q_conv2d/BiasAddj
q_activation/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
q_activation/Pow/xj
q_activation/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :2
q_activation/Pow/y�
q_activation/PowPowq_activation/Pow/x:output:0q_activation/Pow/y:output:0*
T0*
_output_shapes
: 2
q_activation/Powt
q_activation/CastCastq_activation/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
q_activation/Castn
q_activation/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :2
q_activation/Pow_1/xn
q_activation/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
q_activation/Pow_1/y�
q_activation/Pow_1Powq_activation/Pow_1/x:output:0q_activation/Pow_1/y:output:0*
T0*
_output_shapes
: 2
q_activation/Pow_1z
q_activation/Cast_1Castq_activation/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
q_activation/Cast_1m
q_activation/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_activation/Constp
q_activation/Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B :2
q_activation/Cast_2/x�
q_activation/Cast_2Castq_activation/Cast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
q_activation/Cast_2m
q_activation/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �A2
q_activation/sub/y�
q_activation/subSubq_activation/Cast_2:y:0q_activation/sub/y:output:0*
T0*
_output_shapes
: 2
q_activation/sub�
q_activation/Pow_2Powq_activation/Const:output:0q_activation/sub:z:0*
T0*
_output_shapes
: 2
q_activation/Pow_2�
q_activation/sub_1Subq_activation/Cast_1:y:0q_activation/Pow_2:z:0*
T0*
_output_shapes
: 2
q_activation/sub_1�
q_activation/LessEqual	LessEqualq_conv2d/BiasAdd:output:0q_activation/sub_1:z:0*
T0*/
_output_shapes
:���������2
q_activation/LessEqual�
q_activation/ReluReluq_conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
q_activation/Relu�
q_activation/ones_like/ShapeShapeq_conv2d/BiasAdd:output:0*
T0*
_output_shapes
:2
q_activation/ones_like/Shape�
q_activation/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_activation/ones_like/Const�
q_activation/ones_likeFill%q_activation/ones_like/Shape:output:0%q_activation/ones_like/Const:output:0*
T0*/
_output_shapes
:���������2
q_activation/ones_like�
q_activation/sub_2Subq_activation/Cast_1:y:0q_activation/Pow_2:z:0*
T0*
_output_shapes
: 2
q_activation/sub_2�
q_activation/mulMulq_activation/ones_like:output:0q_activation/sub_2:z:0*
T0*/
_output_shapes
:���������2
q_activation/mul�
q_activation/SelectV2SelectV2q_activation/LessEqual:z:0q_activation/Relu:activations:0q_activation/mul:z:0*
T0*/
_output_shapes
:���������2
q_activation/SelectV2�
q_activation/mul_1Mulq_conv2d/BiasAdd:output:0q_activation/Cast:y:0*
T0*/
_output_shapes
:���������2
q_activation/mul_1�
q_activation/truedivRealDivq_activation/mul_1:z:0q_activation/Cast_1:y:0*
T0*/
_output_shapes
:���������2
q_activation/truediv
q_activation/NegNegq_activation/truediv:z:0*
T0*/
_output_shapes
:���������2
q_activation/Neg�
q_activation/RoundRoundq_activation/truediv:z:0*
T0*/
_output_shapes
:���������2
q_activation/Round�
q_activation/addAddV2q_activation/Neg:y:0q_activation/Round:y:0*
T0*/
_output_shapes
:���������2
q_activation/add�
q_activation/StopGradientStopGradientq_activation/add:z:0*
T0*/
_output_shapes
:���������2
q_activation/StopGradient�
q_activation/add_1AddV2q_activation/truediv:z:0"q_activation/StopGradient:output:0*
T0*/
_output_shapes
:���������2
q_activation/add_1�
q_activation/truediv_1RealDivq_activation/add_1:z:0q_activation/Cast:y:0*
T0*/
_output_shapes
:���������2
q_activation/truediv_1y
q_activation/truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_activation/truediv_2/x�
q_activation/truediv_2RealDiv!q_activation/truediv_2/x:output:0q_activation/Cast:y:0*
T0*
_output_shapes
: 2
q_activation/truediv_2q
q_activation/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_activation/sub_3/x�
q_activation/sub_3Subq_activation/sub_3/x:output:0q_activation/truediv_2:z:0*
T0*
_output_shapes
: 2
q_activation/sub_3�
"q_activation/clip_by_value/MinimumMinimumq_activation/truediv_1:z:0q_activation/sub_3:z:0*
T0*/
_output_shapes
:���������2$
"q_activation/clip_by_value/Minimum�
q_activation/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
q_activation/clip_by_value/y�
q_activation/clip_by_valueMaximum&q_activation/clip_by_value/Minimum:z:0%q_activation/clip_by_value/y:output:0*
T0*/
_output_shapes
:���������2
q_activation/clip_by_value�
q_activation/mul_2Mulq_activation/Cast_1:y:0q_activation/clip_by_value:z:0*
T0*/
_output_shapes
:���������2
q_activation/mul_2�
q_activation/Neg_1Negq_activation/SelectV2:output:0*
T0*/
_output_shapes
:���������2
q_activation/Neg_1�
q_activation/add_2AddV2q_activation/Neg_1:y:0q_activation/mul_2:z:0*
T0*/
_output_shapes
:���������2
q_activation/add_2q
q_activation/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_activation/mul_3/x�
q_activation/mul_3Mulq_activation/mul_3/x:output:0q_activation/add_2:z:0*
T0*/
_output_shapes
:���������2
q_activation/mul_3�
q_activation/StopGradient_1StopGradientq_activation/mul_3:z:0*
T0*/
_output_shapes
:���������2
q_activation/StopGradient_1�
q_activation/add_3AddV2q_activation/SelectV2:output:0$q_activation/StopGradient_1:output:0*
T0*/
_output_shapes
:���������2
q_activation/add_3f
q_conv2d_1/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
q_conv2d_1/Pow/xf
q_conv2d_1/Pow/yConst*
_output_shapes
: *
dtype0*
value	B : 2
q_conv2d_1/Pow/y~
q_conv2d_1/PowPowq_conv2d_1/Pow/x:output:0q_conv2d_1/Pow/y:output:0*
T0*
_output_shapes
: 2
q_conv2d_1/Pown
q_conv2d_1/CastCastq_conv2d_1/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
q_conv2d_1/Cast�
q_conv2d_1/ReadVariableOpReadVariableOp"q_conv2d_1_readvariableop_resource*&
_output_shapes
:*
dtype02
q_conv2d_1/ReadVariableOp�
q_conv2d_1/truedivRealDiv!q_conv2d_1/ReadVariableOp:value:0q_conv2d_1/Cast:y:0*
T0*&
_output_shapes
:2
q_conv2d_1/truedivp
q_conv2d_1/AbsAbsq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Abs�
 q_conv2d_1/Max/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 q_conv2d_1/Max/reduction_indices�
q_conv2d_1/MaxMaxq_conv2d_1/Abs:y:0)q_conv2d_1/Max/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Maxi
q_conv2d_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/mul/y�
q_conv2d_1/mulMulq_conv2d_1/Max:output:0q_conv2d_1/mul/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mulu
q_conv2d_1/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_1/truediv_1/y�
q_conv2d_1/truediv_1RealDivq_conv2d_1/mul:z:0q_conv2d_1/truediv_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_1i
q_conv2d_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add/y�
q_conv2d_1/addAddV2q_conv2d_1/truediv_1:z:0q_conv2d_1/add/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/addl
q_conv2d_1/LogLogq_conv2d_1/add:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Logu
q_conv2d_1/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_1/truediv_2/y�
q_conv2d_1/truediv_2RealDivq_conv2d_1/Log:y:0q_conv2d_1/truediv_2/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_2x
q_conv2d_1/RoundRoundq_conv2d_1/truediv_2:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Roundm
q_conv2d_1/Pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/Pow_1/x�
q_conv2d_1/Pow_1Powq_conv2d_1/Pow_1/x:output:0q_conv2d_1/Round:y:0*
T0*&
_output_shapes
:2
q_conv2d_1/Pow_1t
q_conv2d_1/Abs_1Absq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Abs_1�
q_conv2d_1/truediv_3RealDivq_conv2d_1/Abs_1:y:0q_conv2d_1/Pow_1:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_3m
q_conv2d_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d_1/add_1/y�
q_conv2d_1/add_1AddV2q_conv2d_1/truediv_3:z:0q_conv2d_1/add_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_1t
q_conv2d_1/FloorFloorq_conv2d_1/add_1:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Floork
q_conv2d_1/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d_1/Less/y�
q_conv2d_1/LessLessq_conv2d_1/Floor:y:0q_conv2d_1/Less/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/Lesss
q_conv2d_1/SignSignq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Sign�
q_conv2d_1/ones_like/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d_1/ones_like/Shape}
q_conv2d_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_1/ones_like/Const�
q_conv2d_1/ones_likeFill#q_conv2d_1/ones_like/Shape:output:0#q_conv2d_1/ones_like/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/ones_likem
q_conv2d_1/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_1/mul_1/y�
q_conv2d_1/mul_1Mulq_conv2d_1/ones_like:output:0q_conv2d_1/mul_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_1u
q_conv2d_1/truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/truediv_4/y�
q_conv2d_1/truediv_4RealDivq_conv2d_1/mul_1:z:0q_conv2d_1/truediv_4/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_4�
q_conv2d_1/SelectV2SelectV2q_conv2d_1/Less:z:0q_conv2d_1/Floor:y:0q_conv2d_1/truediv_4:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/SelectV2�
q_conv2d_1/mul_2Mulq_conv2d_1/Sign:y:0q_conv2d_1/SelectV2:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_2�
q_conv2d_1/Mul_3Mulq_conv2d_1/truediv:z:0q_conv2d_1/mul_2:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Mul_3�
!q_conv2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d_1/Mean/reduction_indices�
q_conv2d_1/MeanMeanq_conv2d_1/Mul_3:z:0*q_conv2d_1/Mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Mean�
q_conv2d_1/Mul_4Mulq_conv2d_1/mul_2:z:0q_conv2d_1/mul_2:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Mul_4�
#q_conv2d_1/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_1/Mean_1/reduction_indices�
q_conv2d_1/Mean_1Meanq_conv2d_1/Mul_4:z:0,q_conv2d_1/Mean_1/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Mean_1m
q_conv2d_1/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add_2/y�
q_conv2d_1/add_2AddV2q_conv2d_1/Mean_1:output:0q_conv2d_1/add_2/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_2�
q_conv2d_1/truediv_5RealDivq_conv2d_1/Mean:output:0q_conv2d_1/add_2:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_5m
q_conv2d_1/add_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add_3/y�
q_conv2d_1/add_3AddV2q_conv2d_1/truediv_5:z:0q_conv2d_1/add_3/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_3r
q_conv2d_1/Log_1Logq_conv2d_1/add_3:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Log_1u
q_conv2d_1/truediv_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_1/truediv_6/y�
q_conv2d_1/truediv_6RealDivq_conv2d_1/Log_1:y:0q_conv2d_1/truediv_6/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_6|
q_conv2d_1/Round_1Roundq_conv2d_1/truediv_6:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Round_1m
q_conv2d_1/Pow_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/Pow_2/x�
q_conv2d_1/Pow_2Powq_conv2d_1/Pow_2/x:output:0q_conv2d_1/Round_1:y:0*
T0*&
_output_shapes
:2
q_conv2d_1/Pow_2t
q_conv2d_1/Abs_2Absq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Abs_2�
q_conv2d_1/truediv_7RealDivq_conv2d_1/Abs_2:y:0q_conv2d_1/Pow_2:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_7m
q_conv2d_1/add_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d_1/add_4/y�
q_conv2d_1/add_4AddV2q_conv2d_1/truediv_7:z:0q_conv2d_1/add_4/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_4x
q_conv2d_1/Floor_1Floorq_conv2d_1/add_4:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Floor_1o
q_conv2d_1/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d_1/Less_1/y�
q_conv2d_1/Less_1Lessq_conv2d_1/Floor_1:y:0q_conv2d_1/Less_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/Less_1w
q_conv2d_1/Sign_1Signq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Sign_1�
q_conv2d_1/ones_like_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d_1/ones_like_1/Shape�
q_conv2d_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_1/ones_like_1/Const�
q_conv2d_1/ones_like_1Fill%q_conv2d_1/ones_like_1/Shape:output:0%q_conv2d_1/ones_like_1/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/ones_like_1m
q_conv2d_1/mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_1/mul_5/y�
q_conv2d_1/mul_5Mulq_conv2d_1/ones_like_1:output:0q_conv2d_1/mul_5/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_5u
q_conv2d_1/truediv_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/truediv_8/y�
q_conv2d_1/truediv_8RealDivq_conv2d_1/mul_5:z:0q_conv2d_1/truediv_8/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_8�
q_conv2d_1/SelectV2_1SelectV2q_conv2d_1/Less_1:z:0q_conv2d_1/Floor_1:y:0q_conv2d_1/truediv_8:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/SelectV2_1�
q_conv2d_1/mul_6Mulq_conv2d_1/Sign_1:y:0q_conv2d_1/SelectV2_1:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_6�
q_conv2d_1/Mul_7Mulq_conv2d_1/truediv:z:0q_conv2d_1/mul_6:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Mul_7�
#q_conv2d_1/Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_1/Mean_2/reduction_indices�
q_conv2d_1/Mean_2Meanq_conv2d_1/Mul_7:z:0,q_conv2d_1/Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Mean_2�
q_conv2d_1/Mul_8Mulq_conv2d_1/mul_6:z:0q_conv2d_1/mul_6:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Mul_8�
#q_conv2d_1/Mean_3/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_1/Mean_3/reduction_indices�
q_conv2d_1/Mean_3Meanq_conv2d_1/Mul_8:z:0,q_conv2d_1/Mean_3/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Mean_3m
q_conv2d_1/add_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add_5/y�
q_conv2d_1/add_5AddV2q_conv2d_1/Mean_3:output:0q_conv2d_1/add_5/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_5�
q_conv2d_1/truediv_9RealDivq_conv2d_1/Mean_2:output:0q_conv2d_1/add_5:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_9m
q_conv2d_1/add_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add_6/y�
q_conv2d_1/add_6AddV2q_conv2d_1/truediv_9:z:0q_conv2d_1/add_6/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_6r
q_conv2d_1/Log_2Logq_conv2d_1/add_6:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Log_2w
q_conv2d_1/truediv_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_1/truediv_10/y�
q_conv2d_1/truediv_10RealDivq_conv2d_1/Log_2:y:0 q_conv2d_1/truediv_10/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_10}
q_conv2d_1/Round_2Roundq_conv2d_1/truediv_10:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Round_2m
q_conv2d_1/Pow_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/Pow_3/x�
q_conv2d_1/Pow_3Powq_conv2d_1/Pow_3/x:output:0q_conv2d_1/Round_2:y:0*
T0*&
_output_shapes
:2
q_conv2d_1/Pow_3t
q_conv2d_1/Abs_3Absq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Abs_3�
q_conv2d_1/truediv_11RealDivq_conv2d_1/Abs_3:y:0q_conv2d_1/Pow_3:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_11m
q_conv2d_1/add_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d_1/add_7/y�
q_conv2d_1/add_7AddV2q_conv2d_1/truediv_11:z:0q_conv2d_1/add_7/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_7x
q_conv2d_1/Floor_2Floorq_conv2d_1/add_7:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Floor_2o
q_conv2d_1/Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d_1/Less_2/y�
q_conv2d_1/Less_2Lessq_conv2d_1/Floor_2:y:0q_conv2d_1/Less_2/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/Less_2w
q_conv2d_1/Sign_2Signq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Sign_2�
q_conv2d_1/ones_like_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d_1/ones_like_2/Shape�
q_conv2d_1/ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_1/ones_like_2/Const�
q_conv2d_1/ones_like_2Fill%q_conv2d_1/ones_like_2/Shape:output:0%q_conv2d_1/ones_like_2/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/ones_like_2m
q_conv2d_1/mul_9/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_1/mul_9/y�
q_conv2d_1/mul_9Mulq_conv2d_1/ones_like_2:output:0q_conv2d_1/mul_9/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_9w
q_conv2d_1/truediv_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/truediv_12/y�
q_conv2d_1/truediv_12RealDivq_conv2d_1/mul_9:z:0 q_conv2d_1/truediv_12/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_12�
q_conv2d_1/SelectV2_2SelectV2q_conv2d_1/Less_2:z:0q_conv2d_1/Floor_2:y:0q_conv2d_1/truediv_12:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/SelectV2_2�
q_conv2d_1/mul_10Mulq_conv2d_1/Sign_2:y:0q_conv2d_1/SelectV2_2:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_10�
q_conv2d_1/Mul_11Mulq_conv2d_1/truediv:z:0q_conv2d_1/mul_10:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Mul_11�
#q_conv2d_1/Mean_4/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_1/Mean_4/reduction_indices�
q_conv2d_1/Mean_4Meanq_conv2d_1/Mul_11:z:0,q_conv2d_1/Mean_4/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Mean_4�
q_conv2d_1/Mul_12Mulq_conv2d_1/mul_10:z:0q_conv2d_1/mul_10:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Mul_12�
#q_conv2d_1/Mean_5/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_1/Mean_5/reduction_indices�
q_conv2d_1/Mean_5Meanq_conv2d_1/Mul_12:z:0,q_conv2d_1/Mean_5/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Mean_5m
q_conv2d_1/add_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add_8/y�
q_conv2d_1/add_8AddV2q_conv2d_1/Mean_5:output:0q_conv2d_1/add_8/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_8�
q_conv2d_1/truediv_13RealDivq_conv2d_1/Mean_4:output:0q_conv2d_1/add_8:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_13m
q_conv2d_1/add_9/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add_9/y�
q_conv2d_1/add_9AddV2q_conv2d_1/truediv_13:z:0q_conv2d_1/add_9/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_9r
q_conv2d_1/Log_3Logq_conv2d_1/add_9:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Log_3w
q_conv2d_1/truediv_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_1/truediv_14/y�
q_conv2d_1/truediv_14RealDivq_conv2d_1/Log_3:y:0 q_conv2d_1/truediv_14/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_14}
q_conv2d_1/Round_3Roundq_conv2d_1/truediv_14:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Round_3m
q_conv2d_1/Pow_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/Pow_4/x�
q_conv2d_1/Pow_4Powq_conv2d_1/Pow_4/x:output:0q_conv2d_1/Round_3:y:0*
T0*&
_output_shapes
:2
q_conv2d_1/Pow_4t
q_conv2d_1/Abs_4Absq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Abs_4�
q_conv2d_1/truediv_15RealDivq_conv2d_1/Abs_4:y:0q_conv2d_1/Pow_4:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_15o
q_conv2d_1/add_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d_1/add_10/y�
q_conv2d_1/add_10AddV2q_conv2d_1/truediv_15:z:0q_conv2d_1/add_10/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_10y
q_conv2d_1/Floor_3Floorq_conv2d_1/add_10:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Floor_3o
q_conv2d_1/Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d_1/Less_3/y�
q_conv2d_1/Less_3Lessq_conv2d_1/Floor_3:y:0q_conv2d_1/Less_3/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/Less_3w
q_conv2d_1/Sign_3Signq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Sign_3�
q_conv2d_1/ones_like_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d_1/ones_like_3/Shape�
q_conv2d_1/ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_1/ones_like_3/Const�
q_conv2d_1/ones_like_3Fill%q_conv2d_1/ones_like_3/Shape:output:0%q_conv2d_1/ones_like_3/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/ones_like_3o
q_conv2d_1/mul_13/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_1/mul_13/y�
q_conv2d_1/mul_13Mulq_conv2d_1/ones_like_3:output:0q_conv2d_1/mul_13/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_13w
q_conv2d_1/truediv_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/truediv_16/y�
q_conv2d_1/truediv_16RealDivq_conv2d_1/mul_13:z:0 q_conv2d_1/truediv_16/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_16�
q_conv2d_1/SelectV2_3SelectV2q_conv2d_1/Less_3:z:0q_conv2d_1/Floor_3:y:0q_conv2d_1/truediv_16:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/SelectV2_3�
q_conv2d_1/mul_14Mulq_conv2d_1/Sign_3:y:0q_conv2d_1/SelectV2_3:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_14�
q_conv2d_1/Mul_15Mulq_conv2d_1/truediv:z:0q_conv2d_1/mul_14:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Mul_15�
#q_conv2d_1/Mean_6/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_1/Mean_6/reduction_indices�
q_conv2d_1/Mean_6Meanq_conv2d_1/Mul_15:z:0,q_conv2d_1/Mean_6/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Mean_6�
q_conv2d_1/Mul_16Mulq_conv2d_1/mul_14:z:0q_conv2d_1/mul_14:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Mul_16�
#q_conv2d_1/Mean_7/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_1/Mean_7/reduction_indices�
q_conv2d_1/Mean_7Meanq_conv2d_1/Mul_16:z:0,q_conv2d_1/Mean_7/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Mean_7o
q_conv2d_1/add_11/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add_11/y�
q_conv2d_1/add_11AddV2q_conv2d_1/Mean_7:output:0q_conv2d_1/add_11/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_11�
q_conv2d_1/truediv_17RealDivq_conv2d_1/Mean_6:output:0q_conv2d_1/add_11:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_17o
q_conv2d_1/add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add_12/y�
q_conv2d_1/add_12AddV2q_conv2d_1/truediv_17:z:0q_conv2d_1/add_12/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_12s
q_conv2d_1/Log_4Logq_conv2d_1/add_12:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Log_4w
q_conv2d_1/truediv_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_1/truediv_18/y�
q_conv2d_1/truediv_18RealDivq_conv2d_1/Log_4:y:0 q_conv2d_1/truediv_18/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_18}
q_conv2d_1/Round_4Roundq_conv2d_1/truediv_18:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Round_4m
q_conv2d_1/Pow_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/Pow_5/x�
q_conv2d_1/Pow_5Powq_conv2d_1/Pow_5/x:output:0q_conv2d_1/Round_4:y:0*
T0*&
_output_shapes
:2
q_conv2d_1/Pow_5t
q_conv2d_1/Abs_5Absq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Abs_5�
q_conv2d_1/truediv_19RealDivq_conv2d_1/Abs_5:y:0q_conv2d_1/Pow_5:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_19o
q_conv2d_1/add_13/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d_1/add_13/y�
q_conv2d_1/add_13AddV2q_conv2d_1/truediv_19:z:0q_conv2d_1/add_13/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_13y
q_conv2d_1/Floor_4Floorq_conv2d_1/add_13:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Floor_4o
q_conv2d_1/Less_4/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d_1/Less_4/y�
q_conv2d_1/Less_4Lessq_conv2d_1/Floor_4:y:0q_conv2d_1/Less_4/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/Less_4w
q_conv2d_1/Sign_4Signq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Sign_4�
q_conv2d_1/ones_like_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d_1/ones_like_4/Shape�
q_conv2d_1/ones_like_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_1/ones_like_4/Const�
q_conv2d_1/ones_like_4Fill%q_conv2d_1/ones_like_4/Shape:output:0%q_conv2d_1/ones_like_4/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/ones_like_4o
q_conv2d_1/mul_17/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_1/mul_17/y�
q_conv2d_1/mul_17Mulq_conv2d_1/ones_like_4:output:0q_conv2d_1/mul_17/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_17w
q_conv2d_1/truediv_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/truediv_20/y�
q_conv2d_1/truediv_20RealDivq_conv2d_1/mul_17:z:0 q_conv2d_1/truediv_20/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_20�
q_conv2d_1/SelectV2_4SelectV2q_conv2d_1/Less_4:z:0q_conv2d_1/Floor_4:y:0q_conv2d_1/truediv_20:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/SelectV2_4�
q_conv2d_1/mul_18Mulq_conv2d_1/Sign_4:y:0q_conv2d_1/SelectV2_4:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_18�
q_conv2d_1/Mul_19Mulq_conv2d_1/truediv:z:0q_conv2d_1/mul_18:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Mul_19�
#q_conv2d_1/Mean_8/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_1/Mean_8/reduction_indices�
q_conv2d_1/Mean_8Meanq_conv2d_1/Mul_19:z:0,q_conv2d_1/Mean_8/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Mean_8�
q_conv2d_1/Mul_20Mulq_conv2d_1/mul_18:z:0q_conv2d_1/mul_18:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Mul_20�
#q_conv2d_1/Mean_9/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_1/Mean_9/reduction_indices�
q_conv2d_1/Mean_9Meanq_conv2d_1/Mul_20:z:0,q_conv2d_1/Mean_9/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Mean_9o
q_conv2d_1/add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add_14/y�
q_conv2d_1/add_14AddV2q_conv2d_1/Mean_9:output:0q_conv2d_1/add_14/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_14�
q_conv2d_1/truediv_21RealDivq_conv2d_1/Mean_8:output:0q_conv2d_1/add_14:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_21o
q_conv2d_1/add_15/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add_15/y�
q_conv2d_1/add_15AddV2q_conv2d_1/truediv_21:z:0q_conv2d_1/add_15/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_15s
q_conv2d_1/Log_5Logq_conv2d_1/add_15:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Log_5w
q_conv2d_1/truediv_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_1/truediv_22/y�
q_conv2d_1/truediv_22RealDivq_conv2d_1/Log_5:y:0 q_conv2d_1/truediv_22/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_22}
q_conv2d_1/Round_5Roundq_conv2d_1/truediv_22:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Round_5m
q_conv2d_1/Pow_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/Pow_6/x�
q_conv2d_1/Pow_6Powq_conv2d_1/Pow_6/x:output:0q_conv2d_1/Round_5:y:0*
T0*&
_output_shapes
:2
q_conv2d_1/Pow_6o
q_conv2d_1/mul_21/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2
q_conv2d_1/mul_21/y�
q_conv2d_1/mul_21Mulq_conv2d_1/Pow_6:z:0q_conv2d_1/mul_21/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_21�
q_conv2d_1/mul_22Mulq_conv2d_1/Cast:y:0q_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_22�
q_conv2d_1/mul_23Mulq_conv2d_1/Cast:y:0q_conv2d_1/mul_18:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_23w
q_conv2d_1/truediv_23/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2
q_conv2d_1/truediv_23/y�
q_conv2d_1/truediv_23RealDivq_conv2d_1/mul_23:z:0 q_conv2d_1/truediv_23/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_23�
q_conv2d_1/mul_24Mulq_conv2d_1/mul_21:z:0q_conv2d_1/truediv_23:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_24o
q_conv2d_1/NegNegq_conv2d_1/mul_22:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Neg�
q_conv2d_1/add_16AddV2q_conv2d_1/Neg:y:0q_conv2d_1/mul_24:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_16o
q_conv2d_1/mul_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_1/mul_25/x�
q_conv2d_1/mul_25Mulq_conv2d_1/mul_25/x:output:0q_conv2d_1/add_16:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_25�
q_conv2d_1/StopGradientStopGradientq_conv2d_1/mul_25:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/StopGradient�
q_conv2d_1/add_17AddV2q_conv2d_1/mul_22:z:0 q_conv2d_1/StopGradient:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_17�
q_conv2d_1/convolutionConv2Dq_activation/add_3:z:0q_conv2d_1/add_17:z:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
q_conv2d_1/convolution�
!q_conv2d_1/BiasAdd/ReadVariableOpReadVariableOp*q_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!q_conv2d_1/BiasAdd/ReadVariableOp�
q_conv2d_1/BiasAddBiasAddq_conv2d_1/convolution:output:0)q_conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
q_conv2d_1/BiasAddn
q_activation_1/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
q_activation_1/Pow/xn
q_activation_1/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :2
q_activation_1/Pow/y�
q_activation_1/PowPowq_activation_1/Pow/x:output:0q_activation_1/Pow/y:output:0*
T0*
_output_shapes
: 2
q_activation_1/Powz
q_activation_1/CastCastq_activation_1/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
q_activation_1/Castr
q_activation_1/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :2
q_activation_1/Pow_1/xr
q_activation_1/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
q_activation_1/Pow_1/y�
q_activation_1/Pow_1Powq_activation_1/Pow_1/x:output:0q_activation_1/Pow_1/y:output:0*
T0*
_output_shapes
: 2
q_activation_1/Pow_1�
q_activation_1/Cast_1Castq_activation_1/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
q_activation_1/Cast_1q
q_activation_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_activation_1/Constt
q_activation_1/Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B :2
q_activation_1/Cast_2/x�
q_activation_1/Cast_2Cast q_activation_1/Cast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
q_activation_1/Cast_2q
q_activation_1/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �A2
q_activation_1/sub/y�
q_activation_1/subSubq_activation_1/Cast_2:y:0q_activation_1/sub/y:output:0*
T0*
_output_shapes
: 2
q_activation_1/sub�
q_activation_1/Pow_2Powq_activation_1/Const:output:0q_activation_1/sub:z:0*
T0*
_output_shapes
: 2
q_activation_1/Pow_2�
q_activation_1/sub_1Subq_activation_1/Cast_1:y:0q_activation_1/Pow_2:z:0*
T0*
_output_shapes
: 2
q_activation_1/sub_1�
q_activation_1/LessEqual	LessEqualq_conv2d_1/BiasAdd:output:0q_activation_1/sub_1:z:0*
T0*/
_output_shapes
:���������2
q_activation_1/LessEqual�
q_activation_1/ReluReluq_conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
q_activation_1/Relu�
q_activation_1/ones_like/ShapeShapeq_conv2d_1/BiasAdd:output:0*
T0*
_output_shapes
:2 
q_activation_1/ones_like/Shape�
q_activation_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2 
q_activation_1/ones_like/Const�
q_activation_1/ones_likeFill'q_activation_1/ones_like/Shape:output:0'q_activation_1/ones_like/Const:output:0*
T0*/
_output_shapes
:���������2
q_activation_1/ones_like�
q_activation_1/sub_2Subq_activation_1/Cast_1:y:0q_activation_1/Pow_2:z:0*
T0*
_output_shapes
: 2
q_activation_1/sub_2�
q_activation_1/mulMul!q_activation_1/ones_like:output:0q_activation_1/sub_2:z:0*
T0*/
_output_shapes
:���������2
q_activation_1/mul�
q_activation_1/SelectV2SelectV2q_activation_1/LessEqual:z:0!q_activation_1/Relu:activations:0q_activation_1/mul:z:0*
T0*/
_output_shapes
:���������2
q_activation_1/SelectV2�
q_activation_1/mul_1Mulq_conv2d_1/BiasAdd:output:0q_activation_1/Cast:y:0*
T0*/
_output_shapes
:���������2
q_activation_1/mul_1�
q_activation_1/truedivRealDivq_activation_1/mul_1:z:0q_activation_1/Cast_1:y:0*
T0*/
_output_shapes
:���������2
q_activation_1/truediv�
q_activation_1/NegNegq_activation_1/truediv:z:0*
T0*/
_output_shapes
:���������2
q_activation_1/Neg�
q_activation_1/RoundRoundq_activation_1/truediv:z:0*
T0*/
_output_shapes
:���������2
q_activation_1/Round�
q_activation_1/addAddV2q_activation_1/Neg:y:0q_activation_1/Round:y:0*
T0*/
_output_shapes
:���������2
q_activation_1/add�
q_activation_1/StopGradientStopGradientq_activation_1/add:z:0*
T0*/
_output_shapes
:���������2
q_activation_1/StopGradient�
q_activation_1/add_1AddV2q_activation_1/truediv:z:0$q_activation_1/StopGradient:output:0*
T0*/
_output_shapes
:���������2
q_activation_1/add_1�
q_activation_1/truediv_1RealDivq_activation_1/add_1:z:0q_activation_1/Cast:y:0*
T0*/
_output_shapes
:���������2
q_activation_1/truediv_1}
q_activation_1/truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_activation_1/truediv_2/x�
q_activation_1/truediv_2RealDiv#q_activation_1/truediv_2/x:output:0q_activation_1/Cast:y:0*
T0*
_output_shapes
: 2
q_activation_1/truediv_2u
q_activation_1/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_activation_1/sub_3/x�
q_activation_1/sub_3Subq_activation_1/sub_3/x:output:0q_activation_1/truediv_2:z:0*
T0*
_output_shapes
: 2
q_activation_1/sub_3�
$q_activation_1/clip_by_value/MinimumMinimumq_activation_1/truediv_1:z:0q_activation_1/sub_3:z:0*
T0*/
_output_shapes
:���������2&
$q_activation_1/clip_by_value/Minimum�
q_activation_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
q_activation_1/clip_by_value/y�
q_activation_1/clip_by_valueMaximum(q_activation_1/clip_by_value/Minimum:z:0'q_activation_1/clip_by_value/y:output:0*
T0*/
_output_shapes
:���������2
q_activation_1/clip_by_value�
q_activation_1/mul_2Mulq_activation_1/Cast_1:y:0 q_activation_1/clip_by_value:z:0*
T0*/
_output_shapes
:���������2
q_activation_1/mul_2�
q_activation_1/Neg_1Neg q_activation_1/SelectV2:output:0*
T0*/
_output_shapes
:���������2
q_activation_1/Neg_1�
q_activation_1/add_2AddV2q_activation_1/Neg_1:y:0q_activation_1/mul_2:z:0*
T0*/
_output_shapes
:���������2
q_activation_1/add_2u
q_activation_1/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_activation_1/mul_3/x�
q_activation_1/mul_3Mulq_activation_1/mul_3/x:output:0q_activation_1/add_2:z:0*
T0*/
_output_shapes
:���������2
q_activation_1/mul_3�
q_activation_1/StopGradient_1StopGradientq_activation_1/mul_3:z:0*
T0*/
_output_shapes
:���������2
q_activation_1/StopGradient_1�
q_activation_1/add_3AddV2 q_activation_1/SelectV2:output:0&q_activation_1/StopGradient_1:output:0*
T0*/
_output_shapes
:���������2
q_activation_1/add_3f
q_conv2d_2/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
q_conv2d_2/Pow/xf
q_conv2d_2/Pow/yConst*
_output_shapes
: *
dtype0*
value	B : 2
q_conv2d_2/Pow/y~
q_conv2d_2/PowPowq_conv2d_2/Pow/x:output:0q_conv2d_2/Pow/y:output:0*
T0*
_output_shapes
: 2
q_conv2d_2/Pown
q_conv2d_2/CastCastq_conv2d_2/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
q_conv2d_2/Cast�
q_conv2d_2/ReadVariableOpReadVariableOp"q_conv2d_2_readvariableop_resource*&
_output_shapes
:*
dtype02
q_conv2d_2/ReadVariableOp�
q_conv2d_2/truedivRealDiv!q_conv2d_2/ReadVariableOp:value:0q_conv2d_2/Cast:y:0*
T0*&
_output_shapes
:2
q_conv2d_2/truedivp
q_conv2d_2/AbsAbsq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Abs�
 q_conv2d_2/Max/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 q_conv2d_2/Max/reduction_indices�
q_conv2d_2/MaxMaxq_conv2d_2/Abs:y:0)q_conv2d_2/Max/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Maxi
q_conv2d_2/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/mul/y�
q_conv2d_2/mulMulq_conv2d_2/Max:output:0q_conv2d_2/mul/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mulu
q_conv2d_2/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_2/truediv_1/y�
q_conv2d_2/truediv_1RealDivq_conv2d_2/mul:z:0q_conv2d_2/truediv_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_1i
q_conv2d_2/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add/y�
q_conv2d_2/addAddV2q_conv2d_2/truediv_1:z:0q_conv2d_2/add/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/addl
q_conv2d_2/LogLogq_conv2d_2/add:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Logu
q_conv2d_2/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_2/truediv_2/y�
q_conv2d_2/truediv_2RealDivq_conv2d_2/Log:y:0q_conv2d_2/truediv_2/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_2x
q_conv2d_2/RoundRoundq_conv2d_2/truediv_2:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Roundm
q_conv2d_2/Pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/Pow_1/x�
q_conv2d_2/Pow_1Powq_conv2d_2/Pow_1/x:output:0q_conv2d_2/Round:y:0*
T0*&
_output_shapes
:2
q_conv2d_2/Pow_1t
q_conv2d_2/Abs_1Absq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Abs_1�
q_conv2d_2/truediv_3RealDivq_conv2d_2/Abs_1:y:0q_conv2d_2/Pow_1:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_3m
q_conv2d_2/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d_2/add_1/y�
q_conv2d_2/add_1AddV2q_conv2d_2/truediv_3:z:0q_conv2d_2/add_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_1t
q_conv2d_2/FloorFloorq_conv2d_2/add_1:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Floork
q_conv2d_2/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d_2/Less/y�
q_conv2d_2/LessLessq_conv2d_2/Floor:y:0q_conv2d_2/Less/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/Lesss
q_conv2d_2/SignSignq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Sign�
q_conv2d_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d_2/ones_like/Shape}
q_conv2d_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_2/ones_like/Const�
q_conv2d_2/ones_likeFill#q_conv2d_2/ones_like/Shape:output:0#q_conv2d_2/ones_like/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/ones_likem
q_conv2d_2/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_2/mul_1/y�
q_conv2d_2/mul_1Mulq_conv2d_2/ones_like:output:0q_conv2d_2/mul_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_1u
q_conv2d_2/truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/truediv_4/y�
q_conv2d_2/truediv_4RealDivq_conv2d_2/mul_1:z:0q_conv2d_2/truediv_4/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_4�
q_conv2d_2/SelectV2SelectV2q_conv2d_2/Less:z:0q_conv2d_2/Floor:y:0q_conv2d_2/truediv_4:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/SelectV2�
q_conv2d_2/mul_2Mulq_conv2d_2/Sign:y:0q_conv2d_2/SelectV2:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_2�
q_conv2d_2/Mul_3Mulq_conv2d_2/truediv:z:0q_conv2d_2/mul_2:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Mul_3�
!q_conv2d_2/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d_2/Mean/reduction_indices�
q_conv2d_2/MeanMeanq_conv2d_2/Mul_3:z:0*q_conv2d_2/Mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Mean�
q_conv2d_2/Mul_4Mulq_conv2d_2/mul_2:z:0q_conv2d_2/mul_2:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Mul_4�
#q_conv2d_2/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_2/Mean_1/reduction_indices�
q_conv2d_2/Mean_1Meanq_conv2d_2/Mul_4:z:0,q_conv2d_2/Mean_1/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Mean_1m
q_conv2d_2/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add_2/y�
q_conv2d_2/add_2AddV2q_conv2d_2/Mean_1:output:0q_conv2d_2/add_2/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_2�
q_conv2d_2/truediv_5RealDivq_conv2d_2/Mean:output:0q_conv2d_2/add_2:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_5m
q_conv2d_2/add_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add_3/y�
q_conv2d_2/add_3AddV2q_conv2d_2/truediv_5:z:0q_conv2d_2/add_3/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_3r
q_conv2d_2/Log_1Logq_conv2d_2/add_3:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Log_1u
q_conv2d_2/truediv_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_2/truediv_6/y�
q_conv2d_2/truediv_6RealDivq_conv2d_2/Log_1:y:0q_conv2d_2/truediv_6/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_6|
q_conv2d_2/Round_1Roundq_conv2d_2/truediv_6:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Round_1m
q_conv2d_2/Pow_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/Pow_2/x�
q_conv2d_2/Pow_2Powq_conv2d_2/Pow_2/x:output:0q_conv2d_2/Round_1:y:0*
T0*&
_output_shapes
:2
q_conv2d_2/Pow_2t
q_conv2d_2/Abs_2Absq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Abs_2�
q_conv2d_2/truediv_7RealDivq_conv2d_2/Abs_2:y:0q_conv2d_2/Pow_2:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_7m
q_conv2d_2/add_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d_2/add_4/y�
q_conv2d_2/add_4AddV2q_conv2d_2/truediv_7:z:0q_conv2d_2/add_4/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_4x
q_conv2d_2/Floor_1Floorq_conv2d_2/add_4:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Floor_1o
q_conv2d_2/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d_2/Less_1/y�
q_conv2d_2/Less_1Lessq_conv2d_2/Floor_1:y:0q_conv2d_2/Less_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/Less_1w
q_conv2d_2/Sign_1Signq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Sign_1�
q_conv2d_2/ones_like_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d_2/ones_like_1/Shape�
q_conv2d_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_2/ones_like_1/Const�
q_conv2d_2/ones_like_1Fill%q_conv2d_2/ones_like_1/Shape:output:0%q_conv2d_2/ones_like_1/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/ones_like_1m
q_conv2d_2/mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_2/mul_5/y�
q_conv2d_2/mul_5Mulq_conv2d_2/ones_like_1:output:0q_conv2d_2/mul_5/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_5u
q_conv2d_2/truediv_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/truediv_8/y�
q_conv2d_2/truediv_8RealDivq_conv2d_2/mul_5:z:0q_conv2d_2/truediv_8/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_8�
q_conv2d_2/SelectV2_1SelectV2q_conv2d_2/Less_1:z:0q_conv2d_2/Floor_1:y:0q_conv2d_2/truediv_8:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/SelectV2_1�
q_conv2d_2/mul_6Mulq_conv2d_2/Sign_1:y:0q_conv2d_2/SelectV2_1:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_6�
q_conv2d_2/Mul_7Mulq_conv2d_2/truediv:z:0q_conv2d_2/mul_6:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Mul_7�
#q_conv2d_2/Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_2/Mean_2/reduction_indices�
q_conv2d_2/Mean_2Meanq_conv2d_2/Mul_7:z:0,q_conv2d_2/Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Mean_2�
q_conv2d_2/Mul_8Mulq_conv2d_2/mul_6:z:0q_conv2d_2/mul_6:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Mul_8�
#q_conv2d_2/Mean_3/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_2/Mean_3/reduction_indices�
q_conv2d_2/Mean_3Meanq_conv2d_2/Mul_8:z:0,q_conv2d_2/Mean_3/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Mean_3m
q_conv2d_2/add_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add_5/y�
q_conv2d_2/add_5AddV2q_conv2d_2/Mean_3:output:0q_conv2d_2/add_5/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_5�
q_conv2d_2/truediv_9RealDivq_conv2d_2/Mean_2:output:0q_conv2d_2/add_5:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_9m
q_conv2d_2/add_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add_6/y�
q_conv2d_2/add_6AddV2q_conv2d_2/truediv_9:z:0q_conv2d_2/add_6/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_6r
q_conv2d_2/Log_2Logq_conv2d_2/add_6:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Log_2w
q_conv2d_2/truediv_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_2/truediv_10/y�
q_conv2d_2/truediv_10RealDivq_conv2d_2/Log_2:y:0 q_conv2d_2/truediv_10/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_10}
q_conv2d_2/Round_2Roundq_conv2d_2/truediv_10:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Round_2m
q_conv2d_2/Pow_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/Pow_3/x�
q_conv2d_2/Pow_3Powq_conv2d_2/Pow_3/x:output:0q_conv2d_2/Round_2:y:0*
T0*&
_output_shapes
:2
q_conv2d_2/Pow_3t
q_conv2d_2/Abs_3Absq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Abs_3�
q_conv2d_2/truediv_11RealDivq_conv2d_2/Abs_3:y:0q_conv2d_2/Pow_3:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_11m
q_conv2d_2/add_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d_2/add_7/y�
q_conv2d_2/add_7AddV2q_conv2d_2/truediv_11:z:0q_conv2d_2/add_7/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_7x
q_conv2d_2/Floor_2Floorq_conv2d_2/add_7:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Floor_2o
q_conv2d_2/Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d_2/Less_2/y�
q_conv2d_2/Less_2Lessq_conv2d_2/Floor_2:y:0q_conv2d_2/Less_2/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/Less_2w
q_conv2d_2/Sign_2Signq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Sign_2�
q_conv2d_2/ones_like_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d_2/ones_like_2/Shape�
q_conv2d_2/ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_2/ones_like_2/Const�
q_conv2d_2/ones_like_2Fill%q_conv2d_2/ones_like_2/Shape:output:0%q_conv2d_2/ones_like_2/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/ones_like_2m
q_conv2d_2/mul_9/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_2/mul_9/y�
q_conv2d_2/mul_9Mulq_conv2d_2/ones_like_2:output:0q_conv2d_2/mul_9/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_9w
q_conv2d_2/truediv_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/truediv_12/y�
q_conv2d_2/truediv_12RealDivq_conv2d_2/mul_9:z:0 q_conv2d_2/truediv_12/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_12�
q_conv2d_2/SelectV2_2SelectV2q_conv2d_2/Less_2:z:0q_conv2d_2/Floor_2:y:0q_conv2d_2/truediv_12:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/SelectV2_2�
q_conv2d_2/mul_10Mulq_conv2d_2/Sign_2:y:0q_conv2d_2/SelectV2_2:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_10�
q_conv2d_2/Mul_11Mulq_conv2d_2/truediv:z:0q_conv2d_2/mul_10:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Mul_11�
#q_conv2d_2/Mean_4/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_2/Mean_4/reduction_indices�
q_conv2d_2/Mean_4Meanq_conv2d_2/Mul_11:z:0,q_conv2d_2/Mean_4/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Mean_4�
q_conv2d_2/Mul_12Mulq_conv2d_2/mul_10:z:0q_conv2d_2/mul_10:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Mul_12�
#q_conv2d_2/Mean_5/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_2/Mean_5/reduction_indices�
q_conv2d_2/Mean_5Meanq_conv2d_2/Mul_12:z:0,q_conv2d_2/Mean_5/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Mean_5m
q_conv2d_2/add_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add_8/y�
q_conv2d_2/add_8AddV2q_conv2d_2/Mean_5:output:0q_conv2d_2/add_8/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_8�
q_conv2d_2/truediv_13RealDivq_conv2d_2/Mean_4:output:0q_conv2d_2/add_8:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_13m
q_conv2d_2/add_9/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add_9/y�
q_conv2d_2/add_9AddV2q_conv2d_2/truediv_13:z:0q_conv2d_2/add_9/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_9r
q_conv2d_2/Log_3Logq_conv2d_2/add_9:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Log_3w
q_conv2d_2/truediv_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_2/truediv_14/y�
q_conv2d_2/truediv_14RealDivq_conv2d_2/Log_3:y:0 q_conv2d_2/truediv_14/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_14}
q_conv2d_2/Round_3Roundq_conv2d_2/truediv_14:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Round_3m
q_conv2d_2/Pow_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/Pow_4/x�
q_conv2d_2/Pow_4Powq_conv2d_2/Pow_4/x:output:0q_conv2d_2/Round_3:y:0*
T0*&
_output_shapes
:2
q_conv2d_2/Pow_4t
q_conv2d_2/Abs_4Absq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Abs_4�
q_conv2d_2/truediv_15RealDivq_conv2d_2/Abs_4:y:0q_conv2d_2/Pow_4:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_15o
q_conv2d_2/add_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d_2/add_10/y�
q_conv2d_2/add_10AddV2q_conv2d_2/truediv_15:z:0q_conv2d_2/add_10/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_10y
q_conv2d_2/Floor_3Floorq_conv2d_2/add_10:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Floor_3o
q_conv2d_2/Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d_2/Less_3/y�
q_conv2d_2/Less_3Lessq_conv2d_2/Floor_3:y:0q_conv2d_2/Less_3/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/Less_3w
q_conv2d_2/Sign_3Signq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Sign_3�
q_conv2d_2/ones_like_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d_2/ones_like_3/Shape�
q_conv2d_2/ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_2/ones_like_3/Const�
q_conv2d_2/ones_like_3Fill%q_conv2d_2/ones_like_3/Shape:output:0%q_conv2d_2/ones_like_3/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/ones_like_3o
q_conv2d_2/mul_13/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_2/mul_13/y�
q_conv2d_2/mul_13Mulq_conv2d_2/ones_like_3:output:0q_conv2d_2/mul_13/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_13w
q_conv2d_2/truediv_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/truediv_16/y�
q_conv2d_2/truediv_16RealDivq_conv2d_2/mul_13:z:0 q_conv2d_2/truediv_16/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_16�
q_conv2d_2/SelectV2_3SelectV2q_conv2d_2/Less_3:z:0q_conv2d_2/Floor_3:y:0q_conv2d_2/truediv_16:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/SelectV2_3�
q_conv2d_2/mul_14Mulq_conv2d_2/Sign_3:y:0q_conv2d_2/SelectV2_3:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_14�
q_conv2d_2/Mul_15Mulq_conv2d_2/truediv:z:0q_conv2d_2/mul_14:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Mul_15�
#q_conv2d_2/Mean_6/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_2/Mean_6/reduction_indices�
q_conv2d_2/Mean_6Meanq_conv2d_2/Mul_15:z:0,q_conv2d_2/Mean_6/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Mean_6�
q_conv2d_2/Mul_16Mulq_conv2d_2/mul_14:z:0q_conv2d_2/mul_14:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Mul_16�
#q_conv2d_2/Mean_7/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_2/Mean_7/reduction_indices�
q_conv2d_2/Mean_7Meanq_conv2d_2/Mul_16:z:0,q_conv2d_2/Mean_7/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Mean_7o
q_conv2d_2/add_11/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add_11/y�
q_conv2d_2/add_11AddV2q_conv2d_2/Mean_7:output:0q_conv2d_2/add_11/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_11�
q_conv2d_2/truediv_17RealDivq_conv2d_2/Mean_6:output:0q_conv2d_2/add_11:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_17o
q_conv2d_2/add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add_12/y�
q_conv2d_2/add_12AddV2q_conv2d_2/truediv_17:z:0q_conv2d_2/add_12/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_12s
q_conv2d_2/Log_4Logq_conv2d_2/add_12:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Log_4w
q_conv2d_2/truediv_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_2/truediv_18/y�
q_conv2d_2/truediv_18RealDivq_conv2d_2/Log_4:y:0 q_conv2d_2/truediv_18/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_18}
q_conv2d_2/Round_4Roundq_conv2d_2/truediv_18:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Round_4m
q_conv2d_2/Pow_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/Pow_5/x�
q_conv2d_2/Pow_5Powq_conv2d_2/Pow_5/x:output:0q_conv2d_2/Round_4:y:0*
T0*&
_output_shapes
:2
q_conv2d_2/Pow_5t
q_conv2d_2/Abs_5Absq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Abs_5�
q_conv2d_2/truediv_19RealDivq_conv2d_2/Abs_5:y:0q_conv2d_2/Pow_5:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_19o
q_conv2d_2/add_13/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d_2/add_13/y�
q_conv2d_2/add_13AddV2q_conv2d_2/truediv_19:z:0q_conv2d_2/add_13/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_13y
q_conv2d_2/Floor_4Floorq_conv2d_2/add_13:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Floor_4o
q_conv2d_2/Less_4/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d_2/Less_4/y�
q_conv2d_2/Less_4Lessq_conv2d_2/Floor_4:y:0q_conv2d_2/Less_4/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/Less_4w
q_conv2d_2/Sign_4Signq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Sign_4�
q_conv2d_2/ones_like_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d_2/ones_like_4/Shape�
q_conv2d_2/ones_like_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_2/ones_like_4/Const�
q_conv2d_2/ones_like_4Fill%q_conv2d_2/ones_like_4/Shape:output:0%q_conv2d_2/ones_like_4/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/ones_like_4o
q_conv2d_2/mul_17/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_2/mul_17/y�
q_conv2d_2/mul_17Mulq_conv2d_2/ones_like_4:output:0q_conv2d_2/mul_17/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_17w
q_conv2d_2/truediv_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/truediv_20/y�
q_conv2d_2/truediv_20RealDivq_conv2d_2/mul_17:z:0 q_conv2d_2/truediv_20/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_20�
q_conv2d_2/SelectV2_4SelectV2q_conv2d_2/Less_4:z:0q_conv2d_2/Floor_4:y:0q_conv2d_2/truediv_20:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/SelectV2_4�
q_conv2d_2/mul_18Mulq_conv2d_2/Sign_4:y:0q_conv2d_2/SelectV2_4:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_18�
q_conv2d_2/Mul_19Mulq_conv2d_2/truediv:z:0q_conv2d_2/mul_18:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Mul_19�
#q_conv2d_2/Mean_8/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_2/Mean_8/reduction_indices�
q_conv2d_2/Mean_8Meanq_conv2d_2/Mul_19:z:0,q_conv2d_2/Mean_8/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Mean_8�
q_conv2d_2/Mul_20Mulq_conv2d_2/mul_18:z:0q_conv2d_2/mul_18:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Mul_20�
#q_conv2d_2/Mean_9/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_2/Mean_9/reduction_indices�
q_conv2d_2/Mean_9Meanq_conv2d_2/Mul_20:z:0,q_conv2d_2/Mean_9/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Mean_9o
q_conv2d_2/add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add_14/y�
q_conv2d_2/add_14AddV2q_conv2d_2/Mean_9:output:0q_conv2d_2/add_14/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_14�
q_conv2d_2/truediv_21RealDivq_conv2d_2/Mean_8:output:0q_conv2d_2/add_14:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_21o
q_conv2d_2/add_15/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add_15/y�
q_conv2d_2/add_15AddV2q_conv2d_2/truediv_21:z:0q_conv2d_2/add_15/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_15s
q_conv2d_2/Log_5Logq_conv2d_2/add_15:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Log_5w
q_conv2d_2/truediv_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_2/truediv_22/y�
q_conv2d_2/truediv_22RealDivq_conv2d_2/Log_5:y:0 q_conv2d_2/truediv_22/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_22}
q_conv2d_2/Round_5Roundq_conv2d_2/truediv_22:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Round_5m
q_conv2d_2/Pow_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/Pow_6/x�
q_conv2d_2/Pow_6Powq_conv2d_2/Pow_6/x:output:0q_conv2d_2/Round_5:y:0*
T0*&
_output_shapes
:2
q_conv2d_2/Pow_6o
q_conv2d_2/mul_21/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2
q_conv2d_2/mul_21/y�
q_conv2d_2/mul_21Mulq_conv2d_2/Pow_6:z:0q_conv2d_2/mul_21/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_21�
q_conv2d_2/mul_22Mulq_conv2d_2/Cast:y:0q_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_22�
q_conv2d_2/mul_23Mulq_conv2d_2/Cast:y:0q_conv2d_2/mul_18:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_23w
q_conv2d_2/truediv_23/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2
q_conv2d_2/truediv_23/y�
q_conv2d_2/truediv_23RealDivq_conv2d_2/mul_23:z:0 q_conv2d_2/truediv_23/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_23�
q_conv2d_2/mul_24Mulq_conv2d_2/mul_21:z:0q_conv2d_2/truediv_23:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_24o
q_conv2d_2/NegNegq_conv2d_2/mul_22:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Neg�
q_conv2d_2/add_16AddV2q_conv2d_2/Neg:y:0q_conv2d_2/mul_24:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_16o
q_conv2d_2/mul_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_2/mul_25/x�
q_conv2d_2/mul_25Mulq_conv2d_2/mul_25/x:output:0q_conv2d_2/add_16:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_25�
q_conv2d_2/StopGradientStopGradientq_conv2d_2/mul_25:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/StopGradient�
q_conv2d_2/add_17AddV2q_conv2d_2/mul_22:z:0 q_conv2d_2/StopGradient:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_17�
q_conv2d_2/convolutionConv2Dq_activation_1/add_3:z:0q_conv2d_2/add_17:z:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
q_conv2d_2/convolution�
!q_conv2d_2/BiasAdd/ReadVariableOpReadVariableOp*q_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!q_conv2d_2/BiasAdd/ReadVariableOp�
q_conv2d_2/BiasAddBiasAddq_conv2d_2/convolution:output:0)q_conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
q_conv2d_2/BiasAdd�
activation/SigmoidSigmoidq_conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
activation/Sigmoidy
IdentityIdentityactivation/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp4^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1 ^q_conv2d/BiasAdd/ReadVariableOp^q_conv2d/ReadVariableOp"^q_conv2d_1/BiasAdd/ReadVariableOp^q_conv2d_1/ReadVariableOp"^q_conv2d_2/BiasAdd/ReadVariableOp^q_conv2d_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 2j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12B
q_conv2d/BiasAdd/ReadVariableOpq_conv2d/BiasAdd/ReadVariableOp22
q_conv2d/ReadVariableOpq_conv2d/ReadVariableOp2F
!q_conv2d_1/BiasAdd/ReadVariableOp!q_conv2d_1/BiasAdd/ReadVariableOp26
q_conv2d_1/ReadVariableOpq_conv2d_1/ReadVariableOp2F
!q_conv2d_2/BiasAdd/ReadVariableOp!q_conv2d_2/BiasAdd/ReadVariableOp26
q_conv2d_2/ReadVariableOpq_conv2d_2/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_q_conv2d_2_layer_call_fn_3135664

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_q_conv2d_2_layer_call_and_return_conditional_losses_31331272
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
#__inference__traced_restore_3136130
file_prefix8
*assignvariableop_batch_normalization_gamma:9
+assignvariableop_1_batch_normalization_beta:@
2assignvariableop_2_batch_normalization_moving_mean:D
6assignvariableop_3_batch_normalization_moving_variance:<
"assignvariableop_4_q_conv2d_kernel:.
 assignvariableop_5_q_conv2d_bias:>
$assignvariableop_6_q_conv2d_1_kernel:0
"assignvariableop_7_q_conv2d_1_bias:>
$assignvariableop_8_q_conv2d_2_kernel:0
"assignvariableop_9_q_conv2d_2_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: B
4assignvariableop_19_adam_batch_normalization_gamma_m:A
3assignvariableop_20_adam_batch_normalization_beta_m:D
*assignvariableop_21_adam_q_conv2d_kernel_m:6
(assignvariableop_22_adam_q_conv2d_bias_m:F
,assignvariableop_23_adam_q_conv2d_1_kernel_m:8
*assignvariableop_24_adam_q_conv2d_1_bias_m:F
,assignvariableop_25_adam_q_conv2d_2_kernel_m:8
*assignvariableop_26_adam_q_conv2d_2_bias_m:B
4assignvariableop_27_adam_batch_normalization_gamma_v:A
3assignvariableop_28_adam_batch_normalization_beta_v:D
*assignvariableop_29_adam_q_conv2d_kernel_v:6
(assignvariableop_30_adam_q_conv2d_bias_v:F
,assignvariableop_31_adam_q_conv2d_1_kernel_v:8
*assignvariableop_32_adam_q_conv2d_1_bias_v:F
,assignvariableop_33_adam_q_conv2d_2_kernel_v:8
*assignvariableop_34_adam_q_conv2d_2_bias_v:
identity_36��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*�
value�B�$B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::*2
dtypes(
&2$	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp*assignvariableop_batch_normalization_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp+assignvariableop_1_batch_normalization_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp2assignvariableop_2_batch_normalization_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp6assignvariableop_3_batch_normalization_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_q_conv2d_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_q_conv2d_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_q_conv2d_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_q_conv2d_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp$assignvariableop_8_q_conv2d_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp"assignvariableop_9_q_conv2d_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp4assignvariableop_19_adam_batch_normalization_gamma_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp3assignvariableop_20_adam_batch_normalization_beta_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_q_conv2d_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_q_conv2d_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_q_conv2d_1_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_q_conv2d_1_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_q_conv2d_2_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_q_conv2d_2_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_batch_normalization_gamma_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp3assignvariableop_28_adam_batch_normalization_beta_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_q_conv2d_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_q_conv2d_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp,assignvariableop_31_adam_q_conv2d_1_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_q_conv2d_1_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adam_q_conv2d_2_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_q_conv2d_2_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_349
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_35Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_35f
Identity_36IdentityIdentity_35:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_36�
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_36Identity_36:output:0*[
_input_shapesJ
H: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�%
�
G__inference_sequential_layer_call_and_return_conditional_losses_3133141

inputs)
batch_normalization_3132365:)
batch_normalization_3132367:)
batch_normalization_3132369:)
batch_normalization_3132371:*
q_conv2d_3132588:
q_conv2d_3132590:,
q_conv2d_1_3132858: 
q_conv2d_1_3132860:,
q_conv2d_2_3133128: 
q_conv2d_2_3133130:
identity��+batch_normalization/StatefulPartitionedCall� q_conv2d/StatefulPartitionedCall�"q_conv2d_1/StatefulPartitionedCall�"q_conv2d_2/StatefulPartitionedCall�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_3132365batch_normalization_3132367batch_normalization_3132369batch_normalization_3132371*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_31323642-
+batch_normalization/StatefulPartitionedCall�
 q_conv2d/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0q_conv2d_3132588q_conv2d_3132590*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_q_conv2d_layer_call_and_return_conditional_losses_31325872"
 q_conv2d/StatefulPartitionedCall�
q_activation/PartitionedCallPartitionedCall)q_conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_q_activation_layer_call_and_return_conditional_losses_31326422
q_activation/PartitionedCall�
"q_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall%q_activation/PartitionedCall:output:0q_conv2d_1_3132858q_conv2d_1_3132860*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_q_conv2d_1_layer_call_and_return_conditional_losses_31328572$
"q_conv2d_1/StatefulPartitionedCall�
q_activation_1/PartitionedCallPartitionedCall+q_conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_q_activation_1_layer_call_and_return_conditional_losses_31329122 
q_activation_1/PartitionedCall�
"q_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall'q_activation_1/PartitionedCall:output:0q_conv2d_2_3133128q_conv2d_2_3133130*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_q_conv2d_2_layer_call_and_return_conditional_losses_31331272$
"q_conv2d_2/StatefulPartitionedCall�
activation/PartitionedCallPartitionedCall+q_conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_31331382
activation/PartitionedCall�
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp,^batch_normalization/StatefulPartitionedCall!^q_conv2d/StatefulPartitionedCall#^q_conv2d_1/StatefulPartitionedCall#^q_conv2d_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2D
 q_conv2d/StatefulPartitionedCall q_conv2d/StatefulPartitionedCall2H
"q_conv2d_1/StatefulPartitionedCall"q_conv2d_1/StatefulPartitionedCall2H
"q_conv2d_2/StatefulPartitionedCall"q_conv2d_2/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
,__inference_sequential_layer_call_fn_3133507

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_31333142
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3132280

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������2

Identity�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
��
�
G__inference_q_conv2d_1_layer_call_and_return_conditional_losses_3132857

inputs1
readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�ReadVariableOpP
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
Pow/xP
Pow/yConst*
_output_shapes
: *
dtype0*
value	B : 2
Pow/yR
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: 2
PowM
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast�
ReadVariableOpReadVariableOpreadvariableop_resource*&
_output_shapes
:*
dtype02
ReadVariableOpp
truedivRealDivReadVariableOp:value:0Cast:y:0*
T0*&
_output_shapes
:2	
truedivO
AbsAbstruediv:z:0*
T0*&
_output_shapes
:2
Abs�
Max/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Max/reduction_indices|
MaxMaxAbs:y:0Max/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
MaxS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
mul/y`
mulMulMax:output:0mul/y:output:0*
T0*&
_output_shapes
:2
mul_
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
truediv_1/yq
	truediv_1RealDivmul:z:0truediv_1/y:output:0*
T0*&
_output_shapes
:2
	truediv_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
add/yc
addAddV2truediv_1:z:0add/y:output:0*
T0*&
_output_shapes
:2
addK
LogLogadd:z:0*
T0*&
_output_shapes
:2
Log_
truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_2/yq
	truediv_2RealDivLog:y:0truediv_2/y:output:0*
T0*&
_output_shapes
:2
	truediv_2W
RoundRoundtruediv_2:z:0*
T0*&
_output_shapes
:2
RoundW
Pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_1/xc
Pow_1PowPow_1/x:output:0	Round:y:0*
T0*&
_output_shapes
:2
Pow_1S
Abs_1Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_1h
	truediv_3RealDiv	Abs_1:y:0	Pow_1:z:0*
T0*&
_output_shapes
:2
	truediv_3W
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
add_1/yi
add_1AddV2truediv_3:z:0add_1/y:output:0*
T0*&
_output_shapes
:2
add_1S
FloorFloor	add_1:z:0*
T0*&
_output_shapes
:2
FloorU
Less/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
Less/ya
LessLess	Floor:y:0Less/y:output:0*
T0*&
_output_shapes
:2
LessR
SignSigntruediv:z:0*
T0*&
_output_shapes
:2
Sign{
ones_like/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like/Const�
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*&
_output_shapes
:2
	ones_likeW
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2	
mul_1/yl
mul_1Mulones_like:output:0mul_1/y:output:0*
T0*&
_output_shapes
:2
mul_1_
truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_4/ys
	truediv_4RealDiv	mul_1:z:0truediv_4/y:output:0*
T0*&
_output_shapes
:2
	truediv_4u
SelectV2SelectV2Less:z:0	Floor:y:0truediv_4:z:0*
T0*&
_output_shapes
:2

SelectV2c
mul_2MulSign:y:0SelectV2:output:0*
T0*&
_output_shapes
:2
mul_2^
Mul_3Multruediv:z:0	mul_2:z:0*
T0*&
_output_shapes
:2
Mul_3�
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean/reduction_indices�
MeanMean	Mul_3:z:0Mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean\
Mul_4Mul	mul_2:z:0	mul_2:z:0*
T0*&
_output_shapes
:2
Mul_4�
Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_1/reduction_indices�
Mean_1Mean	Mul_4:z:0!Mean_1/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_1W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_2/yk
add_2AddV2Mean_1:output:0add_2/y:output:0*
T0*&
_output_shapes
:2
add_2l
	truediv_5RealDivMean:output:0	add_2:z:0*
T0*&
_output_shapes
:2
	truediv_5W
add_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_3/yi
add_3AddV2truediv_5:z:0add_3/y:output:0*
T0*&
_output_shapes
:2
add_3Q
Log_1Log	add_3:z:0*
T0*&
_output_shapes
:2
Log_1_
truediv_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_6/ys
	truediv_6RealDiv	Log_1:y:0truediv_6/y:output:0*
T0*&
_output_shapes
:2
	truediv_6[
Round_1Roundtruediv_6:z:0*
T0*&
_output_shapes
:2	
Round_1W
Pow_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_2/xe
Pow_2PowPow_2/x:output:0Round_1:y:0*
T0*&
_output_shapes
:2
Pow_2S
Abs_2Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_2h
	truediv_7RealDiv	Abs_2:y:0	Pow_2:z:0*
T0*&
_output_shapes
:2
	truediv_7W
add_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
add_4/yi
add_4AddV2truediv_7:z:0add_4/y:output:0*
T0*&
_output_shapes
:2
add_4W
Floor_1Floor	add_4:z:0*
T0*&
_output_shapes
:2	
Floor_1Y
Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_1/yi
Less_1LessFloor_1:y:0Less_1/y:output:0*
T0*&
_output_shapes
:2
Less_1V
Sign_1Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_1
ones_like_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_1/Const�
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*&
_output_shapes
:2
ones_like_1W
mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2	
mul_5/yn
mul_5Mulones_like_1:output:0mul_5/y:output:0*
T0*&
_output_shapes
:2
mul_5_
truediv_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_8/ys
	truediv_8RealDiv	mul_5:z:0truediv_8/y:output:0*
T0*&
_output_shapes
:2
	truediv_8}

SelectV2_1SelectV2
Less_1:z:0Floor_1:y:0truediv_8:z:0*
T0*&
_output_shapes
:2

SelectV2_1g
mul_6Mul
Sign_1:y:0SelectV2_1:output:0*
T0*&
_output_shapes
:2
mul_6^
Mul_7Multruediv:z:0	mul_6:z:0*
T0*&
_output_shapes
:2
Mul_7�
Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_2/reduction_indices�
Mean_2Mean	Mul_7:z:0!Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_2\
Mul_8Mul	mul_6:z:0	mul_6:z:0*
T0*&
_output_shapes
:2
Mul_8�
Mean_3/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_3/reduction_indices�
Mean_3Mean	Mul_8:z:0!Mean_3/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_3W
add_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_5/yk
add_5AddV2Mean_3:output:0add_5/y:output:0*
T0*&
_output_shapes
:2
add_5n
	truediv_9RealDivMean_2:output:0	add_5:z:0*
T0*&
_output_shapes
:2
	truediv_9W
add_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_6/yi
add_6AddV2truediv_9:z:0add_6/y:output:0*
T0*&
_output_shapes
:2
add_6Q
Log_2Log	add_6:z:0*
T0*&
_output_shapes
:2
Log_2a
truediv_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_10/yv

truediv_10RealDiv	Log_2:y:0truediv_10/y:output:0*
T0*&
_output_shapes
:2

truediv_10\
Round_2Roundtruediv_10:z:0*
T0*&
_output_shapes
:2	
Round_2W
Pow_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_3/xe
Pow_3PowPow_3/x:output:0Round_2:y:0*
T0*&
_output_shapes
:2
Pow_3S
Abs_3Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_3j

truediv_11RealDiv	Abs_3:y:0	Pow_3:z:0*
T0*&
_output_shapes
:2

truediv_11W
add_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
add_7/yj
add_7AddV2truediv_11:z:0add_7/y:output:0*
T0*&
_output_shapes
:2
add_7W
Floor_2Floor	add_7:z:0*
T0*&
_output_shapes
:2	
Floor_2Y
Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_2/yi
Less_2LessFloor_2:y:0Less_2/y:output:0*
T0*&
_output_shapes
:2
Less_2V
Sign_2Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_2
ones_like_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_2/Shapek
ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_2/Const�
ones_like_2Fillones_like_2/Shape:output:0ones_like_2/Const:output:0*
T0*&
_output_shapes
:2
ones_like_2W
mul_9/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2	
mul_9/yn
mul_9Mulones_like_2:output:0mul_9/y:output:0*
T0*&
_output_shapes
:2
mul_9a
truediv_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_12/yv

truediv_12RealDiv	mul_9:z:0truediv_12/y:output:0*
T0*&
_output_shapes
:2

truediv_12~

SelectV2_2SelectV2
Less_2:z:0Floor_2:y:0truediv_12:z:0*
T0*&
_output_shapes
:2

SelectV2_2i
mul_10Mul
Sign_2:y:0SelectV2_2:output:0*
T0*&
_output_shapes
:2
mul_10a
Mul_11Multruediv:z:0
mul_10:z:0*
T0*&
_output_shapes
:2
Mul_11�
Mean_4/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_4/reduction_indices�
Mean_4Mean
Mul_11:z:0!Mean_4/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_4`
Mul_12Mul
mul_10:z:0
mul_10:z:0*
T0*&
_output_shapes
:2
Mul_12�
Mean_5/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_5/reduction_indices�
Mean_5Mean
Mul_12:z:0!Mean_5/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_5W
add_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_8/yk
add_8AddV2Mean_5:output:0add_8/y:output:0*
T0*&
_output_shapes
:2
add_8p

truediv_13RealDivMean_4:output:0	add_8:z:0*
T0*&
_output_shapes
:2

truediv_13W
add_9/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_9/yj
add_9AddV2truediv_13:z:0add_9/y:output:0*
T0*&
_output_shapes
:2
add_9Q
Log_3Log	add_9:z:0*
T0*&
_output_shapes
:2
Log_3a
truediv_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_14/yv

truediv_14RealDiv	Log_3:y:0truediv_14/y:output:0*
T0*&
_output_shapes
:2

truediv_14\
Round_3Roundtruediv_14:z:0*
T0*&
_output_shapes
:2	
Round_3W
Pow_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_4/xe
Pow_4PowPow_4/x:output:0Round_3:y:0*
T0*&
_output_shapes
:2
Pow_4S
Abs_4Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_4j

truediv_15RealDiv	Abs_4:y:0	Pow_4:z:0*
T0*&
_output_shapes
:2

truediv_15Y
add_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2

add_10/ym
add_10AddV2truediv_15:z:0add_10/y:output:0*
T0*&
_output_shapes
:2
add_10X
Floor_3Floor
add_10:z:0*
T0*&
_output_shapes
:2	
Floor_3Y
Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_3/yi
Less_3LessFloor_3:y:0Less_3/y:output:0*
T0*&
_output_shapes
:2
Less_3V
Sign_3Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_3
ones_like_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_3/Shapek
ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_3/Const�
ones_like_3Fillones_like_3/Shape:output:0ones_like_3/Const:output:0*
T0*&
_output_shapes
:2
ones_like_3Y
mul_13/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2

mul_13/yq
mul_13Mulones_like_3:output:0mul_13/y:output:0*
T0*&
_output_shapes
:2
mul_13a
truediv_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_16/yw

truediv_16RealDiv
mul_13:z:0truediv_16/y:output:0*
T0*&
_output_shapes
:2

truediv_16~

SelectV2_3SelectV2
Less_3:z:0Floor_3:y:0truediv_16:z:0*
T0*&
_output_shapes
:2

SelectV2_3i
mul_14Mul
Sign_3:y:0SelectV2_3:output:0*
T0*&
_output_shapes
:2
mul_14a
Mul_15Multruediv:z:0
mul_14:z:0*
T0*&
_output_shapes
:2
Mul_15�
Mean_6/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_6/reduction_indices�
Mean_6Mean
Mul_15:z:0!Mean_6/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_6`
Mul_16Mul
mul_14:z:0
mul_14:z:0*
T0*&
_output_shapes
:2
Mul_16�
Mean_7/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_7/reduction_indices�
Mean_7Mean
Mul_16:z:0!Mean_7/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_7Y
add_11/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_11/yn
add_11AddV2Mean_7:output:0add_11/y:output:0*
T0*&
_output_shapes
:2
add_11q

truediv_17RealDivMean_6:output:0
add_11:z:0*
T0*&
_output_shapes
:2

truediv_17Y
add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_12/ym
add_12AddV2truediv_17:z:0add_12/y:output:0*
T0*&
_output_shapes
:2
add_12R
Log_4Log
add_12:z:0*
T0*&
_output_shapes
:2
Log_4a
truediv_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_18/yv

truediv_18RealDiv	Log_4:y:0truediv_18/y:output:0*
T0*&
_output_shapes
:2

truediv_18\
Round_4Roundtruediv_18:z:0*
T0*&
_output_shapes
:2	
Round_4W
Pow_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_5/xe
Pow_5PowPow_5/x:output:0Round_4:y:0*
T0*&
_output_shapes
:2
Pow_5S
Abs_5Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_5j

truediv_19RealDiv	Abs_5:y:0	Pow_5:z:0*
T0*&
_output_shapes
:2

truediv_19Y
add_13/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2

add_13/ym
add_13AddV2truediv_19:z:0add_13/y:output:0*
T0*&
_output_shapes
:2
add_13X
Floor_4Floor
add_13:z:0*
T0*&
_output_shapes
:2	
Floor_4Y
Less_4/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_4/yi
Less_4LessFloor_4:y:0Less_4/y:output:0*
T0*&
_output_shapes
:2
Less_4V
Sign_4Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_4
ones_like_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_4/Shapek
ones_like_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_4/Const�
ones_like_4Fillones_like_4/Shape:output:0ones_like_4/Const:output:0*
T0*&
_output_shapes
:2
ones_like_4Y
mul_17/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2

mul_17/yq
mul_17Mulones_like_4:output:0mul_17/y:output:0*
T0*&
_output_shapes
:2
mul_17a
truediv_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_20/yw

truediv_20RealDiv
mul_17:z:0truediv_20/y:output:0*
T0*&
_output_shapes
:2

truediv_20~

SelectV2_4SelectV2
Less_4:z:0Floor_4:y:0truediv_20:z:0*
T0*&
_output_shapes
:2

SelectV2_4i
mul_18Mul
Sign_4:y:0SelectV2_4:output:0*
T0*&
_output_shapes
:2
mul_18a
Mul_19Multruediv:z:0
mul_18:z:0*
T0*&
_output_shapes
:2
Mul_19�
Mean_8/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_8/reduction_indices�
Mean_8Mean
Mul_19:z:0!Mean_8/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_8`
Mul_20Mul
mul_18:z:0
mul_18:z:0*
T0*&
_output_shapes
:2
Mul_20�
Mean_9/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_9/reduction_indices�
Mean_9Mean
Mul_20:z:0!Mean_9/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_9Y
add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_14/yn
add_14AddV2Mean_9:output:0add_14/y:output:0*
T0*&
_output_shapes
:2
add_14q

truediv_21RealDivMean_8:output:0
add_14:z:0*
T0*&
_output_shapes
:2

truediv_21Y
add_15/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_15/ym
add_15AddV2truediv_21:z:0add_15/y:output:0*
T0*&
_output_shapes
:2
add_15R
Log_5Log
add_15:z:0*
T0*&
_output_shapes
:2
Log_5a
truediv_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_22/yv

truediv_22RealDiv	Log_5:y:0truediv_22/y:output:0*
T0*&
_output_shapes
:2

truediv_22\
Round_5Roundtruediv_22:z:0*
T0*&
_output_shapes
:2	
Round_5W
Pow_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_6/xe
Pow_6PowPow_6/x:output:0Round_5:y:0*
T0*&
_output_shapes
:2
Pow_6Y
mul_21/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2

mul_21/yf
mul_21Mul	Pow_6:z:0mul_21/y:output:0*
T0*&
_output_shapes
:2
mul_21_
mul_22MulCast:y:0truediv:z:0*
T0*&
_output_shapes
:2
mul_22^
mul_23MulCast:y:0
mul_18:z:0*
T0*&
_output_shapes
:2
mul_23a
truediv_23/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2
truediv_23/yw

truediv_23RealDiv
mul_23:z:0truediv_23/y:output:0*
T0*&
_output_shapes
:2

truediv_23d
mul_24Mul
mul_21:z:0truediv_23:z:0*
T0*&
_output_shapes
:2
mul_24N
NegNeg
mul_22:z:0*
T0*&
_output_shapes
:2
Neg_
add_16AddV2Neg:y:0
mul_24:z:0*
T0*&
_output_shapes
:2
add_16Y
mul_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2

mul_25/xg
mul_25Mulmul_25/x:output:0
add_16:z:0*
T0*&
_output_shapes
:2
mul_25i
StopGradientStopGradient
mul_25:z:0*
T0*&
_output_shapes
:2
StopGradientm
add_17AddV2
mul_22:z:0StopGradient:output:0*
T0*&
_output_shapes
:2
add_17�
convolutionConv2Dinputs
add_17:z:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
convolution�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconvolution:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityx
NoOpNoOp^BiasAdd/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2 
ReadVariableOpReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3132236

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������2

Identity�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3132364

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3135067

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������2

Identity�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�%
�
G__inference_sequential_layer_call_and_return_conditional_losses_3133424
input_1)
batch_normalization_3133396:)
batch_normalization_3133398:)
batch_normalization_3133400:)
batch_normalization_3133402:*
q_conv2d_3133405:
q_conv2d_3133407:,
q_conv2d_1_3133411: 
q_conv2d_1_3133413:,
q_conv2d_2_3133417: 
q_conv2d_2_3133419:
identity��+batch_normalization/StatefulPartitionedCall� q_conv2d/StatefulPartitionedCall�"q_conv2d_1/StatefulPartitionedCall�"q_conv2d_2/StatefulPartitionedCall�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCallinput_1batch_normalization_3133396batch_normalization_3133398batch_normalization_3133400batch_normalization_3133402*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_31332452-
+batch_normalization/StatefulPartitionedCall�
 q_conv2d/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0q_conv2d_3133405q_conv2d_3133407*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_q_conv2d_layer_call_and_return_conditional_losses_31325872"
 q_conv2d/StatefulPartitionedCall�
q_activation/PartitionedCallPartitionedCall)q_conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_q_activation_layer_call_and_return_conditional_losses_31326422
q_activation/PartitionedCall�
"q_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall%q_activation/PartitionedCall:output:0q_conv2d_1_3133411q_conv2d_1_3133413*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_q_conv2d_1_layer_call_and_return_conditional_losses_31328572$
"q_conv2d_1/StatefulPartitionedCall�
q_activation_1/PartitionedCallPartitionedCall+q_conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_q_activation_1_layer_call_and_return_conditional_losses_31329122 
q_activation_1/PartitionedCall�
"q_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall'q_activation_1/PartitionedCall:output:0q_conv2d_2_3133417q_conv2d_2_3133419*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_q_conv2d_2_layer_call_and_return_conditional_losses_31331272$
"q_conv2d_2/StatefulPartitionedCall�
activation/PartitionedCallPartitionedCall+q_conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_31331382
activation/PartitionedCall�
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp,^batch_normalization/StatefulPartitionedCall!^q_conv2d/StatefulPartitionedCall#^q_conv2d_1/StatefulPartitionedCall#^q_conv2d_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2D
 q_conv2d/StatefulPartitionedCall q_conv2d/StatefulPartitionedCall2H
"q_conv2d_1/StatefulPartitionedCall"q_conv2d_1/StatefulPartitionedCall2H
"q_conv2d_2/StatefulPartitionedCall"q_conv2d_2/StatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
��
�	
G__inference_sequential_layer_call_and_return_conditional_losses_3134979

inputs9
+batch_normalization_readvariableop_resource:;
-batch_normalization_readvariableop_1_resource:J
<batch_normalization_fusedbatchnormv3_readvariableop_resource:L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource::
 q_conv2d_readvariableop_resource:6
(q_conv2d_biasadd_readvariableop_resource:<
"q_conv2d_1_readvariableop_resource:8
*q_conv2d_1_biasadd_readvariableop_resource:<
"q_conv2d_2_readvariableop_resource:8
*q_conv2d_2_biasadd_readvariableop_resource:
identity��"batch_normalization/AssignNewValue�$batch_normalization/AssignNewValue_1�3batch_normalization/FusedBatchNormV3/ReadVariableOp�5batch_normalization/FusedBatchNormV3/ReadVariableOp_1�"batch_normalization/ReadVariableOp�$batch_normalization/ReadVariableOp_1�q_conv2d/BiasAdd/ReadVariableOp�q_conv2d/ReadVariableOp�!q_conv2d_1/BiasAdd/ReadVariableOp�q_conv2d_1/ReadVariableOp�!q_conv2d_2/BiasAdd/ReadVariableOp�q_conv2d_2/ReadVariableOp�
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype02$
"batch_normalization/ReadVariableOp�
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype02&
$batch_normalization/ReadVariableOp_1�
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype025
3batch_normalization/FusedBatchNormV3/ReadVariableOp�
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype027
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1�
$batch_normalization/FusedBatchNormV3FusedBatchNormV3inputs*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2&
$batch_normalization/FusedBatchNormV3�
"batch_normalization/AssignNewValueAssignVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource1batch_normalization/FusedBatchNormV3:batch_mean:04^batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02$
"batch_normalization/AssignNewValue�
$batch_normalization/AssignNewValue_1AssignVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource5batch_normalization/FusedBatchNormV3:batch_variance:06^batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02&
$batch_normalization/AssignNewValue_1b
q_conv2d/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
q_conv2d/Pow/xb
q_conv2d/Pow/yConst*
_output_shapes
: *
dtype0*
value	B : 2
q_conv2d/Pow/yv
q_conv2d/PowPowq_conv2d/Pow/x:output:0q_conv2d/Pow/y:output:0*
T0*
_output_shapes
: 2
q_conv2d/Powh
q_conv2d/CastCastq_conv2d/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
q_conv2d/Cast�
q_conv2d/ReadVariableOpReadVariableOp q_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
q_conv2d/ReadVariableOp�
q_conv2d/truedivRealDivq_conv2d/ReadVariableOp:value:0q_conv2d/Cast:y:0*
T0*&
_output_shapes
:2
q_conv2d/truedivj
q_conv2d/AbsAbsq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Abs�
q_conv2d/Max/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
q_conv2d/Max/reduction_indices�
q_conv2d/MaxMaxq_conv2d/Abs:y:0'q_conv2d/Max/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Maxe
q_conv2d/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/mul/y�
q_conv2d/mulMulq_conv2d/Max:output:0q_conv2d/mul/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/mulq
q_conv2d/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d/truediv_1/y�
q_conv2d/truediv_1RealDivq_conv2d/mul:z:0q_conv2d/truediv_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_1e
q_conv2d/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add/y�
q_conv2d/addAddV2q_conv2d/truediv_1:z:0q_conv2d/add/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/addf
q_conv2d/LogLogq_conv2d/add:z:0*
T0*&
_output_shapes
:2
q_conv2d/Logq
q_conv2d/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d/truediv_2/y�
q_conv2d/truediv_2RealDivq_conv2d/Log:y:0q_conv2d/truediv_2/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_2r
q_conv2d/RoundRoundq_conv2d/truediv_2:z:0*
T0*&
_output_shapes
:2
q_conv2d/Roundi
q_conv2d/Pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/Pow_1/x�
q_conv2d/Pow_1Powq_conv2d/Pow_1/x:output:0q_conv2d/Round:y:0*
T0*&
_output_shapes
:2
q_conv2d/Pow_1n
q_conv2d/Abs_1Absq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Abs_1�
q_conv2d/truediv_3RealDivq_conv2d/Abs_1:y:0q_conv2d/Pow_1:z:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_3i
q_conv2d/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d/add_1/y�
q_conv2d/add_1AddV2q_conv2d/truediv_3:z:0q_conv2d/add_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_1n
q_conv2d/FloorFloorq_conv2d/add_1:z:0*
T0*&
_output_shapes
:2
q_conv2d/Floorg
q_conv2d/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d/Less/y�
q_conv2d/LessLessq_conv2d/Floor:y:0q_conv2d/Less/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/Lessm
q_conv2d/SignSignq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Sign�
q_conv2d/ones_like/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d/ones_like/Shapey
q_conv2d/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d/ones_like/Const�
q_conv2d/ones_likeFill!q_conv2d/ones_like/Shape:output:0!q_conv2d/ones_like/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d/ones_likei
q_conv2d/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d/mul_1/y�
q_conv2d/mul_1Mulq_conv2d/ones_like:output:0q_conv2d/mul_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_1q
q_conv2d/truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/truediv_4/y�
q_conv2d/truediv_4RealDivq_conv2d/mul_1:z:0q_conv2d/truediv_4/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_4�
q_conv2d/SelectV2SelectV2q_conv2d/Less:z:0q_conv2d/Floor:y:0q_conv2d/truediv_4:z:0*
T0*&
_output_shapes
:2
q_conv2d/SelectV2�
q_conv2d/mul_2Mulq_conv2d/Sign:y:0q_conv2d/SelectV2:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_2�
q_conv2d/Mul_3Mulq_conv2d/truediv:z:0q_conv2d/mul_2:z:0*
T0*&
_output_shapes
:2
q_conv2d/Mul_3�
q_conv2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2!
q_conv2d/Mean/reduction_indices�
q_conv2d/MeanMeanq_conv2d/Mul_3:z:0(q_conv2d/Mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Mean�
q_conv2d/Mul_4Mulq_conv2d/mul_2:z:0q_conv2d/mul_2:z:0*
T0*&
_output_shapes
:2
q_conv2d/Mul_4�
!q_conv2d/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d/Mean_1/reduction_indices�
q_conv2d/Mean_1Meanq_conv2d/Mul_4:z:0*q_conv2d/Mean_1/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Mean_1i
q_conv2d/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add_2/y�
q_conv2d/add_2AddV2q_conv2d/Mean_1:output:0q_conv2d/add_2/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_2�
q_conv2d/truediv_5RealDivq_conv2d/Mean:output:0q_conv2d/add_2:z:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_5i
q_conv2d/add_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add_3/y�
q_conv2d/add_3AddV2q_conv2d/truediv_5:z:0q_conv2d/add_3/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_3l
q_conv2d/Log_1Logq_conv2d/add_3:z:0*
T0*&
_output_shapes
:2
q_conv2d/Log_1q
q_conv2d/truediv_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d/truediv_6/y�
q_conv2d/truediv_6RealDivq_conv2d/Log_1:y:0q_conv2d/truediv_6/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_6v
q_conv2d/Round_1Roundq_conv2d/truediv_6:z:0*
T0*&
_output_shapes
:2
q_conv2d/Round_1i
q_conv2d/Pow_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/Pow_2/x�
q_conv2d/Pow_2Powq_conv2d/Pow_2/x:output:0q_conv2d/Round_1:y:0*
T0*&
_output_shapes
:2
q_conv2d/Pow_2n
q_conv2d/Abs_2Absq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Abs_2�
q_conv2d/truediv_7RealDivq_conv2d/Abs_2:y:0q_conv2d/Pow_2:z:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_7i
q_conv2d/add_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d/add_4/y�
q_conv2d/add_4AddV2q_conv2d/truediv_7:z:0q_conv2d/add_4/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_4r
q_conv2d/Floor_1Floorq_conv2d/add_4:z:0*
T0*&
_output_shapes
:2
q_conv2d/Floor_1k
q_conv2d/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d/Less_1/y�
q_conv2d/Less_1Lessq_conv2d/Floor_1:y:0q_conv2d/Less_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/Less_1q
q_conv2d/Sign_1Signq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Sign_1�
q_conv2d/ones_like_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d/ones_like_1/Shape}
q_conv2d/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d/ones_like_1/Const�
q_conv2d/ones_like_1Fill#q_conv2d/ones_like_1/Shape:output:0#q_conv2d/ones_like_1/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d/ones_like_1i
q_conv2d/mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d/mul_5/y�
q_conv2d/mul_5Mulq_conv2d/ones_like_1:output:0q_conv2d/mul_5/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_5q
q_conv2d/truediv_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/truediv_8/y�
q_conv2d/truediv_8RealDivq_conv2d/mul_5:z:0q_conv2d/truediv_8/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_8�
q_conv2d/SelectV2_1SelectV2q_conv2d/Less_1:z:0q_conv2d/Floor_1:y:0q_conv2d/truediv_8:z:0*
T0*&
_output_shapes
:2
q_conv2d/SelectV2_1�
q_conv2d/mul_6Mulq_conv2d/Sign_1:y:0q_conv2d/SelectV2_1:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_6�
q_conv2d/Mul_7Mulq_conv2d/truediv:z:0q_conv2d/mul_6:z:0*
T0*&
_output_shapes
:2
q_conv2d/Mul_7�
!q_conv2d/Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d/Mean_2/reduction_indices�
q_conv2d/Mean_2Meanq_conv2d/Mul_7:z:0*q_conv2d/Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Mean_2�
q_conv2d/Mul_8Mulq_conv2d/mul_6:z:0q_conv2d/mul_6:z:0*
T0*&
_output_shapes
:2
q_conv2d/Mul_8�
!q_conv2d/Mean_3/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d/Mean_3/reduction_indices�
q_conv2d/Mean_3Meanq_conv2d/Mul_8:z:0*q_conv2d/Mean_3/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Mean_3i
q_conv2d/add_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add_5/y�
q_conv2d/add_5AddV2q_conv2d/Mean_3:output:0q_conv2d/add_5/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_5�
q_conv2d/truediv_9RealDivq_conv2d/Mean_2:output:0q_conv2d/add_5:z:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_9i
q_conv2d/add_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add_6/y�
q_conv2d/add_6AddV2q_conv2d/truediv_9:z:0q_conv2d/add_6/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_6l
q_conv2d/Log_2Logq_conv2d/add_6:z:0*
T0*&
_output_shapes
:2
q_conv2d/Log_2s
q_conv2d/truediv_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d/truediv_10/y�
q_conv2d/truediv_10RealDivq_conv2d/Log_2:y:0q_conv2d/truediv_10/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_10w
q_conv2d/Round_2Roundq_conv2d/truediv_10:z:0*
T0*&
_output_shapes
:2
q_conv2d/Round_2i
q_conv2d/Pow_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/Pow_3/x�
q_conv2d/Pow_3Powq_conv2d/Pow_3/x:output:0q_conv2d/Round_2:y:0*
T0*&
_output_shapes
:2
q_conv2d/Pow_3n
q_conv2d/Abs_3Absq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Abs_3�
q_conv2d/truediv_11RealDivq_conv2d/Abs_3:y:0q_conv2d/Pow_3:z:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_11i
q_conv2d/add_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d/add_7/y�
q_conv2d/add_7AddV2q_conv2d/truediv_11:z:0q_conv2d/add_7/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_7r
q_conv2d/Floor_2Floorq_conv2d/add_7:z:0*
T0*&
_output_shapes
:2
q_conv2d/Floor_2k
q_conv2d/Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d/Less_2/y�
q_conv2d/Less_2Lessq_conv2d/Floor_2:y:0q_conv2d/Less_2/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/Less_2q
q_conv2d/Sign_2Signq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Sign_2�
q_conv2d/ones_like_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d/ones_like_2/Shape}
q_conv2d/ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d/ones_like_2/Const�
q_conv2d/ones_like_2Fill#q_conv2d/ones_like_2/Shape:output:0#q_conv2d/ones_like_2/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d/ones_like_2i
q_conv2d/mul_9/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d/mul_9/y�
q_conv2d/mul_9Mulq_conv2d/ones_like_2:output:0q_conv2d/mul_9/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_9s
q_conv2d/truediv_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/truediv_12/y�
q_conv2d/truediv_12RealDivq_conv2d/mul_9:z:0q_conv2d/truediv_12/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_12�
q_conv2d/SelectV2_2SelectV2q_conv2d/Less_2:z:0q_conv2d/Floor_2:y:0q_conv2d/truediv_12:z:0*
T0*&
_output_shapes
:2
q_conv2d/SelectV2_2�
q_conv2d/mul_10Mulq_conv2d/Sign_2:y:0q_conv2d/SelectV2_2:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_10�
q_conv2d/Mul_11Mulq_conv2d/truediv:z:0q_conv2d/mul_10:z:0*
T0*&
_output_shapes
:2
q_conv2d/Mul_11�
!q_conv2d/Mean_4/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d/Mean_4/reduction_indices�
q_conv2d/Mean_4Meanq_conv2d/Mul_11:z:0*q_conv2d/Mean_4/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Mean_4�
q_conv2d/Mul_12Mulq_conv2d/mul_10:z:0q_conv2d/mul_10:z:0*
T0*&
_output_shapes
:2
q_conv2d/Mul_12�
!q_conv2d/Mean_5/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d/Mean_5/reduction_indices�
q_conv2d/Mean_5Meanq_conv2d/Mul_12:z:0*q_conv2d/Mean_5/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Mean_5i
q_conv2d/add_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add_8/y�
q_conv2d/add_8AddV2q_conv2d/Mean_5:output:0q_conv2d/add_8/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_8�
q_conv2d/truediv_13RealDivq_conv2d/Mean_4:output:0q_conv2d/add_8:z:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_13i
q_conv2d/add_9/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add_9/y�
q_conv2d/add_9AddV2q_conv2d/truediv_13:z:0q_conv2d/add_9/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_9l
q_conv2d/Log_3Logq_conv2d/add_9:z:0*
T0*&
_output_shapes
:2
q_conv2d/Log_3s
q_conv2d/truediv_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d/truediv_14/y�
q_conv2d/truediv_14RealDivq_conv2d/Log_3:y:0q_conv2d/truediv_14/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_14w
q_conv2d/Round_3Roundq_conv2d/truediv_14:z:0*
T0*&
_output_shapes
:2
q_conv2d/Round_3i
q_conv2d/Pow_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/Pow_4/x�
q_conv2d/Pow_4Powq_conv2d/Pow_4/x:output:0q_conv2d/Round_3:y:0*
T0*&
_output_shapes
:2
q_conv2d/Pow_4n
q_conv2d/Abs_4Absq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Abs_4�
q_conv2d/truediv_15RealDivq_conv2d/Abs_4:y:0q_conv2d/Pow_4:z:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_15k
q_conv2d/add_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d/add_10/y�
q_conv2d/add_10AddV2q_conv2d/truediv_15:z:0q_conv2d/add_10/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_10s
q_conv2d/Floor_3Floorq_conv2d/add_10:z:0*
T0*&
_output_shapes
:2
q_conv2d/Floor_3k
q_conv2d/Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d/Less_3/y�
q_conv2d/Less_3Lessq_conv2d/Floor_3:y:0q_conv2d/Less_3/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/Less_3q
q_conv2d/Sign_3Signq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Sign_3�
q_conv2d/ones_like_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d/ones_like_3/Shape}
q_conv2d/ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d/ones_like_3/Const�
q_conv2d/ones_like_3Fill#q_conv2d/ones_like_3/Shape:output:0#q_conv2d/ones_like_3/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d/ones_like_3k
q_conv2d/mul_13/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d/mul_13/y�
q_conv2d/mul_13Mulq_conv2d/ones_like_3:output:0q_conv2d/mul_13/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_13s
q_conv2d/truediv_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/truediv_16/y�
q_conv2d/truediv_16RealDivq_conv2d/mul_13:z:0q_conv2d/truediv_16/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_16�
q_conv2d/SelectV2_3SelectV2q_conv2d/Less_3:z:0q_conv2d/Floor_3:y:0q_conv2d/truediv_16:z:0*
T0*&
_output_shapes
:2
q_conv2d/SelectV2_3�
q_conv2d/mul_14Mulq_conv2d/Sign_3:y:0q_conv2d/SelectV2_3:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_14�
q_conv2d/Mul_15Mulq_conv2d/truediv:z:0q_conv2d/mul_14:z:0*
T0*&
_output_shapes
:2
q_conv2d/Mul_15�
!q_conv2d/Mean_6/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d/Mean_6/reduction_indices�
q_conv2d/Mean_6Meanq_conv2d/Mul_15:z:0*q_conv2d/Mean_6/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Mean_6�
q_conv2d/Mul_16Mulq_conv2d/mul_14:z:0q_conv2d/mul_14:z:0*
T0*&
_output_shapes
:2
q_conv2d/Mul_16�
!q_conv2d/Mean_7/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d/Mean_7/reduction_indices�
q_conv2d/Mean_7Meanq_conv2d/Mul_16:z:0*q_conv2d/Mean_7/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Mean_7k
q_conv2d/add_11/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add_11/y�
q_conv2d/add_11AddV2q_conv2d/Mean_7:output:0q_conv2d/add_11/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_11�
q_conv2d/truediv_17RealDivq_conv2d/Mean_6:output:0q_conv2d/add_11:z:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_17k
q_conv2d/add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add_12/y�
q_conv2d/add_12AddV2q_conv2d/truediv_17:z:0q_conv2d/add_12/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_12m
q_conv2d/Log_4Logq_conv2d/add_12:z:0*
T0*&
_output_shapes
:2
q_conv2d/Log_4s
q_conv2d/truediv_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d/truediv_18/y�
q_conv2d/truediv_18RealDivq_conv2d/Log_4:y:0q_conv2d/truediv_18/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_18w
q_conv2d/Round_4Roundq_conv2d/truediv_18:z:0*
T0*&
_output_shapes
:2
q_conv2d/Round_4i
q_conv2d/Pow_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/Pow_5/x�
q_conv2d/Pow_5Powq_conv2d/Pow_5/x:output:0q_conv2d/Round_4:y:0*
T0*&
_output_shapes
:2
q_conv2d/Pow_5n
q_conv2d/Abs_5Absq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Abs_5�
q_conv2d/truediv_19RealDivq_conv2d/Abs_5:y:0q_conv2d/Pow_5:z:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_19k
q_conv2d/add_13/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d/add_13/y�
q_conv2d/add_13AddV2q_conv2d/truediv_19:z:0q_conv2d/add_13/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_13s
q_conv2d/Floor_4Floorq_conv2d/add_13:z:0*
T0*&
_output_shapes
:2
q_conv2d/Floor_4k
q_conv2d/Less_4/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d/Less_4/y�
q_conv2d/Less_4Lessq_conv2d/Floor_4:y:0q_conv2d/Less_4/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/Less_4q
q_conv2d/Sign_4Signq_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/Sign_4�
q_conv2d/ones_like_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d/ones_like_4/Shape}
q_conv2d/ones_like_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d/ones_like_4/Const�
q_conv2d/ones_like_4Fill#q_conv2d/ones_like_4/Shape:output:0#q_conv2d/ones_like_4/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d/ones_like_4k
q_conv2d/mul_17/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d/mul_17/y�
q_conv2d/mul_17Mulq_conv2d/ones_like_4:output:0q_conv2d/mul_17/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_17s
q_conv2d/truediv_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/truediv_20/y�
q_conv2d/truediv_20RealDivq_conv2d/mul_17:z:0q_conv2d/truediv_20/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_20�
q_conv2d/SelectV2_4SelectV2q_conv2d/Less_4:z:0q_conv2d/Floor_4:y:0q_conv2d/truediv_20:z:0*
T0*&
_output_shapes
:2
q_conv2d/SelectV2_4�
q_conv2d/mul_18Mulq_conv2d/Sign_4:y:0q_conv2d/SelectV2_4:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_18�
q_conv2d/Mul_19Mulq_conv2d/truediv:z:0q_conv2d/mul_18:z:0*
T0*&
_output_shapes
:2
q_conv2d/Mul_19�
!q_conv2d/Mean_8/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d/Mean_8/reduction_indices�
q_conv2d/Mean_8Meanq_conv2d/Mul_19:z:0*q_conv2d/Mean_8/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Mean_8�
q_conv2d/Mul_20Mulq_conv2d/mul_18:z:0q_conv2d/mul_18:z:0*
T0*&
_output_shapes
:2
q_conv2d/Mul_20�
!q_conv2d/Mean_9/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d/Mean_9/reduction_indices�
q_conv2d/Mean_9Meanq_conv2d/Mul_20:z:0*q_conv2d/Mean_9/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d/Mean_9k
q_conv2d/add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add_14/y�
q_conv2d/add_14AddV2q_conv2d/Mean_9:output:0q_conv2d/add_14/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_14�
q_conv2d/truediv_21RealDivq_conv2d/Mean_8:output:0q_conv2d/add_14:z:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_21k
q_conv2d/add_15/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d/add_15/y�
q_conv2d/add_15AddV2q_conv2d/truediv_21:z:0q_conv2d/add_15/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_15m
q_conv2d/Log_5Logq_conv2d/add_15:z:0*
T0*&
_output_shapes
:2
q_conv2d/Log_5s
q_conv2d/truediv_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d/truediv_22/y�
q_conv2d/truediv_22RealDivq_conv2d/Log_5:y:0q_conv2d/truediv_22/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_22w
q_conv2d/Round_5Roundq_conv2d/truediv_22:z:0*
T0*&
_output_shapes
:2
q_conv2d/Round_5i
q_conv2d/Pow_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d/Pow_6/x�
q_conv2d/Pow_6Powq_conv2d/Pow_6/x:output:0q_conv2d/Round_5:y:0*
T0*&
_output_shapes
:2
q_conv2d/Pow_6k
q_conv2d/mul_21/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2
q_conv2d/mul_21/y�
q_conv2d/mul_21Mulq_conv2d/Pow_6:z:0q_conv2d/mul_21/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/mul_21�
q_conv2d/mul_22Mulq_conv2d/Cast:y:0q_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d/mul_22�
q_conv2d/mul_23Mulq_conv2d/Cast:y:0q_conv2d/mul_18:z:0*
T0*&
_output_shapes
:2
q_conv2d/mul_23s
q_conv2d/truediv_23/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2
q_conv2d/truediv_23/y�
q_conv2d/truediv_23RealDivq_conv2d/mul_23:z:0q_conv2d/truediv_23/y:output:0*
T0*&
_output_shapes
:2
q_conv2d/truediv_23�
q_conv2d/mul_24Mulq_conv2d/mul_21:z:0q_conv2d/truediv_23:z:0*
T0*&
_output_shapes
:2
q_conv2d/mul_24i
q_conv2d/NegNegq_conv2d/mul_22:z:0*
T0*&
_output_shapes
:2
q_conv2d/Neg�
q_conv2d/add_16AddV2q_conv2d/Neg:y:0q_conv2d/mul_24:z:0*
T0*&
_output_shapes
:2
q_conv2d/add_16k
q_conv2d/mul_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d/mul_25/x�
q_conv2d/mul_25Mulq_conv2d/mul_25/x:output:0q_conv2d/add_16:z:0*
T0*&
_output_shapes
:2
q_conv2d/mul_25�
q_conv2d/StopGradientStopGradientq_conv2d/mul_25:z:0*
T0*&
_output_shapes
:2
q_conv2d/StopGradient�
q_conv2d/add_17AddV2q_conv2d/mul_22:z:0q_conv2d/StopGradient:output:0*
T0*&
_output_shapes
:2
q_conv2d/add_17�
q_conv2d/convolutionConv2D(batch_normalization/FusedBatchNormV3:y:0q_conv2d/add_17:z:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
q_conv2d/convolution�
q_conv2d/BiasAdd/ReadVariableOpReadVariableOp(q_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
q_conv2d/BiasAdd/ReadVariableOp�
q_conv2d/BiasAddBiasAddq_conv2d/convolution:output:0'q_conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
q_conv2d/BiasAddj
q_activation/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
q_activation/Pow/xj
q_activation/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :2
q_activation/Pow/y�
q_activation/PowPowq_activation/Pow/x:output:0q_activation/Pow/y:output:0*
T0*
_output_shapes
: 2
q_activation/Powt
q_activation/CastCastq_activation/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
q_activation/Castn
q_activation/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :2
q_activation/Pow_1/xn
q_activation/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
q_activation/Pow_1/y�
q_activation/Pow_1Powq_activation/Pow_1/x:output:0q_activation/Pow_1/y:output:0*
T0*
_output_shapes
: 2
q_activation/Pow_1z
q_activation/Cast_1Castq_activation/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
q_activation/Cast_1m
q_activation/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_activation/Constp
q_activation/Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B :2
q_activation/Cast_2/x�
q_activation/Cast_2Castq_activation/Cast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
q_activation/Cast_2m
q_activation/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �A2
q_activation/sub/y�
q_activation/subSubq_activation/Cast_2:y:0q_activation/sub/y:output:0*
T0*
_output_shapes
: 2
q_activation/sub�
q_activation/Pow_2Powq_activation/Const:output:0q_activation/sub:z:0*
T0*
_output_shapes
: 2
q_activation/Pow_2�
q_activation/sub_1Subq_activation/Cast_1:y:0q_activation/Pow_2:z:0*
T0*
_output_shapes
: 2
q_activation/sub_1�
q_activation/LessEqual	LessEqualq_conv2d/BiasAdd:output:0q_activation/sub_1:z:0*
T0*/
_output_shapes
:���������2
q_activation/LessEqual�
q_activation/ReluReluq_conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
q_activation/Relu�
q_activation/ones_like/ShapeShapeq_conv2d/BiasAdd:output:0*
T0*
_output_shapes
:2
q_activation/ones_like/Shape�
q_activation/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_activation/ones_like/Const�
q_activation/ones_likeFill%q_activation/ones_like/Shape:output:0%q_activation/ones_like/Const:output:0*
T0*/
_output_shapes
:���������2
q_activation/ones_like�
q_activation/sub_2Subq_activation/Cast_1:y:0q_activation/Pow_2:z:0*
T0*
_output_shapes
: 2
q_activation/sub_2�
q_activation/mulMulq_activation/ones_like:output:0q_activation/sub_2:z:0*
T0*/
_output_shapes
:���������2
q_activation/mul�
q_activation/SelectV2SelectV2q_activation/LessEqual:z:0q_activation/Relu:activations:0q_activation/mul:z:0*
T0*/
_output_shapes
:���������2
q_activation/SelectV2�
q_activation/mul_1Mulq_conv2d/BiasAdd:output:0q_activation/Cast:y:0*
T0*/
_output_shapes
:���������2
q_activation/mul_1�
q_activation/truedivRealDivq_activation/mul_1:z:0q_activation/Cast_1:y:0*
T0*/
_output_shapes
:���������2
q_activation/truediv
q_activation/NegNegq_activation/truediv:z:0*
T0*/
_output_shapes
:���������2
q_activation/Neg�
q_activation/RoundRoundq_activation/truediv:z:0*
T0*/
_output_shapes
:���������2
q_activation/Round�
q_activation/addAddV2q_activation/Neg:y:0q_activation/Round:y:0*
T0*/
_output_shapes
:���������2
q_activation/add�
q_activation/StopGradientStopGradientq_activation/add:z:0*
T0*/
_output_shapes
:���������2
q_activation/StopGradient�
q_activation/add_1AddV2q_activation/truediv:z:0"q_activation/StopGradient:output:0*
T0*/
_output_shapes
:���������2
q_activation/add_1�
q_activation/truediv_1RealDivq_activation/add_1:z:0q_activation/Cast:y:0*
T0*/
_output_shapes
:���������2
q_activation/truediv_1y
q_activation/truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_activation/truediv_2/x�
q_activation/truediv_2RealDiv!q_activation/truediv_2/x:output:0q_activation/Cast:y:0*
T0*
_output_shapes
: 2
q_activation/truediv_2q
q_activation/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_activation/sub_3/x�
q_activation/sub_3Subq_activation/sub_3/x:output:0q_activation/truediv_2:z:0*
T0*
_output_shapes
: 2
q_activation/sub_3�
"q_activation/clip_by_value/MinimumMinimumq_activation/truediv_1:z:0q_activation/sub_3:z:0*
T0*/
_output_shapes
:���������2$
"q_activation/clip_by_value/Minimum�
q_activation/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
q_activation/clip_by_value/y�
q_activation/clip_by_valueMaximum&q_activation/clip_by_value/Minimum:z:0%q_activation/clip_by_value/y:output:0*
T0*/
_output_shapes
:���������2
q_activation/clip_by_value�
q_activation/mul_2Mulq_activation/Cast_1:y:0q_activation/clip_by_value:z:0*
T0*/
_output_shapes
:���������2
q_activation/mul_2�
q_activation/Neg_1Negq_activation/SelectV2:output:0*
T0*/
_output_shapes
:���������2
q_activation/Neg_1�
q_activation/add_2AddV2q_activation/Neg_1:y:0q_activation/mul_2:z:0*
T0*/
_output_shapes
:���������2
q_activation/add_2q
q_activation/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_activation/mul_3/x�
q_activation/mul_3Mulq_activation/mul_3/x:output:0q_activation/add_2:z:0*
T0*/
_output_shapes
:���������2
q_activation/mul_3�
q_activation/StopGradient_1StopGradientq_activation/mul_3:z:0*
T0*/
_output_shapes
:���������2
q_activation/StopGradient_1�
q_activation/add_3AddV2q_activation/SelectV2:output:0$q_activation/StopGradient_1:output:0*
T0*/
_output_shapes
:���������2
q_activation/add_3f
q_conv2d_1/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
q_conv2d_1/Pow/xf
q_conv2d_1/Pow/yConst*
_output_shapes
: *
dtype0*
value	B : 2
q_conv2d_1/Pow/y~
q_conv2d_1/PowPowq_conv2d_1/Pow/x:output:0q_conv2d_1/Pow/y:output:0*
T0*
_output_shapes
: 2
q_conv2d_1/Pown
q_conv2d_1/CastCastq_conv2d_1/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
q_conv2d_1/Cast�
q_conv2d_1/ReadVariableOpReadVariableOp"q_conv2d_1_readvariableop_resource*&
_output_shapes
:*
dtype02
q_conv2d_1/ReadVariableOp�
q_conv2d_1/truedivRealDiv!q_conv2d_1/ReadVariableOp:value:0q_conv2d_1/Cast:y:0*
T0*&
_output_shapes
:2
q_conv2d_1/truedivp
q_conv2d_1/AbsAbsq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Abs�
 q_conv2d_1/Max/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 q_conv2d_1/Max/reduction_indices�
q_conv2d_1/MaxMaxq_conv2d_1/Abs:y:0)q_conv2d_1/Max/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Maxi
q_conv2d_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/mul/y�
q_conv2d_1/mulMulq_conv2d_1/Max:output:0q_conv2d_1/mul/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mulu
q_conv2d_1/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_1/truediv_1/y�
q_conv2d_1/truediv_1RealDivq_conv2d_1/mul:z:0q_conv2d_1/truediv_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_1i
q_conv2d_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add/y�
q_conv2d_1/addAddV2q_conv2d_1/truediv_1:z:0q_conv2d_1/add/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/addl
q_conv2d_1/LogLogq_conv2d_1/add:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Logu
q_conv2d_1/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_1/truediv_2/y�
q_conv2d_1/truediv_2RealDivq_conv2d_1/Log:y:0q_conv2d_1/truediv_2/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_2x
q_conv2d_1/RoundRoundq_conv2d_1/truediv_2:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Roundm
q_conv2d_1/Pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/Pow_1/x�
q_conv2d_1/Pow_1Powq_conv2d_1/Pow_1/x:output:0q_conv2d_1/Round:y:0*
T0*&
_output_shapes
:2
q_conv2d_1/Pow_1t
q_conv2d_1/Abs_1Absq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Abs_1�
q_conv2d_1/truediv_3RealDivq_conv2d_1/Abs_1:y:0q_conv2d_1/Pow_1:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_3m
q_conv2d_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d_1/add_1/y�
q_conv2d_1/add_1AddV2q_conv2d_1/truediv_3:z:0q_conv2d_1/add_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_1t
q_conv2d_1/FloorFloorq_conv2d_1/add_1:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Floork
q_conv2d_1/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d_1/Less/y�
q_conv2d_1/LessLessq_conv2d_1/Floor:y:0q_conv2d_1/Less/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/Lesss
q_conv2d_1/SignSignq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Sign�
q_conv2d_1/ones_like/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d_1/ones_like/Shape}
q_conv2d_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_1/ones_like/Const�
q_conv2d_1/ones_likeFill#q_conv2d_1/ones_like/Shape:output:0#q_conv2d_1/ones_like/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/ones_likem
q_conv2d_1/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_1/mul_1/y�
q_conv2d_1/mul_1Mulq_conv2d_1/ones_like:output:0q_conv2d_1/mul_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_1u
q_conv2d_1/truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/truediv_4/y�
q_conv2d_1/truediv_4RealDivq_conv2d_1/mul_1:z:0q_conv2d_1/truediv_4/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_4�
q_conv2d_1/SelectV2SelectV2q_conv2d_1/Less:z:0q_conv2d_1/Floor:y:0q_conv2d_1/truediv_4:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/SelectV2�
q_conv2d_1/mul_2Mulq_conv2d_1/Sign:y:0q_conv2d_1/SelectV2:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_2�
q_conv2d_1/Mul_3Mulq_conv2d_1/truediv:z:0q_conv2d_1/mul_2:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Mul_3�
!q_conv2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d_1/Mean/reduction_indices�
q_conv2d_1/MeanMeanq_conv2d_1/Mul_3:z:0*q_conv2d_1/Mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Mean�
q_conv2d_1/Mul_4Mulq_conv2d_1/mul_2:z:0q_conv2d_1/mul_2:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Mul_4�
#q_conv2d_1/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_1/Mean_1/reduction_indices�
q_conv2d_1/Mean_1Meanq_conv2d_1/Mul_4:z:0,q_conv2d_1/Mean_1/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Mean_1m
q_conv2d_1/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add_2/y�
q_conv2d_1/add_2AddV2q_conv2d_1/Mean_1:output:0q_conv2d_1/add_2/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_2�
q_conv2d_1/truediv_5RealDivq_conv2d_1/Mean:output:0q_conv2d_1/add_2:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_5m
q_conv2d_1/add_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add_3/y�
q_conv2d_1/add_3AddV2q_conv2d_1/truediv_5:z:0q_conv2d_1/add_3/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_3r
q_conv2d_1/Log_1Logq_conv2d_1/add_3:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Log_1u
q_conv2d_1/truediv_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_1/truediv_6/y�
q_conv2d_1/truediv_6RealDivq_conv2d_1/Log_1:y:0q_conv2d_1/truediv_6/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_6|
q_conv2d_1/Round_1Roundq_conv2d_1/truediv_6:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Round_1m
q_conv2d_1/Pow_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/Pow_2/x�
q_conv2d_1/Pow_2Powq_conv2d_1/Pow_2/x:output:0q_conv2d_1/Round_1:y:0*
T0*&
_output_shapes
:2
q_conv2d_1/Pow_2t
q_conv2d_1/Abs_2Absq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Abs_2�
q_conv2d_1/truediv_7RealDivq_conv2d_1/Abs_2:y:0q_conv2d_1/Pow_2:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_7m
q_conv2d_1/add_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d_1/add_4/y�
q_conv2d_1/add_4AddV2q_conv2d_1/truediv_7:z:0q_conv2d_1/add_4/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_4x
q_conv2d_1/Floor_1Floorq_conv2d_1/add_4:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Floor_1o
q_conv2d_1/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d_1/Less_1/y�
q_conv2d_1/Less_1Lessq_conv2d_1/Floor_1:y:0q_conv2d_1/Less_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/Less_1w
q_conv2d_1/Sign_1Signq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Sign_1�
q_conv2d_1/ones_like_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d_1/ones_like_1/Shape�
q_conv2d_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_1/ones_like_1/Const�
q_conv2d_1/ones_like_1Fill%q_conv2d_1/ones_like_1/Shape:output:0%q_conv2d_1/ones_like_1/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/ones_like_1m
q_conv2d_1/mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_1/mul_5/y�
q_conv2d_1/mul_5Mulq_conv2d_1/ones_like_1:output:0q_conv2d_1/mul_5/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_5u
q_conv2d_1/truediv_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/truediv_8/y�
q_conv2d_1/truediv_8RealDivq_conv2d_1/mul_5:z:0q_conv2d_1/truediv_8/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_8�
q_conv2d_1/SelectV2_1SelectV2q_conv2d_1/Less_1:z:0q_conv2d_1/Floor_1:y:0q_conv2d_1/truediv_8:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/SelectV2_1�
q_conv2d_1/mul_6Mulq_conv2d_1/Sign_1:y:0q_conv2d_1/SelectV2_1:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_6�
q_conv2d_1/Mul_7Mulq_conv2d_1/truediv:z:0q_conv2d_1/mul_6:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Mul_7�
#q_conv2d_1/Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_1/Mean_2/reduction_indices�
q_conv2d_1/Mean_2Meanq_conv2d_1/Mul_7:z:0,q_conv2d_1/Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Mean_2�
q_conv2d_1/Mul_8Mulq_conv2d_1/mul_6:z:0q_conv2d_1/mul_6:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Mul_8�
#q_conv2d_1/Mean_3/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_1/Mean_3/reduction_indices�
q_conv2d_1/Mean_3Meanq_conv2d_1/Mul_8:z:0,q_conv2d_1/Mean_3/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Mean_3m
q_conv2d_1/add_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add_5/y�
q_conv2d_1/add_5AddV2q_conv2d_1/Mean_3:output:0q_conv2d_1/add_5/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_5�
q_conv2d_1/truediv_9RealDivq_conv2d_1/Mean_2:output:0q_conv2d_1/add_5:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_9m
q_conv2d_1/add_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add_6/y�
q_conv2d_1/add_6AddV2q_conv2d_1/truediv_9:z:0q_conv2d_1/add_6/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_6r
q_conv2d_1/Log_2Logq_conv2d_1/add_6:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Log_2w
q_conv2d_1/truediv_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_1/truediv_10/y�
q_conv2d_1/truediv_10RealDivq_conv2d_1/Log_2:y:0 q_conv2d_1/truediv_10/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_10}
q_conv2d_1/Round_2Roundq_conv2d_1/truediv_10:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Round_2m
q_conv2d_1/Pow_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/Pow_3/x�
q_conv2d_1/Pow_3Powq_conv2d_1/Pow_3/x:output:0q_conv2d_1/Round_2:y:0*
T0*&
_output_shapes
:2
q_conv2d_1/Pow_3t
q_conv2d_1/Abs_3Absq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Abs_3�
q_conv2d_1/truediv_11RealDivq_conv2d_1/Abs_3:y:0q_conv2d_1/Pow_3:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_11m
q_conv2d_1/add_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d_1/add_7/y�
q_conv2d_1/add_7AddV2q_conv2d_1/truediv_11:z:0q_conv2d_1/add_7/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_7x
q_conv2d_1/Floor_2Floorq_conv2d_1/add_7:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Floor_2o
q_conv2d_1/Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d_1/Less_2/y�
q_conv2d_1/Less_2Lessq_conv2d_1/Floor_2:y:0q_conv2d_1/Less_2/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/Less_2w
q_conv2d_1/Sign_2Signq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Sign_2�
q_conv2d_1/ones_like_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d_1/ones_like_2/Shape�
q_conv2d_1/ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_1/ones_like_2/Const�
q_conv2d_1/ones_like_2Fill%q_conv2d_1/ones_like_2/Shape:output:0%q_conv2d_1/ones_like_2/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/ones_like_2m
q_conv2d_1/mul_9/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_1/mul_9/y�
q_conv2d_1/mul_9Mulq_conv2d_1/ones_like_2:output:0q_conv2d_1/mul_9/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_9w
q_conv2d_1/truediv_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/truediv_12/y�
q_conv2d_1/truediv_12RealDivq_conv2d_1/mul_9:z:0 q_conv2d_1/truediv_12/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_12�
q_conv2d_1/SelectV2_2SelectV2q_conv2d_1/Less_2:z:0q_conv2d_1/Floor_2:y:0q_conv2d_1/truediv_12:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/SelectV2_2�
q_conv2d_1/mul_10Mulq_conv2d_1/Sign_2:y:0q_conv2d_1/SelectV2_2:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_10�
q_conv2d_1/Mul_11Mulq_conv2d_1/truediv:z:0q_conv2d_1/mul_10:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Mul_11�
#q_conv2d_1/Mean_4/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_1/Mean_4/reduction_indices�
q_conv2d_1/Mean_4Meanq_conv2d_1/Mul_11:z:0,q_conv2d_1/Mean_4/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Mean_4�
q_conv2d_1/Mul_12Mulq_conv2d_1/mul_10:z:0q_conv2d_1/mul_10:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Mul_12�
#q_conv2d_1/Mean_5/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_1/Mean_5/reduction_indices�
q_conv2d_1/Mean_5Meanq_conv2d_1/Mul_12:z:0,q_conv2d_1/Mean_5/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Mean_5m
q_conv2d_1/add_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add_8/y�
q_conv2d_1/add_8AddV2q_conv2d_1/Mean_5:output:0q_conv2d_1/add_8/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_8�
q_conv2d_1/truediv_13RealDivq_conv2d_1/Mean_4:output:0q_conv2d_1/add_8:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_13m
q_conv2d_1/add_9/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add_9/y�
q_conv2d_1/add_9AddV2q_conv2d_1/truediv_13:z:0q_conv2d_1/add_9/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_9r
q_conv2d_1/Log_3Logq_conv2d_1/add_9:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Log_3w
q_conv2d_1/truediv_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_1/truediv_14/y�
q_conv2d_1/truediv_14RealDivq_conv2d_1/Log_3:y:0 q_conv2d_1/truediv_14/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_14}
q_conv2d_1/Round_3Roundq_conv2d_1/truediv_14:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Round_3m
q_conv2d_1/Pow_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/Pow_4/x�
q_conv2d_1/Pow_4Powq_conv2d_1/Pow_4/x:output:0q_conv2d_1/Round_3:y:0*
T0*&
_output_shapes
:2
q_conv2d_1/Pow_4t
q_conv2d_1/Abs_4Absq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Abs_4�
q_conv2d_1/truediv_15RealDivq_conv2d_1/Abs_4:y:0q_conv2d_1/Pow_4:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_15o
q_conv2d_1/add_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d_1/add_10/y�
q_conv2d_1/add_10AddV2q_conv2d_1/truediv_15:z:0q_conv2d_1/add_10/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_10y
q_conv2d_1/Floor_3Floorq_conv2d_1/add_10:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Floor_3o
q_conv2d_1/Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d_1/Less_3/y�
q_conv2d_1/Less_3Lessq_conv2d_1/Floor_3:y:0q_conv2d_1/Less_3/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/Less_3w
q_conv2d_1/Sign_3Signq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Sign_3�
q_conv2d_1/ones_like_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d_1/ones_like_3/Shape�
q_conv2d_1/ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_1/ones_like_3/Const�
q_conv2d_1/ones_like_3Fill%q_conv2d_1/ones_like_3/Shape:output:0%q_conv2d_1/ones_like_3/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/ones_like_3o
q_conv2d_1/mul_13/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_1/mul_13/y�
q_conv2d_1/mul_13Mulq_conv2d_1/ones_like_3:output:0q_conv2d_1/mul_13/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_13w
q_conv2d_1/truediv_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/truediv_16/y�
q_conv2d_1/truediv_16RealDivq_conv2d_1/mul_13:z:0 q_conv2d_1/truediv_16/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_16�
q_conv2d_1/SelectV2_3SelectV2q_conv2d_1/Less_3:z:0q_conv2d_1/Floor_3:y:0q_conv2d_1/truediv_16:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/SelectV2_3�
q_conv2d_1/mul_14Mulq_conv2d_1/Sign_3:y:0q_conv2d_1/SelectV2_3:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_14�
q_conv2d_1/Mul_15Mulq_conv2d_1/truediv:z:0q_conv2d_1/mul_14:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Mul_15�
#q_conv2d_1/Mean_6/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_1/Mean_6/reduction_indices�
q_conv2d_1/Mean_6Meanq_conv2d_1/Mul_15:z:0,q_conv2d_1/Mean_6/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Mean_6�
q_conv2d_1/Mul_16Mulq_conv2d_1/mul_14:z:0q_conv2d_1/mul_14:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Mul_16�
#q_conv2d_1/Mean_7/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_1/Mean_7/reduction_indices�
q_conv2d_1/Mean_7Meanq_conv2d_1/Mul_16:z:0,q_conv2d_1/Mean_7/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Mean_7o
q_conv2d_1/add_11/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add_11/y�
q_conv2d_1/add_11AddV2q_conv2d_1/Mean_7:output:0q_conv2d_1/add_11/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_11�
q_conv2d_1/truediv_17RealDivq_conv2d_1/Mean_6:output:0q_conv2d_1/add_11:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_17o
q_conv2d_1/add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add_12/y�
q_conv2d_1/add_12AddV2q_conv2d_1/truediv_17:z:0q_conv2d_1/add_12/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_12s
q_conv2d_1/Log_4Logq_conv2d_1/add_12:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Log_4w
q_conv2d_1/truediv_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_1/truediv_18/y�
q_conv2d_1/truediv_18RealDivq_conv2d_1/Log_4:y:0 q_conv2d_1/truediv_18/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_18}
q_conv2d_1/Round_4Roundq_conv2d_1/truediv_18:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Round_4m
q_conv2d_1/Pow_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/Pow_5/x�
q_conv2d_1/Pow_5Powq_conv2d_1/Pow_5/x:output:0q_conv2d_1/Round_4:y:0*
T0*&
_output_shapes
:2
q_conv2d_1/Pow_5t
q_conv2d_1/Abs_5Absq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Abs_5�
q_conv2d_1/truediv_19RealDivq_conv2d_1/Abs_5:y:0q_conv2d_1/Pow_5:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_19o
q_conv2d_1/add_13/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d_1/add_13/y�
q_conv2d_1/add_13AddV2q_conv2d_1/truediv_19:z:0q_conv2d_1/add_13/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_13y
q_conv2d_1/Floor_4Floorq_conv2d_1/add_13:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Floor_4o
q_conv2d_1/Less_4/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d_1/Less_4/y�
q_conv2d_1/Less_4Lessq_conv2d_1/Floor_4:y:0q_conv2d_1/Less_4/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/Less_4w
q_conv2d_1/Sign_4Signq_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Sign_4�
q_conv2d_1/ones_like_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d_1/ones_like_4/Shape�
q_conv2d_1/ones_like_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_1/ones_like_4/Const�
q_conv2d_1/ones_like_4Fill%q_conv2d_1/ones_like_4/Shape:output:0%q_conv2d_1/ones_like_4/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/ones_like_4o
q_conv2d_1/mul_17/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_1/mul_17/y�
q_conv2d_1/mul_17Mulq_conv2d_1/ones_like_4:output:0q_conv2d_1/mul_17/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_17w
q_conv2d_1/truediv_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/truediv_20/y�
q_conv2d_1/truediv_20RealDivq_conv2d_1/mul_17:z:0 q_conv2d_1/truediv_20/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_20�
q_conv2d_1/SelectV2_4SelectV2q_conv2d_1/Less_4:z:0q_conv2d_1/Floor_4:y:0q_conv2d_1/truediv_20:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/SelectV2_4�
q_conv2d_1/mul_18Mulq_conv2d_1/Sign_4:y:0q_conv2d_1/SelectV2_4:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_18�
q_conv2d_1/Mul_19Mulq_conv2d_1/truediv:z:0q_conv2d_1/mul_18:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Mul_19�
#q_conv2d_1/Mean_8/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_1/Mean_8/reduction_indices�
q_conv2d_1/Mean_8Meanq_conv2d_1/Mul_19:z:0,q_conv2d_1/Mean_8/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Mean_8�
q_conv2d_1/Mul_20Mulq_conv2d_1/mul_18:z:0q_conv2d_1/mul_18:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Mul_20�
#q_conv2d_1/Mean_9/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_1/Mean_9/reduction_indices�
q_conv2d_1/Mean_9Meanq_conv2d_1/Mul_20:z:0,q_conv2d_1/Mean_9/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_1/Mean_9o
q_conv2d_1/add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add_14/y�
q_conv2d_1/add_14AddV2q_conv2d_1/Mean_9:output:0q_conv2d_1/add_14/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_14�
q_conv2d_1/truediv_21RealDivq_conv2d_1/Mean_8:output:0q_conv2d_1/add_14:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_21o
q_conv2d_1/add_15/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_1/add_15/y�
q_conv2d_1/add_15AddV2q_conv2d_1/truediv_21:z:0q_conv2d_1/add_15/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_15s
q_conv2d_1/Log_5Logq_conv2d_1/add_15:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Log_5w
q_conv2d_1/truediv_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_1/truediv_22/y�
q_conv2d_1/truediv_22RealDivq_conv2d_1/Log_5:y:0 q_conv2d_1/truediv_22/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_22}
q_conv2d_1/Round_5Roundq_conv2d_1/truediv_22:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Round_5m
q_conv2d_1/Pow_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_1/Pow_6/x�
q_conv2d_1/Pow_6Powq_conv2d_1/Pow_6/x:output:0q_conv2d_1/Round_5:y:0*
T0*&
_output_shapes
:2
q_conv2d_1/Pow_6o
q_conv2d_1/mul_21/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2
q_conv2d_1/mul_21/y�
q_conv2d_1/mul_21Mulq_conv2d_1/Pow_6:z:0q_conv2d_1/mul_21/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_21�
q_conv2d_1/mul_22Mulq_conv2d_1/Cast:y:0q_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_22�
q_conv2d_1/mul_23Mulq_conv2d_1/Cast:y:0q_conv2d_1/mul_18:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_23w
q_conv2d_1/truediv_23/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2
q_conv2d_1/truediv_23/y�
q_conv2d_1/truediv_23RealDivq_conv2d_1/mul_23:z:0 q_conv2d_1/truediv_23/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/truediv_23�
q_conv2d_1/mul_24Mulq_conv2d_1/mul_21:z:0q_conv2d_1/truediv_23:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_24o
q_conv2d_1/NegNegq_conv2d_1/mul_22:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/Neg�
q_conv2d_1/add_16AddV2q_conv2d_1/Neg:y:0q_conv2d_1/mul_24:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_16o
q_conv2d_1/mul_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_1/mul_25/x�
q_conv2d_1/mul_25Mulq_conv2d_1/mul_25/x:output:0q_conv2d_1/add_16:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/mul_25�
q_conv2d_1/StopGradientStopGradientq_conv2d_1/mul_25:z:0*
T0*&
_output_shapes
:2
q_conv2d_1/StopGradient�
q_conv2d_1/add_17AddV2q_conv2d_1/mul_22:z:0 q_conv2d_1/StopGradient:output:0*
T0*&
_output_shapes
:2
q_conv2d_1/add_17�
q_conv2d_1/convolutionConv2Dq_activation/add_3:z:0q_conv2d_1/add_17:z:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
q_conv2d_1/convolution�
!q_conv2d_1/BiasAdd/ReadVariableOpReadVariableOp*q_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!q_conv2d_1/BiasAdd/ReadVariableOp�
q_conv2d_1/BiasAddBiasAddq_conv2d_1/convolution:output:0)q_conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
q_conv2d_1/BiasAddn
q_activation_1/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
q_activation_1/Pow/xn
q_activation_1/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :2
q_activation_1/Pow/y�
q_activation_1/PowPowq_activation_1/Pow/x:output:0q_activation_1/Pow/y:output:0*
T0*
_output_shapes
: 2
q_activation_1/Powz
q_activation_1/CastCastq_activation_1/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
q_activation_1/Castr
q_activation_1/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :2
q_activation_1/Pow_1/xr
q_activation_1/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
q_activation_1/Pow_1/y�
q_activation_1/Pow_1Powq_activation_1/Pow_1/x:output:0q_activation_1/Pow_1/y:output:0*
T0*
_output_shapes
: 2
q_activation_1/Pow_1�
q_activation_1/Cast_1Castq_activation_1/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
q_activation_1/Cast_1q
q_activation_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_activation_1/Constt
q_activation_1/Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B :2
q_activation_1/Cast_2/x�
q_activation_1/Cast_2Cast q_activation_1/Cast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
q_activation_1/Cast_2q
q_activation_1/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �A2
q_activation_1/sub/y�
q_activation_1/subSubq_activation_1/Cast_2:y:0q_activation_1/sub/y:output:0*
T0*
_output_shapes
: 2
q_activation_1/sub�
q_activation_1/Pow_2Powq_activation_1/Const:output:0q_activation_1/sub:z:0*
T0*
_output_shapes
: 2
q_activation_1/Pow_2�
q_activation_1/sub_1Subq_activation_1/Cast_1:y:0q_activation_1/Pow_2:z:0*
T0*
_output_shapes
: 2
q_activation_1/sub_1�
q_activation_1/LessEqual	LessEqualq_conv2d_1/BiasAdd:output:0q_activation_1/sub_1:z:0*
T0*/
_output_shapes
:���������2
q_activation_1/LessEqual�
q_activation_1/ReluReluq_conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
q_activation_1/Relu�
q_activation_1/ones_like/ShapeShapeq_conv2d_1/BiasAdd:output:0*
T0*
_output_shapes
:2 
q_activation_1/ones_like/Shape�
q_activation_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2 
q_activation_1/ones_like/Const�
q_activation_1/ones_likeFill'q_activation_1/ones_like/Shape:output:0'q_activation_1/ones_like/Const:output:0*
T0*/
_output_shapes
:���������2
q_activation_1/ones_like�
q_activation_1/sub_2Subq_activation_1/Cast_1:y:0q_activation_1/Pow_2:z:0*
T0*
_output_shapes
: 2
q_activation_1/sub_2�
q_activation_1/mulMul!q_activation_1/ones_like:output:0q_activation_1/sub_2:z:0*
T0*/
_output_shapes
:���������2
q_activation_1/mul�
q_activation_1/SelectV2SelectV2q_activation_1/LessEqual:z:0!q_activation_1/Relu:activations:0q_activation_1/mul:z:0*
T0*/
_output_shapes
:���������2
q_activation_1/SelectV2�
q_activation_1/mul_1Mulq_conv2d_1/BiasAdd:output:0q_activation_1/Cast:y:0*
T0*/
_output_shapes
:���������2
q_activation_1/mul_1�
q_activation_1/truedivRealDivq_activation_1/mul_1:z:0q_activation_1/Cast_1:y:0*
T0*/
_output_shapes
:���������2
q_activation_1/truediv�
q_activation_1/NegNegq_activation_1/truediv:z:0*
T0*/
_output_shapes
:���������2
q_activation_1/Neg�
q_activation_1/RoundRoundq_activation_1/truediv:z:0*
T0*/
_output_shapes
:���������2
q_activation_1/Round�
q_activation_1/addAddV2q_activation_1/Neg:y:0q_activation_1/Round:y:0*
T0*/
_output_shapes
:���������2
q_activation_1/add�
q_activation_1/StopGradientStopGradientq_activation_1/add:z:0*
T0*/
_output_shapes
:���������2
q_activation_1/StopGradient�
q_activation_1/add_1AddV2q_activation_1/truediv:z:0$q_activation_1/StopGradient:output:0*
T0*/
_output_shapes
:���������2
q_activation_1/add_1�
q_activation_1/truediv_1RealDivq_activation_1/add_1:z:0q_activation_1/Cast:y:0*
T0*/
_output_shapes
:���������2
q_activation_1/truediv_1}
q_activation_1/truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_activation_1/truediv_2/x�
q_activation_1/truediv_2RealDiv#q_activation_1/truediv_2/x:output:0q_activation_1/Cast:y:0*
T0*
_output_shapes
: 2
q_activation_1/truediv_2u
q_activation_1/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_activation_1/sub_3/x�
q_activation_1/sub_3Subq_activation_1/sub_3/x:output:0q_activation_1/truediv_2:z:0*
T0*
_output_shapes
: 2
q_activation_1/sub_3�
$q_activation_1/clip_by_value/MinimumMinimumq_activation_1/truediv_1:z:0q_activation_1/sub_3:z:0*
T0*/
_output_shapes
:���������2&
$q_activation_1/clip_by_value/Minimum�
q_activation_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
q_activation_1/clip_by_value/y�
q_activation_1/clip_by_valueMaximum(q_activation_1/clip_by_value/Minimum:z:0'q_activation_1/clip_by_value/y:output:0*
T0*/
_output_shapes
:���������2
q_activation_1/clip_by_value�
q_activation_1/mul_2Mulq_activation_1/Cast_1:y:0 q_activation_1/clip_by_value:z:0*
T0*/
_output_shapes
:���������2
q_activation_1/mul_2�
q_activation_1/Neg_1Neg q_activation_1/SelectV2:output:0*
T0*/
_output_shapes
:���������2
q_activation_1/Neg_1�
q_activation_1/add_2AddV2q_activation_1/Neg_1:y:0q_activation_1/mul_2:z:0*
T0*/
_output_shapes
:���������2
q_activation_1/add_2u
q_activation_1/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_activation_1/mul_3/x�
q_activation_1/mul_3Mulq_activation_1/mul_3/x:output:0q_activation_1/add_2:z:0*
T0*/
_output_shapes
:���������2
q_activation_1/mul_3�
q_activation_1/StopGradient_1StopGradientq_activation_1/mul_3:z:0*
T0*/
_output_shapes
:���������2
q_activation_1/StopGradient_1�
q_activation_1/add_3AddV2 q_activation_1/SelectV2:output:0&q_activation_1/StopGradient_1:output:0*
T0*/
_output_shapes
:���������2
q_activation_1/add_3f
q_conv2d_2/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
q_conv2d_2/Pow/xf
q_conv2d_2/Pow/yConst*
_output_shapes
: *
dtype0*
value	B : 2
q_conv2d_2/Pow/y~
q_conv2d_2/PowPowq_conv2d_2/Pow/x:output:0q_conv2d_2/Pow/y:output:0*
T0*
_output_shapes
: 2
q_conv2d_2/Pown
q_conv2d_2/CastCastq_conv2d_2/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
q_conv2d_2/Cast�
q_conv2d_2/ReadVariableOpReadVariableOp"q_conv2d_2_readvariableop_resource*&
_output_shapes
:*
dtype02
q_conv2d_2/ReadVariableOp�
q_conv2d_2/truedivRealDiv!q_conv2d_2/ReadVariableOp:value:0q_conv2d_2/Cast:y:0*
T0*&
_output_shapes
:2
q_conv2d_2/truedivp
q_conv2d_2/AbsAbsq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Abs�
 q_conv2d_2/Max/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 q_conv2d_2/Max/reduction_indices�
q_conv2d_2/MaxMaxq_conv2d_2/Abs:y:0)q_conv2d_2/Max/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Maxi
q_conv2d_2/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/mul/y�
q_conv2d_2/mulMulq_conv2d_2/Max:output:0q_conv2d_2/mul/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mulu
q_conv2d_2/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_2/truediv_1/y�
q_conv2d_2/truediv_1RealDivq_conv2d_2/mul:z:0q_conv2d_2/truediv_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_1i
q_conv2d_2/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add/y�
q_conv2d_2/addAddV2q_conv2d_2/truediv_1:z:0q_conv2d_2/add/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/addl
q_conv2d_2/LogLogq_conv2d_2/add:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Logu
q_conv2d_2/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_2/truediv_2/y�
q_conv2d_2/truediv_2RealDivq_conv2d_2/Log:y:0q_conv2d_2/truediv_2/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_2x
q_conv2d_2/RoundRoundq_conv2d_2/truediv_2:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Roundm
q_conv2d_2/Pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/Pow_1/x�
q_conv2d_2/Pow_1Powq_conv2d_2/Pow_1/x:output:0q_conv2d_2/Round:y:0*
T0*&
_output_shapes
:2
q_conv2d_2/Pow_1t
q_conv2d_2/Abs_1Absq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Abs_1�
q_conv2d_2/truediv_3RealDivq_conv2d_2/Abs_1:y:0q_conv2d_2/Pow_1:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_3m
q_conv2d_2/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d_2/add_1/y�
q_conv2d_2/add_1AddV2q_conv2d_2/truediv_3:z:0q_conv2d_2/add_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_1t
q_conv2d_2/FloorFloorq_conv2d_2/add_1:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Floork
q_conv2d_2/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d_2/Less/y�
q_conv2d_2/LessLessq_conv2d_2/Floor:y:0q_conv2d_2/Less/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/Lesss
q_conv2d_2/SignSignq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Sign�
q_conv2d_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d_2/ones_like/Shape}
q_conv2d_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_2/ones_like/Const�
q_conv2d_2/ones_likeFill#q_conv2d_2/ones_like/Shape:output:0#q_conv2d_2/ones_like/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/ones_likem
q_conv2d_2/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_2/mul_1/y�
q_conv2d_2/mul_1Mulq_conv2d_2/ones_like:output:0q_conv2d_2/mul_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_1u
q_conv2d_2/truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/truediv_4/y�
q_conv2d_2/truediv_4RealDivq_conv2d_2/mul_1:z:0q_conv2d_2/truediv_4/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_4�
q_conv2d_2/SelectV2SelectV2q_conv2d_2/Less:z:0q_conv2d_2/Floor:y:0q_conv2d_2/truediv_4:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/SelectV2�
q_conv2d_2/mul_2Mulq_conv2d_2/Sign:y:0q_conv2d_2/SelectV2:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_2�
q_conv2d_2/Mul_3Mulq_conv2d_2/truediv:z:0q_conv2d_2/mul_2:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Mul_3�
!q_conv2d_2/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!q_conv2d_2/Mean/reduction_indices�
q_conv2d_2/MeanMeanq_conv2d_2/Mul_3:z:0*q_conv2d_2/Mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Mean�
q_conv2d_2/Mul_4Mulq_conv2d_2/mul_2:z:0q_conv2d_2/mul_2:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Mul_4�
#q_conv2d_2/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_2/Mean_1/reduction_indices�
q_conv2d_2/Mean_1Meanq_conv2d_2/Mul_4:z:0,q_conv2d_2/Mean_1/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Mean_1m
q_conv2d_2/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add_2/y�
q_conv2d_2/add_2AddV2q_conv2d_2/Mean_1:output:0q_conv2d_2/add_2/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_2�
q_conv2d_2/truediv_5RealDivq_conv2d_2/Mean:output:0q_conv2d_2/add_2:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_5m
q_conv2d_2/add_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add_3/y�
q_conv2d_2/add_3AddV2q_conv2d_2/truediv_5:z:0q_conv2d_2/add_3/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_3r
q_conv2d_2/Log_1Logq_conv2d_2/add_3:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Log_1u
q_conv2d_2/truediv_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_2/truediv_6/y�
q_conv2d_2/truediv_6RealDivq_conv2d_2/Log_1:y:0q_conv2d_2/truediv_6/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_6|
q_conv2d_2/Round_1Roundq_conv2d_2/truediv_6:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Round_1m
q_conv2d_2/Pow_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/Pow_2/x�
q_conv2d_2/Pow_2Powq_conv2d_2/Pow_2/x:output:0q_conv2d_2/Round_1:y:0*
T0*&
_output_shapes
:2
q_conv2d_2/Pow_2t
q_conv2d_2/Abs_2Absq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Abs_2�
q_conv2d_2/truediv_7RealDivq_conv2d_2/Abs_2:y:0q_conv2d_2/Pow_2:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_7m
q_conv2d_2/add_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d_2/add_4/y�
q_conv2d_2/add_4AddV2q_conv2d_2/truediv_7:z:0q_conv2d_2/add_4/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_4x
q_conv2d_2/Floor_1Floorq_conv2d_2/add_4:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Floor_1o
q_conv2d_2/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d_2/Less_1/y�
q_conv2d_2/Less_1Lessq_conv2d_2/Floor_1:y:0q_conv2d_2/Less_1/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/Less_1w
q_conv2d_2/Sign_1Signq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Sign_1�
q_conv2d_2/ones_like_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d_2/ones_like_1/Shape�
q_conv2d_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_2/ones_like_1/Const�
q_conv2d_2/ones_like_1Fill%q_conv2d_2/ones_like_1/Shape:output:0%q_conv2d_2/ones_like_1/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/ones_like_1m
q_conv2d_2/mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_2/mul_5/y�
q_conv2d_2/mul_5Mulq_conv2d_2/ones_like_1:output:0q_conv2d_2/mul_5/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_5u
q_conv2d_2/truediv_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/truediv_8/y�
q_conv2d_2/truediv_8RealDivq_conv2d_2/mul_5:z:0q_conv2d_2/truediv_8/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_8�
q_conv2d_2/SelectV2_1SelectV2q_conv2d_2/Less_1:z:0q_conv2d_2/Floor_1:y:0q_conv2d_2/truediv_8:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/SelectV2_1�
q_conv2d_2/mul_6Mulq_conv2d_2/Sign_1:y:0q_conv2d_2/SelectV2_1:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_6�
q_conv2d_2/Mul_7Mulq_conv2d_2/truediv:z:0q_conv2d_2/mul_6:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Mul_7�
#q_conv2d_2/Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_2/Mean_2/reduction_indices�
q_conv2d_2/Mean_2Meanq_conv2d_2/Mul_7:z:0,q_conv2d_2/Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Mean_2�
q_conv2d_2/Mul_8Mulq_conv2d_2/mul_6:z:0q_conv2d_2/mul_6:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Mul_8�
#q_conv2d_2/Mean_3/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_2/Mean_3/reduction_indices�
q_conv2d_2/Mean_3Meanq_conv2d_2/Mul_8:z:0,q_conv2d_2/Mean_3/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Mean_3m
q_conv2d_2/add_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add_5/y�
q_conv2d_2/add_5AddV2q_conv2d_2/Mean_3:output:0q_conv2d_2/add_5/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_5�
q_conv2d_2/truediv_9RealDivq_conv2d_2/Mean_2:output:0q_conv2d_2/add_5:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_9m
q_conv2d_2/add_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add_6/y�
q_conv2d_2/add_6AddV2q_conv2d_2/truediv_9:z:0q_conv2d_2/add_6/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_6r
q_conv2d_2/Log_2Logq_conv2d_2/add_6:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Log_2w
q_conv2d_2/truediv_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_2/truediv_10/y�
q_conv2d_2/truediv_10RealDivq_conv2d_2/Log_2:y:0 q_conv2d_2/truediv_10/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_10}
q_conv2d_2/Round_2Roundq_conv2d_2/truediv_10:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Round_2m
q_conv2d_2/Pow_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/Pow_3/x�
q_conv2d_2/Pow_3Powq_conv2d_2/Pow_3/x:output:0q_conv2d_2/Round_2:y:0*
T0*&
_output_shapes
:2
q_conv2d_2/Pow_3t
q_conv2d_2/Abs_3Absq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Abs_3�
q_conv2d_2/truediv_11RealDivq_conv2d_2/Abs_3:y:0q_conv2d_2/Pow_3:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_11m
q_conv2d_2/add_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d_2/add_7/y�
q_conv2d_2/add_7AddV2q_conv2d_2/truediv_11:z:0q_conv2d_2/add_7/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_7x
q_conv2d_2/Floor_2Floorq_conv2d_2/add_7:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Floor_2o
q_conv2d_2/Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d_2/Less_2/y�
q_conv2d_2/Less_2Lessq_conv2d_2/Floor_2:y:0q_conv2d_2/Less_2/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/Less_2w
q_conv2d_2/Sign_2Signq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Sign_2�
q_conv2d_2/ones_like_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d_2/ones_like_2/Shape�
q_conv2d_2/ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_2/ones_like_2/Const�
q_conv2d_2/ones_like_2Fill%q_conv2d_2/ones_like_2/Shape:output:0%q_conv2d_2/ones_like_2/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/ones_like_2m
q_conv2d_2/mul_9/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_2/mul_9/y�
q_conv2d_2/mul_9Mulq_conv2d_2/ones_like_2:output:0q_conv2d_2/mul_9/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_9w
q_conv2d_2/truediv_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/truediv_12/y�
q_conv2d_2/truediv_12RealDivq_conv2d_2/mul_9:z:0 q_conv2d_2/truediv_12/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_12�
q_conv2d_2/SelectV2_2SelectV2q_conv2d_2/Less_2:z:0q_conv2d_2/Floor_2:y:0q_conv2d_2/truediv_12:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/SelectV2_2�
q_conv2d_2/mul_10Mulq_conv2d_2/Sign_2:y:0q_conv2d_2/SelectV2_2:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_10�
q_conv2d_2/Mul_11Mulq_conv2d_2/truediv:z:0q_conv2d_2/mul_10:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Mul_11�
#q_conv2d_2/Mean_4/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_2/Mean_4/reduction_indices�
q_conv2d_2/Mean_4Meanq_conv2d_2/Mul_11:z:0,q_conv2d_2/Mean_4/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Mean_4�
q_conv2d_2/Mul_12Mulq_conv2d_2/mul_10:z:0q_conv2d_2/mul_10:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Mul_12�
#q_conv2d_2/Mean_5/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_2/Mean_5/reduction_indices�
q_conv2d_2/Mean_5Meanq_conv2d_2/Mul_12:z:0,q_conv2d_2/Mean_5/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Mean_5m
q_conv2d_2/add_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add_8/y�
q_conv2d_2/add_8AddV2q_conv2d_2/Mean_5:output:0q_conv2d_2/add_8/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_8�
q_conv2d_2/truediv_13RealDivq_conv2d_2/Mean_4:output:0q_conv2d_2/add_8:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_13m
q_conv2d_2/add_9/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add_9/y�
q_conv2d_2/add_9AddV2q_conv2d_2/truediv_13:z:0q_conv2d_2/add_9/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_9r
q_conv2d_2/Log_3Logq_conv2d_2/add_9:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Log_3w
q_conv2d_2/truediv_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_2/truediv_14/y�
q_conv2d_2/truediv_14RealDivq_conv2d_2/Log_3:y:0 q_conv2d_2/truediv_14/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_14}
q_conv2d_2/Round_3Roundq_conv2d_2/truediv_14:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Round_3m
q_conv2d_2/Pow_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/Pow_4/x�
q_conv2d_2/Pow_4Powq_conv2d_2/Pow_4/x:output:0q_conv2d_2/Round_3:y:0*
T0*&
_output_shapes
:2
q_conv2d_2/Pow_4t
q_conv2d_2/Abs_4Absq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Abs_4�
q_conv2d_2/truediv_15RealDivq_conv2d_2/Abs_4:y:0q_conv2d_2/Pow_4:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_15o
q_conv2d_2/add_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d_2/add_10/y�
q_conv2d_2/add_10AddV2q_conv2d_2/truediv_15:z:0q_conv2d_2/add_10/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_10y
q_conv2d_2/Floor_3Floorq_conv2d_2/add_10:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Floor_3o
q_conv2d_2/Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d_2/Less_3/y�
q_conv2d_2/Less_3Lessq_conv2d_2/Floor_3:y:0q_conv2d_2/Less_3/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/Less_3w
q_conv2d_2/Sign_3Signq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Sign_3�
q_conv2d_2/ones_like_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d_2/ones_like_3/Shape�
q_conv2d_2/ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_2/ones_like_3/Const�
q_conv2d_2/ones_like_3Fill%q_conv2d_2/ones_like_3/Shape:output:0%q_conv2d_2/ones_like_3/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/ones_like_3o
q_conv2d_2/mul_13/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_2/mul_13/y�
q_conv2d_2/mul_13Mulq_conv2d_2/ones_like_3:output:0q_conv2d_2/mul_13/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_13w
q_conv2d_2/truediv_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/truediv_16/y�
q_conv2d_2/truediv_16RealDivq_conv2d_2/mul_13:z:0 q_conv2d_2/truediv_16/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_16�
q_conv2d_2/SelectV2_3SelectV2q_conv2d_2/Less_3:z:0q_conv2d_2/Floor_3:y:0q_conv2d_2/truediv_16:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/SelectV2_3�
q_conv2d_2/mul_14Mulq_conv2d_2/Sign_3:y:0q_conv2d_2/SelectV2_3:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_14�
q_conv2d_2/Mul_15Mulq_conv2d_2/truediv:z:0q_conv2d_2/mul_14:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Mul_15�
#q_conv2d_2/Mean_6/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_2/Mean_6/reduction_indices�
q_conv2d_2/Mean_6Meanq_conv2d_2/Mul_15:z:0,q_conv2d_2/Mean_6/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Mean_6�
q_conv2d_2/Mul_16Mulq_conv2d_2/mul_14:z:0q_conv2d_2/mul_14:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Mul_16�
#q_conv2d_2/Mean_7/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_2/Mean_7/reduction_indices�
q_conv2d_2/Mean_7Meanq_conv2d_2/Mul_16:z:0,q_conv2d_2/Mean_7/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Mean_7o
q_conv2d_2/add_11/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add_11/y�
q_conv2d_2/add_11AddV2q_conv2d_2/Mean_7:output:0q_conv2d_2/add_11/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_11�
q_conv2d_2/truediv_17RealDivq_conv2d_2/Mean_6:output:0q_conv2d_2/add_11:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_17o
q_conv2d_2/add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add_12/y�
q_conv2d_2/add_12AddV2q_conv2d_2/truediv_17:z:0q_conv2d_2/add_12/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_12s
q_conv2d_2/Log_4Logq_conv2d_2/add_12:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Log_4w
q_conv2d_2/truediv_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_2/truediv_18/y�
q_conv2d_2/truediv_18RealDivq_conv2d_2/Log_4:y:0 q_conv2d_2/truediv_18/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_18}
q_conv2d_2/Round_4Roundq_conv2d_2/truediv_18:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Round_4m
q_conv2d_2/Pow_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/Pow_5/x�
q_conv2d_2/Pow_5Powq_conv2d_2/Pow_5/x:output:0q_conv2d_2/Round_4:y:0*
T0*&
_output_shapes
:2
q_conv2d_2/Pow_5t
q_conv2d_2/Abs_5Absq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Abs_5�
q_conv2d_2/truediv_19RealDivq_conv2d_2/Abs_5:y:0q_conv2d_2/Pow_5:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_19o
q_conv2d_2/add_13/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
q_conv2d_2/add_13/y�
q_conv2d_2/add_13AddV2q_conv2d_2/truediv_19:z:0q_conv2d_2/add_13/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_13y
q_conv2d_2/Floor_4Floorq_conv2d_2/add_13:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Floor_4o
q_conv2d_2/Less_4/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
q_conv2d_2/Less_4/y�
q_conv2d_2/Less_4Lessq_conv2d_2/Floor_4:y:0q_conv2d_2/Less_4/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/Less_4w
q_conv2d_2/Sign_4Signq_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Sign_4�
q_conv2d_2/ones_like_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
q_conv2d_2/ones_like_4/Shape�
q_conv2d_2/ones_like_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_2/ones_like_4/Const�
q_conv2d_2/ones_like_4Fill%q_conv2d_2/ones_like_4/Shape:output:0%q_conv2d_2/ones_like_4/Const:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/ones_like_4o
q_conv2d_2/mul_17/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
q_conv2d_2/mul_17/y�
q_conv2d_2/mul_17Mulq_conv2d_2/ones_like_4:output:0q_conv2d_2/mul_17/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_17w
q_conv2d_2/truediv_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/truediv_20/y�
q_conv2d_2/truediv_20RealDivq_conv2d_2/mul_17:z:0 q_conv2d_2/truediv_20/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_20�
q_conv2d_2/SelectV2_4SelectV2q_conv2d_2/Less_4:z:0q_conv2d_2/Floor_4:y:0q_conv2d_2/truediv_20:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/SelectV2_4�
q_conv2d_2/mul_18Mulq_conv2d_2/Sign_4:y:0q_conv2d_2/SelectV2_4:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_18�
q_conv2d_2/Mul_19Mulq_conv2d_2/truediv:z:0q_conv2d_2/mul_18:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Mul_19�
#q_conv2d_2/Mean_8/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_2/Mean_8/reduction_indices�
q_conv2d_2/Mean_8Meanq_conv2d_2/Mul_19:z:0,q_conv2d_2/Mean_8/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Mean_8�
q_conv2d_2/Mul_20Mulq_conv2d_2/mul_18:z:0q_conv2d_2/mul_18:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Mul_20�
#q_conv2d_2/Mean_9/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#q_conv2d_2/Mean_9/reduction_indices�
q_conv2d_2/Mean_9Meanq_conv2d_2/Mul_20:z:0,q_conv2d_2/Mean_9/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
q_conv2d_2/Mean_9o
q_conv2d_2/add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add_14/y�
q_conv2d_2/add_14AddV2q_conv2d_2/Mean_9:output:0q_conv2d_2/add_14/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_14�
q_conv2d_2/truediv_21RealDivq_conv2d_2/Mean_8:output:0q_conv2d_2/add_14:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_21o
q_conv2d_2/add_15/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
q_conv2d_2/add_15/y�
q_conv2d_2/add_15AddV2q_conv2d_2/truediv_21:z:0q_conv2d_2/add_15/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_15s
q_conv2d_2/Log_5Logq_conv2d_2/add_15:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Log_5w
q_conv2d_2/truediv_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
q_conv2d_2/truediv_22/y�
q_conv2d_2/truediv_22RealDivq_conv2d_2/Log_5:y:0 q_conv2d_2/truediv_22/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_22}
q_conv2d_2/Round_5Roundq_conv2d_2/truediv_22:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Round_5m
q_conv2d_2/Pow_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
q_conv2d_2/Pow_6/x�
q_conv2d_2/Pow_6Powq_conv2d_2/Pow_6/x:output:0q_conv2d_2/Round_5:y:0*
T0*&
_output_shapes
:2
q_conv2d_2/Pow_6o
q_conv2d_2/mul_21/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2
q_conv2d_2/mul_21/y�
q_conv2d_2/mul_21Mulq_conv2d_2/Pow_6:z:0q_conv2d_2/mul_21/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_21�
q_conv2d_2/mul_22Mulq_conv2d_2/Cast:y:0q_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_22�
q_conv2d_2/mul_23Mulq_conv2d_2/Cast:y:0q_conv2d_2/mul_18:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_23w
q_conv2d_2/truediv_23/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2
q_conv2d_2/truediv_23/y�
q_conv2d_2/truediv_23RealDivq_conv2d_2/mul_23:z:0 q_conv2d_2/truediv_23/y:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/truediv_23�
q_conv2d_2/mul_24Mulq_conv2d_2/mul_21:z:0q_conv2d_2/truediv_23:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_24o
q_conv2d_2/NegNegq_conv2d_2/mul_22:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/Neg�
q_conv2d_2/add_16AddV2q_conv2d_2/Neg:y:0q_conv2d_2/mul_24:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_16o
q_conv2d_2/mul_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
q_conv2d_2/mul_25/x�
q_conv2d_2/mul_25Mulq_conv2d_2/mul_25/x:output:0q_conv2d_2/add_16:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/mul_25�
q_conv2d_2/StopGradientStopGradientq_conv2d_2/mul_25:z:0*
T0*&
_output_shapes
:2
q_conv2d_2/StopGradient�
q_conv2d_2/add_17AddV2q_conv2d_2/mul_22:z:0 q_conv2d_2/StopGradient:output:0*
T0*&
_output_shapes
:2
q_conv2d_2/add_17�
q_conv2d_2/convolutionConv2Dq_activation_1/add_3:z:0q_conv2d_2/add_17:z:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
q_conv2d_2/convolution�
!q_conv2d_2/BiasAdd/ReadVariableOpReadVariableOp*q_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!q_conv2d_2/BiasAdd/ReadVariableOp�
q_conv2d_2/BiasAddBiasAddq_conv2d_2/convolution:output:0)q_conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
q_conv2d_2/BiasAdd�
activation/SigmoidSigmoidq_conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
activation/Sigmoidy
IdentityIdentityactivation/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp#^batch_normalization/AssignNewValue%^batch_normalization/AssignNewValue_14^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1 ^q_conv2d/BiasAdd/ReadVariableOp^q_conv2d/ReadVariableOp"^q_conv2d_1/BiasAdd/ReadVariableOp^q_conv2d_1/ReadVariableOp"^q_conv2d_2/BiasAdd/ReadVariableOp^q_conv2d_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 2H
"batch_normalization/AssignNewValue"batch_normalization/AssignNewValue2L
$batch_normalization/AssignNewValue_1$batch_normalization/AssignNewValue_12j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12B
q_conv2d/BiasAdd/ReadVariableOpq_conv2d/BiasAdd/ReadVariableOp22
q_conv2d/ReadVariableOpq_conv2d/ReadVariableOp2F
!q_conv2d_1/BiasAdd/ReadVariableOp!q_conv2d_1/BiasAdd/ReadVariableOp26
q_conv2d_1/ReadVariableOpq_conv2d_1/ReadVariableOp2F
!q_conv2d_2/BiasAdd/ReadVariableOp!q_conv2d_2/BiasAdd/ReadVariableOp26
q_conv2d_2/ReadVariableOpq_conv2d_2/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_q_conv2d_1_layer_call_fn_3135388

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_q_conv2d_1_layer_call_and_return_conditional_losses_31328572
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3135049

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������2

Identity�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
H
,__inference_activation_layer_call_fn_3135882

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_31331382
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
��
�

"__inference__wrapped_model_3132214
input_1D
6sequential_batch_normalization_readvariableop_resource:F
8sequential_batch_normalization_readvariableop_1_resource:U
Gsequential_batch_normalization_fusedbatchnormv3_readvariableop_resource:W
Isequential_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:E
+sequential_q_conv2d_readvariableop_resource:A
3sequential_q_conv2d_biasadd_readvariableop_resource:G
-sequential_q_conv2d_1_readvariableop_resource:C
5sequential_q_conv2d_1_biasadd_readvariableop_resource:G
-sequential_q_conv2d_2_readvariableop_resource:C
5sequential_q_conv2d_2_biasadd_readvariableop_resource:
identity��>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp�@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�-sequential/batch_normalization/ReadVariableOp�/sequential/batch_normalization/ReadVariableOp_1�*sequential/q_conv2d/BiasAdd/ReadVariableOp�"sequential/q_conv2d/ReadVariableOp�,sequential/q_conv2d_1/BiasAdd/ReadVariableOp�$sequential/q_conv2d_1/ReadVariableOp�,sequential/q_conv2d_2/BiasAdd/ReadVariableOp�$sequential/q_conv2d_2/ReadVariableOp�
-sequential/batch_normalization/ReadVariableOpReadVariableOp6sequential_batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential/batch_normalization/ReadVariableOp�
/sequential/batch_normalization/ReadVariableOp_1ReadVariableOp8sequential_batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype021
/sequential/batch_normalization/ReadVariableOp_1�
>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpGsequential_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02@
>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp�
@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpIsequential_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02B
@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�
/sequential/batch_normalization/FusedBatchNormV3FusedBatchNormV3input_15sequential/batch_normalization/ReadVariableOp:value:07sequential/batch_normalization/ReadVariableOp_1:value:0Fsequential/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Hsequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 21
/sequential/batch_normalization/FusedBatchNormV3x
sequential/q_conv2d/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
sequential/q_conv2d/Pow/xx
sequential/q_conv2d/Pow/yConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/q_conv2d/Pow/y�
sequential/q_conv2d/PowPow"sequential/q_conv2d/Pow/x:output:0"sequential/q_conv2d/Pow/y:output:0*
T0*
_output_shapes
: 2
sequential/q_conv2d/Pow�
sequential/q_conv2d/CastCastsequential/q_conv2d/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
sequential/q_conv2d/Cast�
"sequential/q_conv2d/ReadVariableOpReadVariableOp+sequential_q_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02$
"sequential/q_conv2d/ReadVariableOp�
sequential/q_conv2d/truedivRealDiv*sequential/q_conv2d/ReadVariableOp:value:0sequential/q_conv2d/Cast:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/truediv�
sequential/q_conv2d/AbsAbssequential/q_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Abs�
)sequential/q_conv2d/Max/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)sequential/q_conv2d/Max/reduction_indices�
sequential/q_conv2d/MaxMaxsequential/q_conv2d/Abs:y:02sequential/q_conv2d/Max/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d/Max{
sequential/q_conv2d/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d/mul/y�
sequential/q_conv2d/mulMul sequential/q_conv2d/Max:output:0"sequential/q_conv2d/mul/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/mul�
sequential/q_conv2d/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2!
sequential/q_conv2d/truediv_1/y�
sequential/q_conv2d/truediv_1RealDivsequential/q_conv2d/mul:z:0(sequential/q_conv2d/truediv_1/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/truediv_1{
sequential/q_conv2d/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d/add/y�
sequential/q_conv2d/addAddV2!sequential/q_conv2d/truediv_1:z:0"sequential/q_conv2d/add/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/add�
sequential/q_conv2d/LogLogsequential/q_conv2d/add:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Log�
sequential/q_conv2d/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2!
sequential/q_conv2d/truediv_2/y�
sequential/q_conv2d/truediv_2RealDivsequential/q_conv2d/Log:y:0(sequential/q_conv2d/truediv_2/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/truediv_2�
sequential/q_conv2d/RoundRound!sequential/q_conv2d/truediv_2:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Round
sequential/q_conv2d/Pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d/Pow_1/x�
sequential/q_conv2d/Pow_1Pow$sequential/q_conv2d/Pow_1/x:output:0sequential/q_conv2d/Round:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Pow_1�
sequential/q_conv2d/Abs_1Abssequential/q_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Abs_1�
sequential/q_conv2d/truediv_3RealDivsequential/q_conv2d/Abs_1:y:0sequential/q_conv2d/Pow_1:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/truediv_3
sequential/q_conv2d/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sequential/q_conv2d/add_1/y�
sequential/q_conv2d/add_1AddV2!sequential/q_conv2d/truediv_3:z:0$sequential/q_conv2d/add_1/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/add_1�
sequential/q_conv2d/FloorFloorsequential/q_conv2d/add_1:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Floor}
sequential/q_conv2d/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
sequential/q_conv2d/Less/y�
sequential/q_conv2d/LessLesssequential/q_conv2d/Floor:y:0#sequential/q_conv2d/Less/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Less�
sequential/q_conv2d/SignSignsequential/q_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Sign�
#sequential/q_conv2d/ones_like/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2%
#sequential/q_conv2d/ones_like/Shape�
#sequential/q_conv2d/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2%
#sequential/q_conv2d/ones_like/Const�
sequential/q_conv2d/ones_likeFill,sequential/q_conv2d/ones_like/Shape:output:0,sequential/q_conv2d/ones_like/Const:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/ones_like
sequential/q_conv2d/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
sequential/q_conv2d/mul_1/y�
sequential/q_conv2d/mul_1Mul&sequential/q_conv2d/ones_like:output:0$sequential/q_conv2d/mul_1/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/mul_1�
sequential/q_conv2d/truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2!
sequential/q_conv2d/truediv_4/y�
sequential/q_conv2d/truediv_4RealDivsequential/q_conv2d/mul_1:z:0(sequential/q_conv2d/truediv_4/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/truediv_4�
sequential/q_conv2d/SelectV2SelectV2sequential/q_conv2d/Less:z:0sequential/q_conv2d/Floor:y:0!sequential/q_conv2d/truediv_4:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/SelectV2�
sequential/q_conv2d/mul_2Mulsequential/q_conv2d/Sign:y:0%sequential/q_conv2d/SelectV2:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/mul_2�
sequential/q_conv2d/Mul_3Mulsequential/q_conv2d/truediv:z:0sequential/q_conv2d/mul_2:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Mul_3�
*sequential/q_conv2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2,
*sequential/q_conv2d/Mean/reduction_indices�
sequential/q_conv2d/MeanMeansequential/q_conv2d/Mul_3:z:03sequential/q_conv2d/Mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d/Mean�
sequential/q_conv2d/Mul_4Mulsequential/q_conv2d/mul_2:z:0sequential/q_conv2d/mul_2:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Mul_4�
,sequential/q_conv2d/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2.
,sequential/q_conv2d/Mean_1/reduction_indices�
sequential/q_conv2d/Mean_1Meansequential/q_conv2d/Mul_4:z:05sequential/q_conv2d/Mean_1/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d/Mean_1
sequential/q_conv2d/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d/add_2/y�
sequential/q_conv2d/add_2AddV2#sequential/q_conv2d/Mean_1:output:0$sequential/q_conv2d/add_2/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/add_2�
sequential/q_conv2d/truediv_5RealDiv!sequential/q_conv2d/Mean:output:0sequential/q_conv2d/add_2:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/truediv_5
sequential/q_conv2d/add_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d/add_3/y�
sequential/q_conv2d/add_3AddV2!sequential/q_conv2d/truediv_5:z:0$sequential/q_conv2d/add_3/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/add_3�
sequential/q_conv2d/Log_1Logsequential/q_conv2d/add_3:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Log_1�
sequential/q_conv2d/truediv_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2!
sequential/q_conv2d/truediv_6/y�
sequential/q_conv2d/truediv_6RealDivsequential/q_conv2d/Log_1:y:0(sequential/q_conv2d/truediv_6/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/truediv_6�
sequential/q_conv2d/Round_1Round!sequential/q_conv2d/truediv_6:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Round_1
sequential/q_conv2d/Pow_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d/Pow_2/x�
sequential/q_conv2d/Pow_2Pow$sequential/q_conv2d/Pow_2/x:output:0sequential/q_conv2d/Round_1:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Pow_2�
sequential/q_conv2d/Abs_2Abssequential/q_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Abs_2�
sequential/q_conv2d/truediv_7RealDivsequential/q_conv2d/Abs_2:y:0sequential/q_conv2d/Pow_2:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/truediv_7
sequential/q_conv2d/add_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sequential/q_conv2d/add_4/y�
sequential/q_conv2d/add_4AddV2!sequential/q_conv2d/truediv_7:z:0$sequential/q_conv2d/add_4/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/add_4�
sequential/q_conv2d/Floor_1Floorsequential/q_conv2d/add_4:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Floor_1�
sequential/q_conv2d/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
sequential/q_conv2d/Less_1/y�
sequential/q_conv2d/Less_1Lesssequential/q_conv2d/Floor_1:y:0%sequential/q_conv2d/Less_1/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Less_1�
sequential/q_conv2d/Sign_1Signsequential/q_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Sign_1�
%sequential/q_conv2d/ones_like_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2'
%sequential/q_conv2d/ones_like_1/Shape�
%sequential/q_conv2d/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2'
%sequential/q_conv2d/ones_like_1/Const�
sequential/q_conv2d/ones_like_1Fill.sequential/q_conv2d/ones_like_1/Shape:output:0.sequential/q_conv2d/ones_like_1/Const:output:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d/ones_like_1
sequential/q_conv2d/mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
sequential/q_conv2d/mul_5/y�
sequential/q_conv2d/mul_5Mul(sequential/q_conv2d/ones_like_1:output:0$sequential/q_conv2d/mul_5/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/mul_5�
sequential/q_conv2d/truediv_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2!
sequential/q_conv2d/truediv_8/y�
sequential/q_conv2d/truediv_8RealDivsequential/q_conv2d/mul_5:z:0(sequential/q_conv2d/truediv_8/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/truediv_8�
sequential/q_conv2d/SelectV2_1SelectV2sequential/q_conv2d/Less_1:z:0sequential/q_conv2d/Floor_1:y:0!sequential/q_conv2d/truediv_8:z:0*
T0*&
_output_shapes
:2 
sequential/q_conv2d/SelectV2_1�
sequential/q_conv2d/mul_6Mulsequential/q_conv2d/Sign_1:y:0'sequential/q_conv2d/SelectV2_1:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/mul_6�
sequential/q_conv2d/Mul_7Mulsequential/q_conv2d/truediv:z:0sequential/q_conv2d/mul_6:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Mul_7�
,sequential/q_conv2d/Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2.
,sequential/q_conv2d/Mean_2/reduction_indices�
sequential/q_conv2d/Mean_2Meansequential/q_conv2d/Mul_7:z:05sequential/q_conv2d/Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d/Mean_2�
sequential/q_conv2d/Mul_8Mulsequential/q_conv2d/mul_6:z:0sequential/q_conv2d/mul_6:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Mul_8�
,sequential/q_conv2d/Mean_3/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2.
,sequential/q_conv2d/Mean_3/reduction_indices�
sequential/q_conv2d/Mean_3Meansequential/q_conv2d/Mul_8:z:05sequential/q_conv2d/Mean_3/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d/Mean_3
sequential/q_conv2d/add_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d/add_5/y�
sequential/q_conv2d/add_5AddV2#sequential/q_conv2d/Mean_3:output:0$sequential/q_conv2d/add_5/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/add_5�
sequential/q_conv2d/truediv_9RealDiv#sequential/q_conv2d/Mean_2:output:0sequential/q_conv2d/add_5:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/truediv_9
sequential/q_conv2d/add_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d/add_6/y�
sequential/q_conv2d/add_6AddV2!sequential/q_conv2d/truediv_9:z:0$sequential/q_conv2d/add_6/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/add_6�
sequential/q_conv2d/Log_2Logsequential/q_conv2d/add_6:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Log_2�
 sequential/q_conv2d/truediv_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2"
 sequential/q_conv2d/truediv_10/y�
sequential/q_conv2d/truediv_10RealDivsequential/q_conv2d/Log_2:y:0)sequential/q_conv2d/truediv_10/y:output:0*
T0*&
_output_shapes
:2 
sequential/q_conv2d/truediv_10�
sequential/q_conv2d/Round_2Round"sequential/q_conv2d/truediv_10:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Round_2
sequential/q_conv2d/Pow_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d/Pow_3/x�
sequential/q_conv2d/Pow_3Pow$sequential/q_conv2d/Pow_3/x:output:0sequential/q_conv2d/Round_2:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Pow_3�
sequential/q_conv2d/Abs_3Abssequential/q_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Abs_3�
sequential/q_conv2d/truediv_11RealDivsequential/q_conv2d/Abs_3:y:0sequential/q_conv2d/Pow_3:z:0*
T0*&
_output_shapes
:2 
sequential/q_conv2d/truediv_11
sequential/q_conv2d/add_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sequential/q_conv2d/add_7/y�
sequential/q_conv2d/add_7AddV2"sequential/q_conv2d/truediv_11:z:0$sequential/q_conv2d/add_7/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/add_7�
sequential/q_conv2d/Floor_2Floorsequential/q_conv2d/add_7:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Floor_2�
sequential/q_conv2d/Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
sequential/q_conv2d/Less_2/y�
sequential/q_conv2d/Less_2Lesssequential/q_conv2d/Floor_2:y:0%sequential/q_conv2d/Less_2/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Less_2�
sequential/q_conv2d/Sign_2Signsequential/q_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Sign_2�
%sequential/q_conv2d/ones_like_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2'
%sequential/q_conv2d/ones_like_2/Shape�
%sequential/q_conv2d/ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2'
%sequential/q_conv2d/ones_like_2/Const�
sequential/q_conv2d/ones_like_2Fill.sequential/q_conv2d/ones_like_2/Shape:output:0.sequential/q_conv2d/ones_like_2/Const:output:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d/ones_like_2
sequential/q_conv2d/mul_9/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
sequential/q_conv2d/mul_9/y�
sequential/q_conv2d/mul_9Mul(sequential/q_conv2d/ones_like_2:output:0$sequential/q_conv2d/mul_9/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/mul_9�
 sequential/q_conv2d/truediv_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2"
 sequential/q_conv2d/truediv_12/y�
sequential/q_conv2d/truediv_12RealDivsequential/q_conv2d/mul_9:z:0)sequential/q_conv2d/truediv_12/y:output:0*
T0*&
_output_shapes
:2 
sequential/q_conv2d/truediv_12�
sequential/q_conv2d/SelectV2_2SelectV2sequential/q_conv2d/Less_2:z:0sequential/q_conv2d/Floor_2:y:0"sequential/q_conv2d/truediv_12:z:0*
T0*&
_output_shapes
:2 
sequential/q_conv2d/SelectV2_2�
sequential/q_conv2d/mul_10Mulsequential/q_conv2d/Sign_2:y:0'sequential/q_conv2d/SelectV2_2:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/mul_10�
sequential/q_conv2d/Mul_11Mulsequential/q_conv2d/truediv:z:0sequential/q_conv2d/mul_10:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Mul_11�
,sequential/q_conv2d/Mean_4/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2.
,sequential/q_conv2d/Mean_4/reduction_indices�
sequential/q_conv2d/Mean_4Meansequential/q_conv2d/Mul_11:z:05sequential/q_conv2d/Mean_4/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d/Mean_4�
sequential/q_conv2d/Mul_12Mulsequential/q_conv2d/mul_10:z:0sequential/q_conv2d/mul_10:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Mul_12�
,sequential/q_conv2d/Mean_5/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2.
,sequential/q_conv2d/Mean_5/reduction_indices�
sequential/q_conv2d/Mean_5Meansequential/q_conv2d/Mul_12:z:05sequential/q_conv2d/Mean_5/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d/Mean_5
sequential/q_conv2d/add_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d/add_8/y�
sequential/q_conv2d/add_8AddV2#sequential/q_conv2d/Mean_5:output:0$sequential/q_conv2d/add_8/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/add_8�
sequential/q_conv2d/truediv_13RealDiv#sequential/q_conv2d/Mean_4:output:0sequential/q_conv2d/add_8:z:0*
T0*&
_output_shapes
:2 
sequential/q_conv2d/truediv_13
sequential/q_conv2d/add_9/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d/add_9/y�
sequential/q_conv2d/add_9AddV2"sequential/q_conv2d/truediv_13:z:0$sequential/q_conv2d/add_9/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/add_9�
sequential/q_conv2d/Log_3Logsequential/q_conv2d/add_9:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Log_3�
 sequential/q_conv2d/truediv_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2"
 sequential/q_conv2d/truediv_14/y�
sequential/q_conv2d/truediv_14RealDivsequential/q_conv2d/Log_3:y:0)sequential/q_conv2d/truediv_14/y:output:0*
T0*&
_output_shapes
:2 
sequential/q_conv2d/truediv_14�
sequential/q_conv2d/Round_3Round"sequential/q_conv2d/truediv_14:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Round_3
sequential/q_conv2d/Pow_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d/Pow_4/x�
sequential/q_conv2d/Pow_4Pow$sequential/q_conv2d/Pow_4/x:output:0sequential/q_conv2d/Round_3:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Pow_4�
sequential/q_conv2d/Abs_4Abssequential/q_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Abs_4�
sequential/q_conv2d/truediv_15RealDivsequential/q_conv2d/Abs_4:y:0sequential/q_conv2d/Pow_4:z:0*
T0*&
_output_shapes
:2 
sequential/q_conv2d/truediv_15�
sequential/q_conv2d/add_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sequential/q_conv2d/add_10/y�
sequential/q_conv2d/add_10AddV2"sequential/q_conv2d/truediv_15:z:0%sequential/q_conv2d/add_10/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/add_10�
sequential/q_conv2d/Floor_3Floorsequential/q_conv2d/add_10:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Floor_3�
sequential/q_conv2d/Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
sequential/q_conv2d/Less_3/y�
sequential/q_conv2d/Less_3Lesssequential/q_conv2d/Floor_3:y:0%sequential/q_conv2d/Less_3/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Less_3�
sequential/q_conv2d/Sign_3Signsequential/q_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Sign_3�
%sequential/q_conv2d/ones_like_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2'
%sequential/q_conv2d/ones_like_3/Shape�
%sequential/q_conv2d/ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2'
%sequential/q_conv2d/ones_like_3/Const�
sequential/q_conv2d/ones_like_3Fill.sequential/q_conv2d/ones_like_3/Shape:output:0.sequential/q_conv2d/ones_like_3/Const:output:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d/ones_like_3�
sequential/q_conv2d/mul_13/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
sequential/q_conv2d/mul_13/y�
sequential/q_conv2d/mul_13Mul(sequential/q_conv2d/ones_like_3:output:0%sequential/q_conv2d/mul_13/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/mul_13�
 sequential/q_conv2d/truediv_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2"
 sequential/q_conv2d/truediv_16/y�
sequential/q_conv2d/truediv_16RealDivsequential/q_conv2d/mul_13:z:0)sequential/q_conv2d/truediv_16/y:output:0*
T0*&
_output_shapes
:2 
sequential/q_conv2d/truediv_16�
sequential/q_conv2d/SelectV2_3SelectV2sequential/q_conv2d/Less_3:z:0sequential/q_conv2d/Floor_3:y:0"sequential/q_conv2d/truediv_16:z:0*
T0*&
_output_shapes
:2 
sequential/q_conv2d/SelectV2_3�
sequential/q_conv2d/mul_14Mulsequential/q_conv2d/Sign_3:y:0'sequential/q_conv2d/SelectV2_3:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/mul_14�
sequential/q_conv2d/Mul_15Mulsequential/q_conv2d/truediv:z:0sequential/q_conv2d/mul_14:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Mul_15�
,sequential/q_conv2d/Mean_6/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2.
,sequential/q_conv2d/Mean_6/reduction_indices�
sequential/q_conv2d/Mean_6Meansequential/q_conv2d/Mul_15:z:05sequential/q_conv2d/Mean_6/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d/Mean_6�
sequential/q_conv2d/Mul_16Mulsequential/q_conv2d/mul_14:z:0sequential/q_conv2d/mul_14:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Mul_16�
,sequential/q_conv2d/Mean_7/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2.
,sequential/q_conv2d/Mean_7/reduction_indices�
sequential/q_conv2d/Mean_7Meansequential/q_conv2d/Mul_16:z:05sequential/q_conv2d/Mean_7/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d/Mean_7�
sequential/q_conv2d/add_11/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d/add_11/y�
sequential/q_conv2d/add_11AddV2#sequential/q_conv2d/Mean_7:output:0%sequential/q_conv2d/add_11/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/add_11�
sequential/q_conv2d/truediv_17RealDiv#sequential/q_conv2d/Mean_6:output:0sequential/q_conv2d/add_11:z:0*
T0*&
_output_shapes
:2 
sequential/q_conv2d/truediv_17�
sequential/q_conv2d/add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d/add_12/y�
sequential/q_conv2d/add_12AddV2"sequential/q_conv2d/truediv_17:z:0%sequential/q_conv2d/add_12/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/add_12�
sequential/q_conv2d/Log_4Logsequential/q_conv2d/add_12:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Log_4�
 sequential/q_conv2d/truediv_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2"
 sequential/q_conv2d/truediv_18/y�
sequential/q_conv2d/truediv_18RealDivsequential/q_conv2d/Log_4:y:0)sequential/q_conv2d/truediv_18/y:output:0*
T0*&
_output_shapes
:2 
sequential/q_conv2d/truediv_18�
sequential/q_conv2d/Round_4Round"sequential/q_conv2d/truediv_18:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Round_4
sequential/q_conv2d/Pow_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d/Pow_5/x�
sequential/q_conv2d/Pow_5Pow$sequential/q_conv2d/Pow_5/x:output:0sequential/q_conv2d/Round_4:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Pow_5�
sequential/q_conv2d/Abs_5Abssequential/q_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Abs_5�
sequential/q_conv2d/truediv_19RealDivsequential/q_conv2d/Abs_5:y:0sequential/q_conv2d/Pow_5:z:0*
T0*&
_output_shapes
:2 
sequential/q_conv2d/truediv_19�
sequential/q_conv2d/add_13/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sequential/q_conv2d/add_13/y�
sequential/q_conv2d/add_13AddV2"sequential/q_conv2d/truediv_19:z:0%sequential/q_conv2d/add_13/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/add_13�
sequential/q_conv2d/Floor_4Floorsequential/q_conv2d/add_13:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Floor_4�
sequential/q_conv2d/Less_4/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
sequential/q_conv2d/Less_4/y�
sequential/q_conv2d/Less_4Lesssequential/q_conv2d/Floor_4:y:0%sequential/q_conv2d/Less_4/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Less_4�
sequential/q_conv2d/Sign_4Signsequential/q_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Sign_4�
%sequential/q_conv2d/ones_like_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2'
%sequential/q_conv2d/ones_like_4/Shape�
%sequential/q_conv2d/ones_like_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2'
%sequential/q_conv2d/ones_like_4/Const�
sequential/q_conv2d/ones_like_4Fill.sequential/q_conv2d/ones_like_4/Shape:output:0.sequential/q_conv2d/ones_like_4/Const:output:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d/ones_like_4�
sequential/q_conv2d/mul_17/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
sequential/q_conv2d/mul_17/y�
sequential/q_conv2d/mul_17Mul(sequential/q_conv2d/ones_like_4:output:0%sequential/q_conv2d/mul_17/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/mul_17�
 sequential/q_conv2d/truediv_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2"
 sequential/q_conv2d/truediv_20/y�
sequential/q_conv2d/truediv_20RealDivsequential/q_conv2d/mul_17:z:0)sequential/q_conv2d/truediv_20/y:output:0*
T0*&
_output_shapes
:2 
sequential/q_conv2d/truediv_20�
sequential/q_conv2d/SelectV2_4SelectV2sequential/q_conv2d/Less_4:z:0sequential/q_conv2d/Floor_4:y:0"sequential/q_conv2d/truediv_20:z:0*
T0*&
_output_shapes
:2 
sequential/q_conv2d/SelectV2_4�
sequential/q_conv2d/mul_18Mulsequential/q_conv2d/Sign_4:y:0'sequential/q_conv2d/SelectV2_4:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/mul_18�
sequential/q_conv2d/Mul_19Mulsequential/q_conv2d/truediv:z:0sequential/q_conv2d/mul_18:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Mul_19�
,sequential/q_conv2d/Mean_8/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2.
,sequential/q_conv2d/Mean_8/reduction_indices�
sequential/q_conv2d/Mean_8Meansequential/q_conv2d/Mul_19:z:05sequential/q_conv2d/Mean_8/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d/Mean_8�
sequential/q_conv2d/Mul_20Mulsequential/q_conv2d/mul_18:z:0sequential/q_conv2d/mul_18:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Mul_20�
,sequential/q_conv2d/Mean_9/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2.
,sequential/q_conv2d/Mean_9/reduction_indices�
sequential/q_conv2d/Mean_9Meansequential/q_conv2d/Mul_20:z:05sequential/q_conv2d/Mean_9/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d/Mean_9�
sequential/q_conv2d/add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d/add_14/y�
sequential/q_conv2d/add_14AddV2#sequential/q_conv2d/Mean_9:output:0%sequential/q_conv2d/add_14/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/add_14�
sequential/q_conv2d/truediv_21RealDiv#sequential/q_conv2d/Mean_8:output:0sequential/q_conv2d/add_14:z:0*
T0*&
_output_shapes
:2 
sequential/q_conv2d/truediv_21�
sequential/q_conv2d/add_15/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d/add_15/y�
sequential/q_conv2d/add_15AddV2"sequential/q_conv2d/truediv_21:z:0%sequential/q_conv2d/add_15/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/add_15�
sequential/q_conv2d/Log_5Logsequential/q_conv2d/add_15:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Log_5�
 sequential/q_conv2d/truediv_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2"
 sequential/q_conv2d/truediv_22/y�
sequential/q_conv2d/truediv_22RealDivsequential/q_conv2d/Log_5:y:0)sequential/q_conv2d/truediv_22/y:output:0*
T0*&
_output_shapes
:2 
sequential/q_conv2d/truediv_22�
sequential/q_conv2d/Round_5Round"sequential/q_conv2d/truediv_22:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Round_5
sequential/q_conv2d/Pow_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d/Pow_6/x�
sequential/q_conv2d/Pow_6Pow$sequential/q_conv2d/Pow_6/x:output:0sequential/q_conv2d/Round_5:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Pow_6�
sequential/q_conv2d/mul_21/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2
sequential/q_conv2d/mul_21/y�
sequential/q_conv2d/mul_21Mulsequential/q_conv2d/Pow_6:z:0%sequential/q_conv2d/mul_21/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/mul_21�
sequential/q_conv2d/mul_22Mulsequential/q_conv2d/Cast:y:0sequential/q_conv2d/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/mul_22�
sequential/q_conv2d/mul_23Mulsequential/q_conv2d/Cast:y:0sequential/q_conv2d/mul_18:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/mul_23�
 sequential/q_conv2d/truediv_23/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2"
 sequential/q_conv2d/truediv_23/y�
sequential/q_conv2d/truediv_23RealDivsequential/q_conv2d/mul_23:z:0)sequential/q_conv2d/truediv_23/y:output:0*
T0*&
_output_shapes
:2 
sequential/q_conv2d/truediv_23�
sequential/q_conv2d/mul_24Mulsequential/q_conv2d/mul_21:z:0"sequential/q_conv2d/truediv_23:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/mul_24�
sequential/q_conv2d/NegNegsequential/q_conv2d/mul_22:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/Neg�
sequential/q_conv2d/add_16AddV2sequential/q_conv2d/Neg:y:0sequential/q_conv2d/mul_24:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/add_16�
sequential/q_conv2d/mul_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
sequential/q_conv2d/mul_25/x�
sequential/q_conv2d/mul_25Mul%sequential/q_conv2d/mul_25/x:output:0sequential/q_conv2d/add_16:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/mul_25�
 sequential/q_conv2d/StopGradientStopGradientsequential/q_conv2d/mul_25:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d/StopGradient�
sequential/q_conv2d/add_17AddV2sequential/q_conv2d/mul_22:z:0)sequential/q_conv2d/StopGradient:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d/add_17�
sequential/q_conv2d/convolutionConv2D3sequential/batch_normalization/FusedBatchNormV3:y:0sequential/q_conv2d/add_17:z:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2!
sequential/q_conv2d/convolution�
*sequential/q_conv2d/BiasAdd/ReadVariableOpReadVariableOp3sequential_q_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*sequential/q_conv2d/BiasAdd/ReadVariableOp�
sequential/q_conv2d/BiasAddBiasAdd(sequential/q_conv2d/convolution:output:02sequential/q_conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
sequential/q_conv2d/BiasAdd�
sequential/q_activation/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
sequential/q_activation/Pow/x�
sequential/q_activation/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :2
sequential/q_activation/Pow/y�
sequential/q_activation/PowPow&sequential/q_activation/Pow/x:output:0&sequential/q_activation/Pow/y:output:0*
T0*
_output_shapes
: 2
sequential/q_activation/Pow�
sequential/q_activation/CastCastsequential/q_activation/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
sequential/q_activation/Cast�
sequential/q_activation/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential/q_activation/Pow_1/x�
sequential/q_activation/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential/q_activation/Pow_1/y�
sequential/q_activation/Pow_1Pow(sequential/q_activation/Pow_1/x:output:0(sequential/q_activation/Pow_1/y:output:0*
T0*
_output_shapes
: 2
sequential/q_activation/Pow_1�
sequential/q_activation/Cast_1Cast!sequential/q_activation/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: 2 
sequential/q_activation/Cast_1�
sequential/q_activation/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_activation/Const�
 sequential/q_activation/Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential/q_activation/Cast_2/x�
sequential/q_activation/Cast_2Cast)sequential/q_activation/Cast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2 
sequential/q_activation/Cast_2�
sequential/q_activation/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �A2
sequential/q_activation/sub/y�
sequential/q_activation/subSub"sequential/q_activation/Cast_2:y:0&sequential/q_activation/sub/y:output:0*
T0*
_output_shapes
: 2
sequential/q_activation/sub�
sequential/q_activation/Pow_2Pow&sequential/q_activation/Const:output:0sequential/q_activation/sub:z:0*
T0*
_output_shapes
: 2
sequential/q_activation/Pow_2�
sequential/q_activation/sub_1Sub"sequential/q_activation/Cast_1:y:0!sequential/q_activation/Pow_2:z:0*
T0*
_output_shapes
: 2
sequential/q_activation/sub_1�
!sequential/q_activation/LessEqual	LessEqual$sequential/q_conv2d/BiasAdd:output:0!sequential/q_activation/sub_1:z:0*
T0*/
_output_shapes
:���������2#
!sequential/q_activation/LessEqual�
sequential/q_activation/ReluRelu$sequential/q_conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
sequential/q_activation/Relu�
'sequential/q_activation/ones_like/ShapeShape$sequential/q_conv2d/BiasAdd:output:0*
T0*
_output_shapes
:2)
'sequential/q_activation/ones_like/Shape�
'sequential/q_activation/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2)
'sequential/q_activation/ones_like/Const�
!sequential/q_activation/ones_likeFill0sequential/q_activation/ones_like/Shape:output:00sequential/q_activation/ones_like/Const:output:0*
T0*/
_output_shapes
:���������2#
!sequential/q_activation/ones_like�
sequential/q_activation/sub_2Sub"sequential/q_activation/Cast_1:y:0!sequential/q_activation/Pow_2:z:0*
T0*
_output_shapes
: 2
sequential/q_activation/sub_2�
sequential/q_activation/mulMul*sequential/q_activation/ones_like:output:0!sequential/q_activation/sub_2:z:0*
T0*/
_output_shapes
:���������2
sequential/q_activation/mul�
 sequential/q_activation/SelectV2SelectV2%sequential/q_activation/LessEqual:z:0*sequential/q_activation/Relu:activations:0sequential/q_activation/mul:z:0*
T0*/
_output_shapes
:���������2"
 sequential/q_activation/SelectV2�
sequential/q_activation/mul_1Mul$sequential/q_conv2d/BiasAdd:output:0 sequential/q_activation/Cast:y:0*
T0*/
_output_shapes
:���������2
sequential/q_activation/mul_1�
sequential/q_activation/truedivRealDiv!sequential/q_activation/mul_1:z:0"sequential/q_activation/Cast_1:y:0*
T0*/
_output_shapes
:���������2!
sequential/q_activation/truediv�
sequential/q_activation/NegNeg#sequential/q_activation/truediv:z:0*
T0*/
_output_shapes
:���������2
sequential/q_activation/Neg�
sequential/q_activation/RoundRound#sequential/q_activation/truediv:z:0*
T0*/
_output_shapes
:���������2
sequential/q_activation/Round�
sequential/q_activation/addAddV2sequential/q_activation/Neg:y:0!sequential/q_activation/Round:y:0*
T0*/
_output_shapes
:���������2
sequential/q_activation/add�
$sequential/q_activation/StopGradientStopGradientsequential/q_activation/add:z:0*
T0*/
_output_shapes
:���������2&
$sequential/q_activation/StopGradient�
sequential/q_activation/add_1AddV2#sequential/q_activation/truediv:z:0-sequential/q_activation/StopGradient:output:0*
T0*/
_output_shapes
:���������2
sequential/q_activation/add_1�
!sequential/q_activation/truediv_1RealDiv!sequential/q_activation/add_1:z:0 sequential/q_activation/Cast:y:0*
T0*/
_output_shapes
:���������2#
!sequential/q_activation/truediv_1�
#sequential/q_activation/truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2%
#sequential/q_activation/truediv_2/x�
!sequential/q_activation/truediv_2RealDiv,sequential/q_activation/truediv_2/x:output:0 sequential/q_activation/Cast:y:0*
T0*
_output_shapes
: 2#
!sequential/q_activation/truediv_2�
sequential/q_activation/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2!
sequential/q_activation/sub_3/x�
sequential/q_activation/sub_3Sub(sequential/q_activation/sub_3/x:output:0%sequential/q_activation/truediv_2:z:0*
T0*
_output_shapes
: 2
sequential/q_activation/sub_3�
-sequential/q_activation/clip_by_value/MinimumMinimum%sequential/q_activation/truediv_1:z:0!sequential/q_activation/sub_3:z:0*
T0*/
_output_shapes
:���������2/
-sequential/q_activation/clip_by_value/Minimum�
'sequential/q_activation/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'sequential/q_activation/clip_by_value/y�
%sequential/q_activation/clip_by_valueMaximum1sequential/q_activation/clip_by_value/Minimum:z:00sequential/q_activation/clip_by_value/y:output:0*
T0*/
_output_shapes
:���������2'
%sequential/q_activation/clip_by_value�
sequential/q_activation/mul_2Mul"sequential/q_activation/Cast_1:y:0)sequential/q_activation/clip_by_value:z:0*
T0*/
_output_shapes
:���������2
sequential/q_activation/mul_2�
sequential/q_activation/Neg_1Neg)sequential/q_activation/SelectV2:output:0*
T0*/
_output_shapes
:���������2
sequential/q_activation/Neg_1�
sequential/q_activation/add_2AddV2!sequential/q_activation/Neg_1:y:0!sequential/q_activation/mul_2:z:0*
T0*/
_output_shapes
:���������2
sequential/q_activation/add_2�
sequential/q_activation/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2!
sequential/q_activation/mul_3/x�
sequential/q_activation/mul_3Mul(sequential/q_activation/mul_3/x:output:0!sequential/q_activation/add_2:z:0*
T0*/
_output_shapes
:���������2
sequential/q_activation/mul_3�
&sequential/q_activation/StopGradient_1StopGradient!sequential/q_activation/mul_3:z:0*
T0*/
_output_shapes
:���������2(
&sequential/q_activation/StopGradient_1�
sequential/q_activation/add_3AddV2)sequential/q_activation/SelectV2:output:0/sequential/q_activation/StopGradient_1:output:0*
T0*/
_output_shapes
:���������2
sequential/q_activation/add_3|
sequential/q_conv2d_1/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
sequential/q_conv2d_1/Pow/x|
sequential/q_conv2d_1/Pow/yConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/q_conv2d_1/Pow/y�
sequential/q_conv2d_1/PowPow$sequential/q_conv2d_1/Pow/x:output:0$sequential/q_conv2d_1/Pow/y:output:0*
T0*
_output_shapes
: 2
sequential/q_conv2d_1/Pow�
sequential/q_conv2d_1/CastCastsequential/q_conv2d_1/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
sequential/q_conv2d_1/Cast�
$sequential/q_conv2d_1/ReadVariableOpReadVariableOp-sequential_q_conv2d_1_readvariableop_resource*&
_output_shapes
:*
dtype02&
$sequential/q_conv2d_1/ReadVariableOp�
sequential/q_conv2d_1/truedivRealDiv,sequential/q_conv2d_1/ReadVariableOp:value:0sequential/q_conv2d_1/Cast:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/truediv�
sequential/q_conv2d_1/AbsAbs!sequential/q_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Abs�
+sequential/q_conv2d_1/Max/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2-
+sequential/q_conv2d_1/Max/reduction_indices�
sequential/q_conv2d_1/MaxMaxsequential/q_conv2d_1/Abs:y:04sequential/q_conv2d_1/Max/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_1/Max
sequential/q_conv2d_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d_1/mul/y�
sequential/q_conv2d_1/mulMul"sequential/q_conv2d_1/Max:output:0$sequential/q_conv2d_1/mul/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/mul�
!sequential/q_conv2d_1/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2#
!sequential/q_conv2d_1/truediv_1/y�
sequential/q_conv2d_1/truediv_1RealDivsequential/q_conv2d_1/mul:z:0*sequential/q_conv2d_1/truediv_1/y:output:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d_1/truediv_1
sequential/q_conv2d_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d_1/add/y�
sequential/q_conv2d_1/addAddV2#sequential/q_conv2d_1/truediv_1:z:0$sequential/q_conv2d_1/add/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/add�
sequential/q_conv2d_1/LogLogsequential/q_conv2d_1/add:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Log�
!sequential/q_conv2d_1/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2#
!sequential/q_conv2d_1/truediv_2/y�
sequential/q_conv2d_1/truediv_2RealDivsequential/q_conv2d_1/Log:y:0*sequential/q_conv2d_1/truediv_2/y:output:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d_1/truediv_2�
sequential/q_conv2d_1/RoundRound#sequential/q_conv2d_1/truediv_2:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Round�
sequential/q_conv2d_1/Pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d_1/Pow_1/x�
sequential/q_conv2d_1/Pow_1Pow&sequential/q_conv2d_1/Pow_1/x:output:0sequential/q_conv2d_1/Round:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Pow_1�
sequential/q_conv2d_1/Abs_1Abs!sequential/q_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Abs_1�
sequential/q_conv2d_1/truediv_3RealDivsequential/q_conv2d_1/Abs_1:y:0sequential/q_conv2d_1/Pow_1:z:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d_1/truediv_3�
sequential/q_conv2d_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sequential/q_conv2d_1/add_1/y�
sequential/q_conv2d_1/add_1AddV2#sequential/q_conv2d_1/truediv_3:z:0&sequential/q_conv2d_1/add_1/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/add_1�
sequential/q_conv2d_1/FloorFloorsequential/q_conv2d_1/add_1:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Floor�
sequential/q_conv2d_1/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
sequential/q_conv2d_1/Less/y�
sequential/q_conv2d_1/LessLesssequential/q_conv2d_1/Floor:y:0%sequential/q_conv2d_1/Less/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Less�
sequential/q_conv2d_1/SignSign!sequential/q_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Sign�
%sequential/q_conv2d_1/ones_like/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2'
%sequential/q_conv2d_1/ones_like/Shape�
%sequential/q_conv2d_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2'
%sequential/q_conv2d_1/ones_like/Const�
sequential/q_conv2d_1/ones_likeFill.sequential/q_conv2d_1/ones_like/Shape:output:0.sequential/q_conv2d_1/ones_like/Const:output:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d_1/ones_like�
sequential/q_conv2d_1/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
sequential/q_conv2d_1/mul_1/y�
sequential/q_conv2d_1/mul_1Mul(sequential/q_conv2d_1/ones_like:output:0&sequential/q_conv2d_1/mul_1/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/mul_1�
!sequential/q_conv2d_1/truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!sequential/q_conv2d_1/truediv_4/y�
sequential/q_conv2d_1/truediv_4RealDivsequential/q_conv2d_1/mul_1:z:0*sequential/q_conv2d_1/truediv_4/y:output:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d_1/truediv_4�
sequential/q_conv2d_1/SelectV2SelectV2sequential/q_conv2d_1/Less:z:0sequential/q_conv2d_1/Floor:y:0#sequential/q_conv2d_1/truediv_4:z:0*
T0*&
_output_shapes
:2 
sequential/q_conv2d_1/SelectV2�
sequential/q_conv2d_1/mul_2Mulsequential/q_conv2d_1/Sign:y:0'sequential/q_conv2d_1/SelectV2:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/mul_2�
sequential/q_conv2d_1/Mul_3Mul!sequential/q_conv2d_1/truediv:z:0sequential/q_conv2d_1/mul_2:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Mul_3�
,sequential/q_conv2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2.
,sequential/q_conv2d_1/Mean/reduction_indices�
sequential/q_conv2d_1/MeanMeansequential/q_conv2d_1/Mul_3:z:05sequential/q_conv2d_1/Mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_1/Mean�
sequential/q_conv2d_1/Mul_4Mulsequential/q_conv2d_1/mul_2:z:0sequential/q_conv2d_1/mul_2:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Mul_4�
.sequential/q_conv2d_1/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          20
.sequential/q_conv2d_1/Mean_1/reduction_indices�
sequential/q_conv2d_1/Mean_1Meansequential/q_conv2d_1/Mul_4:z:07sequential/q_conv2d_1/Mean_1/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_1/Mean_1�
sequential/q_conv2d_1/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d_1/add_2/y�
sequential/q_conv2d_1/add_2AddV2%sequential/q_conv2d_1/Mean_1:output:0&sequential/q_conv2d_1/add_2/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/add_2�
sequential/q_conv2d_1/truediv_5RealDiv#sequential/q_conv2d_1/Mean:output:0sequential/q_conv2d_1/add_2:z:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d_1/truediv_5�
sequential/q_conv2d_1/add_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d_1/add_3/y�
sequential/q_conv2d_1/add_3AddV2#sequential/q_conv2d_1/truediv_5:z:0&sequential/q_conv2d_1/add_3/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/add_3�
sequential/q_conv2d_1/Log_1Logsequential/q_conv2d_1/add_3:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Log_1�
!sequential/q_conv2d_1/truediv_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2#
!sequential/q_conv2d_1/truediv_6/y�
sequential/q_conv2d_1/truediv_6RealDivsequential/q_conv2d_1/Log_1:y:0*sequential/q_conv2d_1/truediv_6/y:output:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d_1/truediv_6�
sequential/q_conv2d_1/Round_1Round#sequential/q_conv2d_1/truediv_6:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Round_1�
sequential/q_conv2d_1/Pow_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d_1/Pow_2/x�
sequential/q_conv2d_1/Pow_2Pow&sequential/q_conv2d_1/Pow_2/x:output:0!sequential/q_conv2d_1/Round_1:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Pow_2�
sequential/q_conv2d_1/Abs_2Abs!sequential/q_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Abs_2�
sequential/q_conv2d_1/truediv_7RealDivsequential/q_conv2d_1/Abs_2:y:0sequential/q_conv2d_1/Pow_2:z:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d_1/truediv_7�
sequential/q_conv2d_1/add_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sequential/q_conv2d_1/add_4/y�
sequential/q_conv2d_1/add_4AddV2#sequential/q_conv2d_1/truediv_7:z:0&sequential/q_conv2d_1/add_4/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/add_4�
sequential/q_conv2d_1/Floor_1Floorsequential/q_conv2d_1/add_4:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Floor_1�
sequential/q_conv2d_1/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2 
sequential/q_conv2d_1/Less_1/y�
sequential/q_conv2d_1/Less_1Less!sequential/q_conv2d_1/Floor_1:y:0'sequential/q_conv2d_1/Less_1/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Less_1�
sequential/q_conv2d_1/Sign_1Sign!sequential/q_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Sign_1�
'sequential/q_conv2d_1/ones_like_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2)
'sequential/q_conv2d_1/ones_like_1/Shape�
'sequential/q_conv2d_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2)
'sequential/q_conv2d_1/ones_like_1/Const�
!sequential/q_conv2d_1/ones_like_1Fill0sequential/q_conv2d_1/ones_like_1/Shape:output:00sequential/q_conv2d_1/ones_like_1/Const:output:0*
T0*&
_output_shapes
:2#
!sequential/q_conv2d_1/ones_like_1�
sequential/q_conv2d_1/mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
sequential/q_conv2d_1/mul_5/y�
sequential/q_conv2d_1/mul_5Mul*sequential/q_conv2d_1/ones_like_1:output:0&sequential/q_conv2d_1/mul_5/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/mul_5�
!sequential/q_conv2d_1/truediv_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!sequential/q_conv2d_1/truediv_8/y�
sequential/q_conv2d_1/truediv_8RealDivsequential/q_conv2d_1/mul_5:z:0*sequential/q_conv2d_1/truediv_8/y:output:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d_1/truediv_8�
 sequential/q_conv2d_1/SelectV2_1SelectV2 sequential/q_conv2d_1/Less_1:z:0!sequential/q_conv2d_1/Floor_1:y:0#sequential/q_conv2d_1/truediv_8:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_1/SelectV2_1�
sequential/q_conv2d_1/mul_6Mul sequential/q_conv2d_1/Sign_1:y:0)sequential/q_conv2d_1/SelectV2_1:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/mul_6�
sequential/q_conv2d_1/Mul_7Mul!sequential/q_conv2d_1/truediv:z:0sequential/q_conv2d_1/mul_6:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Mul_7�
.sequential/q_conv2d_1/Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          20
.sequential/q_conv2d_1/Mean_2/reduction_indices�
sequential/q_conv2d_1/Mean_2Meansequential/q_conv2d_1/Mul_7:z:07sequential/q_conv2d_1/Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_1/Mean_2�
sequential/q_conv2d_1/Mul_8Mulsequential/q_conv2d_1/mul_6:z:0sequential/q_conv2d_1/mul_6:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Mul_8�
.sequential/q_conv2d_1/Mean_3/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          20
.sequential/q_conv2d_1/Mean_3/reduction_indices�
sequential/q_conv2d_1/Mean_3Meansequential/q_conv2d_1/Mul_8:z:07sequential/q_conv2d_1/Mean_3/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_1/Mean_3�
sequential/q_conv2d_1/add_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d_1/add_5/y�
sequential/q_conv2d_1/add_5AddV2%sequential/q_conv2d_1/Mean_3:output:0&sequential/q_conv2d_1/add_5/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/add_5�
sequential/q_conv2d_1/truediv_9RealDiv%sequential/q_conv2d_1/Mean_2:output:0sequential/q_conv2d_1/add_5:z:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d_1/truediv_9�
sequential/q_conv2d_1/add_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d_1/add_6/y�
sequential/q_conv2d_1/add_6AddV2#sequential/q_conv2d_1/truediv_9:z:0&sequential/q_conv2d_1/add_6/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/add_6�
sequential/q_conv2d_1/Log_2Logsequential/q_conv2d_1/add_6:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Log_2�
"sequential/q_conv2d_1/truediv_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2$
"sequential/q_conv2d_1/truediv_10/y�
 sequential/q_conv2d_1/truediv_10RealDivsequential/q_conv2d_1/Log_2:y:0+sequential/q_conv2d_1/truediv_10/y:output:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_1/truediv_10�
sequential/q_conv2d_1/Round_2Round$sequential/q_conv2d_1/truediv_10:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Round_2�
sequential/q_conv2d_1/Pow_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d_1/Pow_3/x�
sequential/q_conv2d_1/Pow_3Pow&sequential/q_conv2d_1/Pow_3/x:output:0!sequential/q_conv2d_1/Round_2:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Pow_3�
sequential/q_conv2d_1/Abs_3Abs!sequential/q_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Abs_3�
 sequential/q_conv2d_1/truediv_11RealDivsequential/q_conv2d_1/Abs_3:y:0sequential/q_conv2d_1/Pow_3:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_1/truediv_11�
sequential/q_conv2d_1/add_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sequential/q_conv2d_1/add_7/y�
sequential/q_conv2d_1/add_7AddV2$sequential/q_conv2d_1/truediv_11:z:0&sequential/q_conv2d_1/add_7/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/add_7�
sequential/q_conv2d_1/Floor_2Floorsequential/q_conv2d_1/add_7:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Floor_2�
sequential/q_conv2d_1/Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2 
sequential/q_conv2d_1/Less_2/y�
sequential/q_conv2d_1/Less_2Less!sequential/q_conv2d_1/Floor_2:y:0'sequential/q_conv2d_1/Less_2/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Less_2�
sequential/q_conv2d_1/Sign_2Sign!sequential/q_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Sign_2�
'sequential/q_conv2d_1/ones_like_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2)
'sequential/q_conv2d_1/ones_like_2/Shape�
'sequential/q_conv2d_1/ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2)
'sequential/q_conv2d_1/ones_like_2/Const�
!sequential/q_conv2d_1/ones_like_2Fill0sequential/q_conv2d_1/ones_like_2/Shape:output:00sequential/q_conv2d_1/ones_like_2/Const:output:0*
T0*&
_output_shapes
:2#
!sequential/q_conv2d_1/ones_like_2�
sequential/q_conv2d_1/mul_9/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
sequential/q_conv2d_1/mul_9/y�
sequential/q_conv2d_1/mul_9Mul*sequential/q_conv2d_1/ones_like_2:output:0&sequential/q_conv2d_1/mul_9/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/mul_9�
"sequential/q_conv2d_1/truediv_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"sequential/q_conv2d_1/truediv_12/y�
 sequential/q_conv2d_1/truediv_12RealDivsequential/q_conv2d_1/mul_9:z:0+sequential/q_conv2d_1/truediv_12/y:output:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_1/truediv_12�
 sequential/q_conv2d_1/SelectV2_2SelectV2 sequential/q_conv2d_1/Less_2:z:0!sequential/q_conv2d_1/Floor_2:y:0$sequential/q_conv2d_1/truediv_12:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_1/SelectV2_2�
sequential/q_conv2d_1/mul_10Mul sequential/q_conv2d_1/Sign_2:y:0)sequential/q_conv2d_1/SelectV2_2:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/mul_10�
sequential/q_conv2d_1/Mul_11Mul!sequential/q_conv2d_1/truediv:z:0 sequential/q_conv2d_1/mul_10:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Mul_11�
.sequential/q_conv2d_1/Mean_4/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          20
.sequential/q_conv2d_1/Mean_4/reduction_indices�
sequential/q_conv2d_1/Mean_4Mean sequential/q_conv2d_1/Mul_11:z:07sequential/q_conv2d_1/Mean_4/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_1/Mean_4�
sequential/q_conv2d_1/Mul_12Mul sequential/q_conv2d_1/mul_10:z:0 sequential/q_conv2d_1/mul_10:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Mul_12�
.sequential/q_conv2d_1/Mean_5/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          20
.sequential/q_conv2d_1/Mean_5/reduction_indices�
sequential/q_conv2d_1/Mean_5Mean sequential/q_conv2d_1/Mul_12:z:07sequential/q_conv2d_1/Mean_5/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_1/Mean_5�
sequential/q_conv2d_1/add_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d_1/add_8/y�
sequential/q_conv2d_1/add_8AddV2%sequential/q_conv2d_1/Mean_5:output:0&sequential/q_conv2d_1/add_8/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/add_8�
 sequential/q_conv2d_1/truediv_13RealDiv%sequential/q_conv2d_1/Mean_4:output:0sequential/q_conv2d_1/add_8:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_1/truediv_13�
sequential/q_conv2d_1/add_9/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d_1/add_9/y�
sequential/q_conv2d_1/add_9AddV2$sequential/q_conv2d_1/truediv_13:z:0&sequential/q_conv2d_1/add_9/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/add_9�
sequential/q_conv2d_1/Log_3Logsequential/q_conv2d_1/add_9:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Log_3�
"sequential/q_conv2d_1/truediv_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2$
"sequential/q_conv2d_1/truediv_14/y�
 sequential/q_conv2d_1/truediv_14RealDivsequential/q_conv2d_1/Log_3:y:0+sequential/q_conv2d_1/truediv_14/y:output:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_1/truediv_14�
sequential/q_conv2d_1/Round_3Round$sequential/q_conv2d_1/truediv_14:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Round_3�
sequential/q_conv2d_1/Pow_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d_1/Pow_4/x�
sequential/q_conv2d_1/Pow_4Pow&sequential/q_conv2d_1/Pow_4/x:output:0!sequential/q_conv2d_1/Round_3:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Pow_4�
sequential/q_conv2d_1/Abs_4Abs!sequential/q_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Abs_4�
 sequential/q_conv2d_1/truediv_15RealDivsequential/q_conv2d_1/Abs_4:y:0sequential/q_conv2d_1/Pow_4:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_1/truediv_15�
sequential/q_conv2d_1/add_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2 
sequential/q_conv2d_1/add_10/y�
sequential/q_conv2d_1/add_10AddV2$sequential/q_conv2d_1/truediv_15:z:0'sequential/q_conv2d_1/add_10/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/add_10�
sequential/q_conv2d_1/Floor_3Floor sequential/q_conv2d_1/add_10:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Floor_3�
sequential/q_conv2d_1/Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2 
sequential/q_conv2d_1/Less_3/y�
sequential/q_conv2d_1/Less_3Less!sequential/q_conv2d_1/Floor_3:y:0'sequential/q_conv2d_1/Less_3/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Less_3�
sequential/q_conv2d_1/Sign_3Sign!sequential/q_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Sign_3�
'sequential/q_conv2d_1/ones_like_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2)
'sequential/q_conv2d_1/ones_like_3/Shape�
'sequential/q_conv2d_1/ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2)
'sequential/q_conv2d_1/ones_like_3/Const�
!sequential/q_conv2d_1/ones_like_3Fill0sequential/q_conv2d_1/ones_like_3/Shape:output:00sequential/q_conv2d_1/ones_like_3/Const:output:0*
T0*&
_output_shapes
:2#
!sequential/q_conv2d_1/ones_like_3�
sequential/q_conv2d_1/mul_13/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2 
sequential/q_conv2d_1/mul_13/y�
sequential/q_conv2d_1/mul_13Mul*sequential/q_conv2d_1/ones_like_3:output:0'sequential/q_conv2d_1/mul_13/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/mul_13�
"sequential/q_conv2d_1/truediv_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"sequential/q_conv2d_1/truediv_16/y�
 sequential/q_conv2d_1/truediv_16RealDiv sequential/q_conv2d_1/mul_13:z:0+sequential/q_conv2d_1/truediv_16/y:output:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_1/truediv_16�
 sequential/q_conv2d_1/SelectV2_3SelectV2 sequential/q_conv2d_1/Less_3:z:0!sequential/q_conv2d_1/Floor_3:y:0$sequential/q_conv2d_1/truediv_16:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_1/SelectV2_3�
sequential/q_conv2d_1/mul_14Mul sequential/q_conv2d_1/Sign_3:y:0)sequential/q_conv2d_1/SelectV2_3:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/mul_14�
sequential/q_conv2d_1/Mul_15Mul!sequential/q_conv2d_1/truediv:z:0 sequential/q_conv2d_1/mul_14:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Mul_15�
.sequential/q_conv2d_1/Mean_6/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          20
.sequential/q_conv2d_1/Mean_6/reduction_indices�
sequential/q_conv2d_1/Mean_6Mean sequential/q_conv2d_1/Mul_15:z:07sequential/q_conv2d_1/Mean_6/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_1/Mean_6�
sequential/q_conv2d_1/Mul_16Mul sequential/q_conv2d_1/mul_14:z:0 sequential/q_conv2d_1/mul_14:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Mul_16�
.sequential/q_conv2d_1/Mean_7/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          20
.sequential/q_conv2d_1/Mean_7/reduction_indices�
sequential/q_conv2d_1/Mean_7Mean sequential/q_conv2d_1/Mul_16:z:07sequential/q_conv2d_1/Mean_7/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_1/Mean_7�
sequential/q_conv2d_1/add_11/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32 
sequential/q_conv2d_1/add_11/y�
sequential/q_conv2d_1/add_11AddV2%sequential/q_conv2d_1/Mean_7:output:0'sequential/q_conv2d_1/add_11/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/add_11�
 sequential/q_conv2d_1/truediv_17RealDiv%sequential/q_conv2d_1/Mean_6:output:0 sequential/q_conv2d_1/add_11:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_1/truediv_17�
sequential/q_conv2d_1/add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32 
sequential/q_conv2d_1/add_12/y�
sequential/q_conv2d_1/add_12AddV2$sequential/q_conv2d_1/truediv_17:z:0'sequential/q_conv2d_1/add_12/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/add_12�
sequential/q_conv2d_1/Log_4Log sequential/q_conv2d_1/add_12:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Log_4�
"sequential/q_conv2d_1/truediv_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2$
"sequential/q_conv2d_1/truediv_18/y�
 sequential/q_conv2d_1/truediv_18RealDivsequential/q_conv2d_1/Log_4:y:0+sequential/q_conv2d_1/truediv_18/y:output:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_1/truediv_18�
sequential/q_conv2d_1/Round_4Round$sequential/q_conv2d_1/truediv_18:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Round_4�
sequential/q_conv2d_1/Pow_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d_1/Pow_5/x�
sequential/q_conv2d_1/Pow_5Pow&sequential/q_conv2d_1/Pow_5/x:output:0!sequential/q_conv2d_1/Round_4:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Pow_5�
sequential/q_conv2d_1/Abs_5Abs!sequential/q_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Abs_5�
 sequential/q_conv2d_1/truediv_19RealDivsequential/q_conv2d_1/Abs_5:y:0sequential/q_conv2d_1/Pow_5:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_1/truediv_19�
sequential/q_conv2d_1/add_13/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2 
sequential/q_conv2d_1/add_13/y�
sequential/q_conv2d_1/add_13AddV2$sequential/q_conv2d_1/truediv_19:z:0'sequential/q_conv2d_1/add_13/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/add_13�
sequential/q_conv2d_1/Floor_4Floor sequential/q_conv2d_1/add_13:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Floor_4�
sequential/q_conv2d_1/Less_4/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2 
sequential/q_conv2d_1/Less_4/y�
sequential/q_conv2d_1/Less_4Less!sequential/q_conv2d_1/Floor_4:y:0'sequential/q_conv2d_1/Less_4/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Less_4�
sequential/q_conv2d_1/Sign_4Sign!sequential/q_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Sign_4�
'sequential/q_conv2d_1/ones_like_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2)
'sequential/q_conv2d_1/ones_like_4/Shape�
'sequential/q_conv2d_1/ones_like_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2)
'sequential/q_conv2d_1/ones_like_4/Const�
!sequential/q_conv2d_1/ones_like_4Fill0sequential/q_conv2d_1/ones_like_4/Shape:output:00sequential/q_conv2d_1/ones_like_4/Const:output:0*
T0*&
_output_shapes
:2#
!sequential/q_conv2d_1/ones_like_4�
sequential/q_conv2d_1/mul_17/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2 
sequential/q_conv2d_1/mul_17/y�
sequential/q_conv2d_1/mul_17Mul*sequential/q_conv2d_1/ones_like_4:output:0'sequential/q_conv2d_1/mul_17/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/mul_17�
"sequential/q_conv2d_1/truediv_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"sequential/q_conv2d_1/truediv_20/y�
 sequential/q_conv2d_1/truediv_20RealDiv sequential/q_conv2d_1/mul_17:z:0+sequential/q_conv2d_1/truediv_20/y:output:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_1/truediv_20�
 sequential/q_conv2d_1/SelectV2_4SelectV2 sequential/q_conv2d_1/Less_4:z:0!sequential/q_conv2d_1/Floor_4:y:0$sequential/q_conv2d_1/truediv_20:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_1/SelectV2_4�
sequential/q_conv2d_1/mul_18Mul sequential/q_conv2d_1/Sign_4:y:0)sequential/q_conv2d_1/SelectV2_4:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/mul_18�
sequential/q_conv2d_1/Mul_19Mul!sequential/q_conv2d_1/truediv:z:0 sequential/q_conv2d_1/mul_18:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Mul_19�
.sequential/q_conv2d_1/Mean_8/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          20
.sequential/q_conv2d_1/Mean_8/reduction_indices�
sequential/q_conv2d_1/Mean_8Mean sequential/q_conv2d_1/Mul_19:z:07sequential/q_conv2d_1/Mean_8/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_1/Mean_8�
sequential/q_conv2d_1/Mul_20Mul sequential/q_conv2d_1/mul_18:z:0 sequential/q_conv2d_1/mul_18:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Mul_20�
.sequential/q_conv2d_1/Mean_9/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          20
.sequential/q_conv2d_1/Mean_9/reduction_indices�
sequential/q_conv2d_1/Mean_9Mean sequential/q_conv2d_1/Mul_20:z:07sequential/q_conv2d_1/Mean_9/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_1/Mean_9�
sequential/q_conv2d_1/add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32 
sequential/q_conv2d_1/add_14/y�
sequential/q_conv2d_1/add_14AddV2%sequential/q_conv2d_1/Mean_9:output:0'sequential/q_conv2d_1/add_14/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/add_14�
 sequential/q_conv2d_1/truediv_21RealDiv%sequential/q_conv2d_1/Mean_8:output:0 sequential/q_conv2d_1/add_14:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_1/truediv_21�
sequential/q_conv2d_1/add_15/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32 
sequential/q_conv2d_1/add_15/y�
sequential/q_conv2d_1/add_15AddV2$sequential/q_conv2d_1/truediv_21:z:0'sequential/q_conv2d_1/add_15/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/add_15�
sequential/q_conv2d_1/Log_5Log sequential/q_conv2d_1/add_15:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Log_5�
"sequential/q_conv2d_1/truediv_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2$
"sequential/q_conv2d_1/truediv_22/y�
 sequential/q_conv2d_1/truediv_22RealDivsequential/q_conv2d_1/Log_5:y:0+sequential/q_conv2d_1/truediv_22/y:output:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_1/truediv_22�
sequential/q_conv2d_1/Round_5Round$sequential/q_conv2d_1/truediv_22:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Round_5�
sequential/q_conv2d_1/Pow_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d_1/Pow_6/x�
sequential/q_conv2d_1/Pow_6Pow&sequential/q_conv2d_1/Pow_6/x:output:0!sequential/q_conv2d_1/Round_5:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Pow_6�
sequential/q_conv2d_1/mul_21/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2 
sequential/q_conv2d_1/mul_21/y�
sequential/q_conv2d_1/mul_21Mulsequential/q_conv2d_1/Pow_6:z:0'sequential/q_conv2d_1/mul_21/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/mul_21�
sequential/q_conv2d_1/mul_22Mulsequential/q_conv2d_1/Cast:y:0!sequential/q_conv2d_1/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/mul_22�
sequential/q_conv2d_1/mul_23Mulsequential/q_conv2d_1/Cast:y:0 sequential/q_conv2d_1/mul_18:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/mul_23�
"sequential/q_conv2d_1/truediv_23/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2$
"sequential/q_conv2d_1/truediv_23/y�
 sequential/q_conv2d_1/truediv_23RealDiv sequential/q_conv2d_1/mul_23:z:0+sequential/q_conv2d_1/truediv_23/y:output:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_1/truediv_23�
sequential/q_conv2d_1/mul_24Mul sequential/q_conv2d_1/mul_21:z:0$sequential/q_conv2d_1/truediv_23:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/mul_24�
sequential/q_conv2d_1/NegNeg sequential/q_conv2d_1/mul_22:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/Neg�
sequential/q_conv2d_1/add_16AddV2sequential/q_conv2d_1/Neg:y:0 sequential/q_conv2d_1/mul_24:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/add_16�
sequential/q_conv2d_1/mul_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2 
sequential/q_conv2d_1/mul_25/x�
sequential/q_conv2d_1/mul_25Mul'sequential/q_conv2d_1/mul_25/x:output:0 sequential/q_conv2d_1/add_16:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/mul_25�
"sequential/q_conv2d_1/StopGradientStopGradient sequential/q_conv2d_1/mul_25:z:0*
T0*&
_output_shapes
:2$
"sequential/q_conv2d_1/StopGradient�
sequential/q_conv2d_1/add_17AddV2 sequential/q_conv2d_1/mul_22:z:0+sequential/q_conv2d_1/StopGradient:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_1/add_17�
!sequential/q_conv2d_1/convolutionConv2D!sequential/q_activation/add_3:z:0 sequential/q_conv2d_1/add_17:z:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2#
!sequential/q_conv2d_1/convolution�
,sequential/q_conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_q_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential/q_conv2d_1/BiasAdd/ReadVariableOp�
sequential/q_conv2d_1/BiasAddBiasAdd*sequential/q_conv2d_1/convolution:output:04sequential/q_conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
sequential/q_conv2d_1/BiasAdd�
sequential/q_activation_1/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential/q_activation_1/Pow/x�
sequential/q_activation_1/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential/q_activation_1/Pow/y�
sequential/q_activation_1/PowPow(sequential/q_activation_1/Pow/x:output:0(sequential/q_activation_1/Pow/y:output:0*
T0*
_output_shapes
: 2
sequential/q_activation_1/Pow�
sequential/q_activation_1/CastCast!sequential/q_activation_1/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2 
sequential/q_activation_1/Cast�
!sequential/q_activation_1/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential/q_activation_1/Pow_1/x�
!sequential/q_activation_1/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential/q_activation_1/Pow_1/y�
sequential/q_activation_1/Pow_1Pow*sequential/q_activation_1/Pow_1/x:output:0*sequential/q_activation_1/Pow_1/y:output:0*
T0*
_output_shapes
: 2!
sequential/q_activation_1/Pow_1�
 sequential/q_activation_1/Cast_1Cast#sequential/q_activation_1/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 sequential/q_activation_1/Cast_1�
sequential/q_activation_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2!
sequential/q_activation_1/Const�
"sequential/q_activation_1/Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential/q_activation_1/Cast_2/x�
 sequential/q_activation_1/Cast_2Cast+sequential/q_activation_1/Cast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 sequential/q_activation_1/Cast_2�
sequential/q_activation_1/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �A2!
sequential/q_activation_1/sub/y�
sequential/q_activation_1/subSub$sequential/q_activation_1/Cast_2:y:0(sequential/q_activation_1/sub/y:output:0*
T0*
_output_shapes
: 2
sequential/q_activation_1/sub�
sequential/q_activation_1/Pow_2Pow(sequential/q_activation_1/Const:output:0!sequential/q_activation_1/sub:z:0*
T0*
_output_shapes
: 2!
sequential/q_activation_1/Pow_2�
sequential/q_activation_1/sub_1Sub$sequential/q_activation_1/Cast_1:y:0#sequential/q_activation_1/Pow_2:z:0*
T0*
_output_shapes
: 2!
sequential/q_activation_1/sub_1�
#sequential/q_activation_1/LessEqual	LessEqual&sequential/q_conv2d_1/BiasAdd:output:0#sequential/q_activation_1/sub_1:z:0*
T0*/
_output_shapes
:���������2%
#sequential/q_activation_1/LessEqual�
sequential/q_activation_1/ReluRelu&sequential/q_conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������2 
sequential/q_activation_1/Relu�
)sequential/q_activation_1/ones_like/ShapeShape&sequential/q_conv2d_1/BiasAdd:output:0*
T0*
_output_shapes
:2+
)sequential/q_activation_1/ones_like/Shape�
)sequential/q_activation_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)sequential/q_activation_1/ones_like/Const�
#sequential/q_activation_1/ones_likeFill2sequential/q_activation_1/ones_like/Shape:output:02sequential/q_activation_1/ones_like/Const:output:0*
T0*/
_output_shapes
:���������2%
#sequential/q_activation_1/ones_like�
sequential/q_activation_1/sub_2Sub$sequential/q_activation_1/Cast_1:y:0#sequential/q_activation_1/Pow_2:z:0*
T0*
_output_shapes
: 2!
sequential/q_activation_1/sub_2�
sequential/q_activation_1/mulMul,sequential/q_activation_1/ones_like:output:0#sequential/q_activation_1/sub_2:z:0*
T0*/
_output_shapes
:���������2
sequential/q_activation_1/mul�
"sequential/q_activation_1/SelectV2SelectV2'sequential/q_activation_1/LessEqual:z:0,sequential/q_activation_1/Relu:activations:0!sequential/q_activation_1/mul:z:0*
T0*/
_output_shapes
:���������2$
"sequential/q_activation_1/SelectV2�
sequential/q_activation_1/mul_1Mul&sequential/q_conv2d_1/BiasAdd:output:0"sequential/q_activation_1/Cast:y:0*
T0*/
_output_shapes
:���������2!
sequential/q_activation_1/mul_1�
!sequential/q_activation_1/truedivRealDiv#sequential/q_activation_1/mul_1:z:0$sequential/q_activation_1/Cast_1:y:0*
T0*/
_output_shapes
:���������2#
!sequential/q_activation_1/truediv�
sequential/q_activation_1/NegNeg%sequential/q_activation_1/truediv:z:0*
T0*/
_output_shapes
:���������2
sequential/q_activation_1/Neg�
sequential/q_activation_1/RoundRound%sequential/q_activation_1/truediv:z:0*
T0*/
_output_shapes
:���������2!
sequential/q_activation_1/Round�
sequential/q_activation_1/addAddV2!sequential/q_activation_1/Neg:y:0#sequential/q_activation_1/Round:y:0*
T0*/
_output_shapes
:���������2
sequential/q_activation_1/add�
&sequential/q_activation_1/StopGradientStopGradient!sequential/q_activation_1/add:z:0*
T0*/
_output_shapes
:���������2(
&sequential/q_activation_1/StopGradient�
sequential/q_activation_1/add_1AddV2%sequential/q_activation_1/truediv:z:0/sequential/q_activation_1/StopGradient:output:0*
T0*/
_output_shapes
:���������2!
sequential/q_activation_1/add_1�
#sequential/q_activation_1/truediv_1RealDiv#sequential/q_activation_1/add_1:z:0"sequential/q_activation_1/Cast:y:0*
T0*/
_output_shapes
:���������2%
#sequential/q_activation_1/truediv_1�
%sequential/q_activation_1/truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2'
%sequential/q_activation_1/truediv_2/x�
#sequential/q_activation_1/truediv_2RealDiv.sequential/q_activation_1/truediv_2/x:output:0"sequential/q_activation_1/Cast:y:0*
T0*
_output_shapes
: 2%
#sequential/q_activation_1/truediv_2�
!sequential/q_activation_1/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2#
!sequential/q_activation_1/sub_3/x�
sequential/q_activation_1/sub_3Sub*sequential/q_activation_1/sub_3/x:output:0'sequential/q_activation_1/truediv_2:z:0*
T0*
_output_shapes
: 2!
sequential/q_activation_1/sub_3�
/sequential/q_activation_1/clip_by_value/MinimumMinimum'sequential/q_activation_1/truediv_1:z:0#sequential/q_activation_1/sub_3:z:0*
T0*/
_output_shapes
:���������21
/sequential/q_activation_1/clip_by_value/Minimum�
)sequential/q_activation_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)sequential/q_activation_1/clip_by_value/y�
'sequential/q_activation_1/clip_by_valueMaximum3sequential/q_activation_1/clip_by_value/Minimum:z:02sequential/q_activation_1/clip_by_value/y:output:0*
T0*/
_output_shapes
:���������2)
'sequential/q_activation_1/clip_by_value�
sequential/q_activation_1/mul_2Mul$sequential/q_activation_1/Cast_1:y:0+sequential/q_activation_1/clip_by_value:z:0*
T0*/
_output_shapes
:���������2!
sequential/q_activation_1/mul_2�
sequential/q_activation_1/Neg_1Neg+sequential/q_activation_1/SelectV2:output:0*
T0*/
_output_shapes
:���������2!
sequential/q_activation_1/Neg_1�
sequential/q_activation_1/add_2AddV2#sequential/q_activation_1/Neg_1:y:0#sequential/q_activation_1/mul_2:z:0*
T0*/
_output_shapes
:���������2!
sequential/q_activation_1/add_2�
!sequential/q_activation_1/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2#
!sequential/q_activation_1/mul_3/x�
sequential/q_activation_1/mul_3Mul*sequential/q_activation_1/mul_3/x:output:0#sequential/q_activation_1/add_2:z:0*
T0*/
_output_shapes
:���������2!
sequential/q_activation_1/mul_3�
(sequential/q_activation_1/StopGradient_1StopGradient#sequential/q_activation_1/mul_3:z:0*
T0*/
_output_shapes
:���������2*
(sequential/q_activation_1/StopGradient_1�
sequential/q_activation_1/add_3AddV2+sequential/q_activation_1/SelectV2:output:01sequential/q_activation_1/StopGradient_1:output:0*
T0*/
_output_shapes
:���������2!
sequential/q_activation_1/add_3|
sequential/q_conv2d_2/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
sequential/q_conv2d_2/Pow/x|
sequential/q_conv2d_2/Pow/yConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/q_conv2d_2/Pow/y�
sequential/q_conv2d_2/PowPow$sequential/q_conv2d_2/Pow/x:output:0$sequential/q_conv2d_2/Pow/y:output:0*
T0*
_output_shapes
: 2
sequential/q_conv2d_2/Pow�
sequential/q_conv2d_2/CastCastsequential/q_conv2d_2/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
sequential/q_conv2d_2/Cast�
$sequential/q_conv2d_2/ReadVariableOpReadVariableOp-sequential_q_conv2d_2_readvariableop_resource*&
_output_shapes
:*
dtype02&
$sequential/q_conv2d_2/ReadVariableOp�
sequential/q_conv2d_2/truedivRealDiv,sequential/q_conv2d_2/ReadVariableOp:value:0sequential/q_conv2d_2/Cast:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/truediv�
sequential/q_conv2d_2/AbsAbs!sequential/q_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Abs�
+sequential/q_conv2d_2/Max/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2-
+sequential/q_conv2d_2/Max/reduction_indices�
sequential/q_conv2d_2/MaxMaxsequential/q_conv2d_2/Abs:y:04sequential/q_conv2d_2/Max/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_2/Max
sequential/q_conv2d_2/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d_2/mul/y�
sequential/q_conv2d_2/mulMul"sequential/q_conv2d_2/Max:output:0$sequential/q_conv2d_2/mul/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/mul�
!sequential/q_conv2d_2/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2#
!sequential/q_conv2d_2/truediv_1/y�
sequential/q_conv2d_2/truediv_1RealDivsequential/q_conv2d_2/mul:z:0*sequential/q_conv2d_2/truediv_1/y:output:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d_2/truediv_1
sequential/q_conv2d_2/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d_2/add/y�
sequential/q_conv2d_2/addAddV2#sequential/q_conv2d_2/truediv_1:z:0$sequential/q_conv2d_2/add/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/add�
sequential/q_conv2d_2/LogLogsequential/q_conv2d_2/add:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Log�
!sequential/q_conv2d_2/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2#
!sequential/q_conv2d_2/truediv_2/y�
sequential/q_conv2d_2/truediv_2RealDivsequential/q_conv2d_2/Log:y:0*sequential/q_conv2d_2/truediv_2/y:output:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d_2/truediv_2�
sequential/q_conv2d_2/RoundRound#sequential/q_conv2d_2/truediv_2:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Round�
sequential/q_conv2d_2/Pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d_2/Pow_1/x�
sequential/q_conv2d_2/Pow_1Pow&sequential/q_conv2d_2/Pow_1/x:output:0sequential/q_conv2d_2/Round:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Pow_1�
sequential/q_conv2d_2/Abs_1Abs!sequential/q_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Abs_1�
sequential/q_conv2d_2/truediv_3RealDivsequential/q_conv2d_2/Abs_1:y:0sequential/q_conv2d_2/Pow_1:z:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d_2/truediv_3�
sequential/q_conv2d_2/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sequential/q_conv2d_2/add_1/y�
sequential/q_conv2d_2/add_1AddV2#sequential/q_conv2d_2/truediv_3:z:0&sequential/q_conv2d_2/add_1/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/add_1�
sequential/q_conv2d_2/FloorFloorsequential/q_conv2d_2/add_1:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Floor�
sequential/q_conv2d_2/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
sequential/q_conv2d_2/Less/y�
sequential/q_conv2d_2/LessLesssequential/q_conv2d_2/Floor:y:0%sequential/q_conv2d_2/Less/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Less�
sequential/q_conv2d_2/SignSign!sequential/q_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Sign�
%sequential/q_conv2d_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2'
%sequential/q_conv2d_2/ones_like/Shape�
%sequential/q_conv2d_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2'
%sequential/q_conv2d_2/ones_like/Const�
sequential/q_conv2d_2/ones_likeFill.sequential/q_conv2d_2/ones_like/Shape:output:0.sequential/q_conv2d_2/ones_like/Const:output:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d_2/ones_like�
sequential/q_conv2d_2/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
sequential/q_conv2d_2/mul_1/y�
sequential/q_conv2d_2/mul_1Mul(sequential/q_conv2d_2/ones_like:output:0&sequential/q_conv2d_2/mul_1/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/mul_1�
!sequential/q_conv2d_2/truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!sequential/q_conv2d_2/truediv_4/y�
sequential/q_conv2d_2/truediv_4RealDivsequential/q_conv2d_2/mul_1:z:0*sequential/q_conv2d_2/truediv_4/y:output:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d_2/truediv_4�
sequential/q_conv2d_2/SelectV2SelectV2sequential/q_conv2d_2/Less:z:0sequential/q_conv2d_2/Floor:y:0#sequential/q_conv2d_2/truediv_4:z:0*
T0*&
_output_shapes
:2 
sequential/q_conv2d_2/SelectV2�
sequential/q_conv2d_2/mul_2Mulsequential/q_conv2d_2/Sign:y:0'sequential/q_conv2d_2/SelectV2:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/mul_2�
sequential/q_conv2d_2/Mul_3Mul!sequential/q_conv2d_2/truediv:z:0sequential/q_conv2d_2/mul_2:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Mul_3�
,sequential/q_conv2d_2/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2.
,sequential/q_conv2d_2/Mean/reduction_indices�
sequential/q_conv2d_2/MeanMeansequential/q_conv2d_2/Mul_3:z:05sequential/q_conv2d_2/Mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_2/Mean�
sequential/q_conv2d_2/Mul_4Mulsequential/q_conv2d_2/mul_2:z:0sequential/q_conv2d_2/mul_2:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Mul_4�
.sequential/q_conv2d_2/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          20
.sequential/q_conv2d_2/Mean_1/reduction_indices�
sequential/q_conv2d_2/Mean_1Meansequential/q_conv2d_2/Mul_4:z:07sequential/q_conv2d_2/Mean_1/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_2/Mean_1�
sequential/q_conv2d_2/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d_2/add_2/y�
sequential/q_conv2d_2/add_2AddV2%sequential/q_conv2d_2/Mean_1:output:0&sequential/q_conv2d_2/add_2/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/add_2�
sequential/q_conv2d_2/truediv_5RealDiv#sequential/q_conv2d_2/Mean:output:0sequential/q_conv2d_2/add_2:z:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d_2/truediv_5�
sequential/q_conv2d_2/add_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d_2/add_3/y�
sequential/q_conv2d_2/add_3AddV2#sequential/q_conv2d_2/truediv_5:z:0&sequential/q_conv2d_2/add_3/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/add_3�
sequential/q_conv2d_2/Log_1Logsequential/q_conv2d_2/add_3:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Log_1�
!sequential/q_conv2d_2/truediv_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2#
!sequential/q_conv2d_2/truediv_6/y�
sequential/q_conv2d_2/truediv_6RealDivsequential/q_conv2d_2/Log_1:y:0*sequential/q_conv2d_2/truediv_6/y:output:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d_2/truediv_6�
sequential/q_conv2d_2/Round_1Round#sequential/q_conv2d_2/truediv_6:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Round_1�
sequential/q_conv2d_2/Pow_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d_2/Pow_2/x�
sequential/q_conv2d_2/Pow_2Pow&sequential/q_conv2d_2/Pow_2/x:output:0!sequential/q_conv2d_2/Round_1:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Pow_2�
sequential/q_conv2d_2/Abs_2Abs!sequential/q_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Abs_2�
sequential/q_conv2d_2/truediv_7RealDivsequential/q_conv2d_2/Abs_2:y:0sequential/q_conv2d_2/Pow_2:z:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d_2/truediv_7�
sequential/q_conv2d_2/add_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sequential/q_conv2d_2/add_4/y�
sequential/q_conv2d_2/add_4AddV2#sequential/q_conv2d_2/truediv_7:z:0&sequential/q_conv2d_2/add_4/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/add_4�
sequential/q_conv2d_2/Floor_1Floorsequential/q_conv2d_2/add_4:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Floor_1�
sequential/q_conv2d_2/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2 
sequential/q_conv2d_2/Less_1/y�
sequential/q_conv2d_2/Less_1Less!sequential/q_conv2d_2/Floor_1:y:0'sequential/q_conv2d_2/Less_1/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Less_1�
sequential/q_conv2d_2/Sign_1Sign!sequential/q_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Sign_1�
'sequential/q_conv2d_2/ones_like_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2)
'sequential/q_conv2d_2/ones_like_1/Shape�
'sequential/q_conv2d_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2)
'sequential/q_conv2d_2/ones_like_1/Const�
!sequential/q_conv2d_2/ones_like_1Fill0sequential/q_conv2d_2/ones_like_1/Shape:output:00sequential/q_conv2d_2/ones_like_1/Const:output:0*
T0*&
_output_shapes
:2#
!sequential/q_conv2d_2/ones_like_1�
sequential/q_conv2d_2/mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
sequential/q_conv2d_2/mul_5/y�
sequential/q_conv2d_2/mul_5Mul*sequential/q_conv2d_2/ones_like_1:output:0&sequential/q_conv2d_2/mul_5/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/mul_5�
!sequential/q_conv2d_2/truediv_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!sequential/q_conv2d_2/truediv_8/y�
sequential/q_conv2d_2/truediv_8RealDivsequential/q_conv2d_2/mul_5:z:0*sequential/q_conv2d_2/truediv_8/y:output:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d_2/truediv_8�
 sequential/q_conv2d_2/SelectV2_1SelectV2 sequential/q_conv2d_2/Less_1:z:0!sequential/q_conv2d_2/Floor_1:y:0#sequential/q_conv2d_2/truediv_8:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_2/SelectV2_1�
sequential/q_conv2d_2/mul_6Mul sequential/q_conv2d_2/Sign_1:y:0)sequential/q_conv2d_2/SelectV2_1:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/mul_6�
sequential/q_conv2d_2/Mul_7Mul!sequential/q_conv2d_2/truediv:z:0sequential/q_conv2d_2/mul_6:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Mul_7�
.sequential/q_conv2d_2/Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          20
.sequential/q_conv2d_2/Mean_2/reduction_indices�
sequential/q_conv2d_2/Mean_2Meansequential/q_conv2d_2/Mul_7:z:07sequential/q_conv2d_2/Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_2/Mean_2�
sequential/q_conv2d_2/Mul_8Mulsequential/q_conv2d_2/mul_6:z:0sequential/q_conv2d_2/mul_6:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Mul_8�
.sequential/q_conv2d_2/Mean_3/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          20
.sequential/q_conv2d_2/Mean_3/reduction_indices�
sequential/q_conv2d_2/Mean_3Meansequential/q_conv2d_2/Mul_8:z:07sequential/q_conv2d_2/Mean_3/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_2/Mean_3�
sequential/q_conv2d_2/add_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d_2/add_5/y�
sequential/q_conv2d_2/add_5AddV2%sequential/q_conv2d_2/Mean_3:output:0&sequential/q_conv2d_2/add_5/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/add_5�
sequential/q_conv2d_2/truediv_9RealDiv%sequential/q_conv2d_2/Mean_2:output:0sequential/q_conv2d_2/add_5:z:0*
T0*&
_output_shapes
:2!
sequential/q_conv2d_2/truediv_9�
sequential/q_conv2d_2/add_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d_2/add_6/y�
sequential/q_conv2d_2/add_6AddV2#sequential/q_conv2d_2/truediv_9:z:0&sequential/q_conv2d_2/add_6/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/add_6�
sequential/q_conv2d_2/Log_2Logsequential/q_conv2d_2/add_6:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Log_2�
"sequential/q_conv2d_2/truediv_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2$
"sequential/q_conv2d_2/truediv_10/y�
 sequential/q_conv2d_2/truediv_10RealDivsequential/q_conv2d_2/Log_2:y:0+sequential/q_conv2d_2/truediv_10/y:output:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_2/truediv_10�
sequential/q_conv2d_2/Round_2Round$sequential/q_conv2d_2/truediv_10:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Round_2�
sequential/q_conv2d_2/Pow_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d_2/Pow_3/x�
sequential/q_conv2d_2/Pow_3Pow&sequential/q_conv2d_2/Pow_3/x:output:0!sequential/q_conv2d_2/Round_2:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Pow_3�
sequential/q_conv2d_2/Abs_3Abs!sequential/q_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Abs_3�
 sequential/q_conv2d_2/truediv_11RealDivsequential/q_conv2d_2/Abs_3:y:0sequential/q_conv2d_2/Pow_3:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_2/truediv_11�
sequential/q_conv2d_2/add_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sequential/q_conv2d_2/add_7/y�
sequential/q_conv2d_2/add_7AddV2$sequential/q_conv2d_2/truediv_11:z:0&sequential/q_conv2d_2/add_7/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/add_7�
sequential/q_conv2d_2/Floor_2Floorsequential/q_conv2d_2/add_7:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Floor_2�
sequential/q_conv2d_2/Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2 
sequential/q_conv2d_2/Less_2/y�
sequential/q_conv2d_2/Less_2Less!sequential/q_conv2d_2/Floor_2:y:0'sequential/q_conv2d_2/Less_2/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Less_2�
sequential/q_conv2d_2/Sign_2Sign!sequential/q_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Sign_2�
'sequential/q_conv2d_2/ones_like_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2)
'sequential/q_conv2d_2/ones_like_2/Shape�
'sequential/q_conv2d_2/ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2)
'sequential/q_conv2d_2/ones_like_2/Const�
!sequential/q_conv2d_2/ones_like_2Fill0sequential/q_conv2d_2/ones_like_2/Shape:output:00sequential/q_conv2d_2/ones_like_2/Const:output:0*
T0*&
_output_shapes
:2#
!sequential/q_conv2d_2/ones_like_2�
sequential/q_conv2d_2/mul_9/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
sequential/q_conv2d_2/mul_9/y�
sequential/q_conv2d_2/mul_9Mul*sequential/q_conv2d_2/ones_like_2:output:0&sequential/q_conv2d_2/mul_9/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/mul_9�
"sequential/q_conv2d_2/truediv_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"sequential/q_conv2d_2/truediv_12/y�
 sequential/q_conv2d_2/truediv_12RealDivsequential/q_conv2d_2/mul_9:z:0+sequential/q_conv2d_2/truediv_12/y:output:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_2/truediv_12�
 sequential/q_conv2d_2/SelectV2_2SelectV2 sequential/q_conv2d_2/Less_2:z:0!sequential/q_conv2d_2/Floor_2:y:0$sequential/q_conv2d_2/truediv_12:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_2/SelectV2_2�
sequential/q_conv2d_2/mul_10Mul sequential/q_conv2d_2/Sign_2:y:0)sequential/q_conv2d_2/SelectV2_2:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/mul_10�
sequential/q_conv2d_2/Mul_11Mul!sequential/q_conv2d_2/truediv:z:0 sequential/q_conv2d_2/mul_10:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Mul_11�
.sequential/q_conv2d_2/Mean_4/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          20
.sequential/q_conv2d_2/Mean_4/reduction_indices�
sequential/q_conv2d_2/Mean_4Mean sequential/q_conv2d_2/Mul_11:z:07sequential/q_conv2d_2/Mean_4/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_2/Mean_4�
sequential/q_conv2d_2/Mul_12Mul sequential/q_conv2d_2/mul_10:z:0 sequential/q_conv2d_2/mul_10:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Mul_12�
.sequential/q_conv2d_2/Mean_5/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          20
.sequential/q_conv2d_2/Mean_5/reduction_indices�
sequential/q_conv2d_2/Mean_5Mean sequential/q_conv2d_2/Mul_12:z:07sequential/q_conv2d_2/Mean_5/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_2/Mean_5�
sequential/q_conv2d_2/add_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d_2/add_8/y�
sequential/q_conv2d_2/add_8AddV2%sequential/q_conv2d_2/Mean_5:output:0&sequential/q_conv2d_2/add_8/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/add_8�
 sequential/q_conv2d_2/truediv_13RealDiv%sequential/q_conv2d_2/Mean_4:output:0sequential/q_conv2d_2/add_8:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_2/truediv_13�
sequential/q_conv2d_2/add_9/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
sequential/q_conv2d_2/add_9/y�
sequential/q_conv2d_2/add_9AddV2$sequential/q_conv2d_2/truediv_13:z:0&sequential/q_conv2d_2/add_9/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/add_9�
sequential/q_conv2d_2/Log_3Logsequential/q_conv2d_2/add_9:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Log_3�
"sequential/q_conv2d_2/truediv_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2$
"sequential/q_conv2d_2/truediv_14/y�
 sequential/q_conv2d_2/truediv_14RealDivsequential/q_conv2d_2/Log_3:y:0+sequential/q_conv2d_2/truediv_14/y:output:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_2/truediv_14�
sequential/q_conv2d_2/Round_3Round$sequential/q_conv2d_2/truediv_14:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Round_3�
sequential/q_conv2d_2/Pow_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d_2/Pow_4/x�
sequential/q_conv2d_2/Pow_4Pow&sequential/q_conv2d_2/Pow_4/x:output:0!sequential/q_conv2d_2/Round_3:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Pow_4�
sequential/q_conv2d_2/Abs_4Abs!sequential/q_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Abs_4�
 sequential/q_conv2d_2/truediv_15RealDivsequential/q_conv2d_2/Abs_4:y:0sequential/q_conv2d_2/Pow_4:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_2/truediv_15�
sequential/q_conv2d_2/add_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2 
sequential/q_conv2d_2/add_10/y�
sequential/q_conv2d_2/add_10AddV2$sequential/q_conv2d_2/truediv_15:z:0'sequential/q_conv2d_2/add_10/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/add_10�
sequential/q_conv2d_2/Floor_3Floor sequential/q_conv2d_2/add_10:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Floor_3�
sequential/q_conv2d_2/Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2 
sequential/q_conv2d_2/Less_3/y�
sequential/q_conv2d_2/Less_3Less!sequential/q_conv2d_2/Floor_3:y:0'sequential/q_conv2d_2/Less_3/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Less_3�
sequential/q_conv2d_2/Sign_3Sign!sequential/q_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Sign_3�
'sequential/q_conv2d_2/ones_like_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2)
'sequential/q_conv2d_2/ones_like_3/Shape�
'sequential/q_conv2d_2/ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2)
'sequential/q_conv2d_2/ones_like_3/Const�
!sequential/q_conv2d_2/ones_like_3Fill0sequential/q_conv2d_2/ones_like_3/Shape:output:00sequential/q_conv2d_2/ones_like_3/Const:output:0*
T0*&
_output_shapes
:2#
!sequential/q_conv2d_2/ones_like_3�
sequential/q_conv2d_2/mul_13/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2 
sequential/q_conv2d_2/mul_13/y�
sequential/q_conv2d_2/mul_13Mul*sequential/q_conv2d_2/ones_like_3:output:0'sequential/q_conv2d_2/mul_13/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/mul_13�
"sequential/q_conv2d_2/truediv_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"sequential/q_conv2d_2/truediv_16/y�
 sequential/q_conv2d_2/truediv_16RealDiv sequential/q_conv2d_2/mul_13:z:0+sequential/q_conv2d_2/truediv_16/y:output:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_2/truediv_16�
 sequential/q_conv2d_2/SelectV2_3SelectV2 sequential/q_conv2d_2/Less_3:z:0!sequential/q_conv2d_2/Floor_3:y:0$sequential/q_conv2d_2/truediv_16:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_2/SelectV2_3�
sequential/q_conv2d_2/mul_14Mul sequential/q_conv2d_2/Sign_3:y:0)sequential/q_conv2d_2/SelectV2_3:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/mul_14�
sequential/q_conv2d_2/Mul_15Mul!sequential/q_conv2d_2/truediv:z:0 sequential/q_conv2d_2/mul_14:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Mul_15�
.sequential/q_conv2d_2/Mean_6/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          20
.sequential/q_conv2d_2/Mean_6/reduction_indices�
sequential/q_conv2d_2/Mean_6Mean sequential/q_conv2d_2/Mul_15:z:07sequential/q_conv2d_2/Mean_6/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_2/Mean_6�
sequential/q_conv2d_2/Mul_16Mul sequential/q_conv2d_2/mul_14:z:0 sequential/q_conv2d_2/mul_14:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Mul_16�
.sequential/q_conv2d_2/Mean_7/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          20
.sequential/q_conv2d_2/Mean_7/reduction_indices�
sequential/q_conv2d_2/Mean_7Mean sequential/q_conv2d_2/Mul_16:z:07sequential/q_conv2d_2/Mean_7/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_2/Mean_7�
sequential/q_conv2d_2/add_11/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32 
sequential/q_conv2d_2/add_11/y�
sequential/q_conv2d_2/add_11AddV2%sequential/q_conv2d_2/Mean_7:output:0'sequential/q_conv2d_2/add_11/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/add_11�
 sequential/q_conv2d_2/truediv_17RealDiv%sequential/q_conv2d_2/Mean_6:output:0 sequential/q_conv2d_2/add_11:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_2/truediv_17�
sequential/q_conv2d_2/add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32 
sequential/q_conv2d_2/add_12/y�
sequential/q_conv2d_2/add_12AddV2$sequential/q_conv2d_2/truediv_17:z:0'sequential/q_conv2d_2/add_12/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/add_12�
sequential/q_conv2d_2/Log_4Log sequential/q_conv2d_2/add_12:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Log_4�
"sequential/q_conv2d_2/truediv_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2$
"sequential/q_conv2d_2/truediv_18/y�
 sequential/q_conv2d_2/truediv_18RealDivsequential/q_conv2d_2/Log_4:y:0+sequential/q_conv2d_2/truediv_18/y:output:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_2/truediv_18�
sequential/q_conv2d_2/Round_4Round$sequential/q_conv2d_2/truediv_18:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Round_4�
sequential/q_conv2d_2/Pow_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d_2/Pow_5/x�
sequential/q_conv2d_2/Pow_5Pow&sequential/q_conv2d_2/Pow_5/x:output:0!sequential/q_conv2d_2/Round_4:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Pow_5�
sequential/q_conv2d_2/Abs_5Abs!sequential/q_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Abs_5�
 sequential/q_conv2d_2/truediv_19RealDivsequential/q_conv2d_2/Abs_5:y:0sequential/q_conv2d_2/Pow_5:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_2/truediv_19�
sequential/q_conv2d_2/add_13/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2 
sequential/q_conv2d_2/add_13/y�
sequential/q_conv2d_2/add_13AddV2$sequential/q_conv2d_2/truediv_19:z:0'sequential/q_conv2d_2/add_13/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/add_13�
sequential/q_conv2d_2/Floor_4Floor sequential/q_conv2d_2/add_13:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Floor_4�
sequential/q_conv2d_2/Less_4/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2 
sequential/q_conv2d_2/Less_4/y�
sequential/q_conv2d_2/Less_4Less!sequential/q_conv2d_2/Floor_4:y:0'sequential/q_conv2d_2/Less_4/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Less_4�
sequential/q_conv2d_2/Sign_4Sign!sequential/q_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Sign_4�
'sequential/q_conv2d_2/ones_like_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2)
'sequential/q_conv2d_2/ones_like_4/Shape�
'sequential/q_conv2d_2/ones_like_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2)
'sequential/q_conv2d_2/ones_like_4/Const�
!sequential/q_conv2d_2/ones_like_4Fill0sequential/q_conv2d_2/ones_like_4/Shape:output:00sequential/q_conv2d_2/ones_like_4/Const:output:0*
T0*&
_output_shapes
:2#
!sequential/q_conv2d_2/ones_like_4�
sequential/q_conv2d_2/mul_17/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2 
sequential/q_conv2d_2/mul_17/y�
sequential/q_conv2d_2/mul_17Mul*sequential/q_conv2d_2/ones_like_4:output:0'sequential/q_conv2d_2/mul_17/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/mul_17�
"sequential/q_conv2d_2/truediv_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"sequential/q_conv2d_2/truediv_20/y�
 sequential/q_conv2d_2/truediv_20RealDiv sequential/q_conv2d_2/mul_17:z:0+sequential/q_conv2d_2/truediv_20/y:output:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_2/truediv_20�
 sequential/q_conv2d_2/SelectV2_4SelectV2 sequential/q_conv2d_2/Less_4:z:0!sequential/q_conv2d_2/Floor_4:y:0$sequential/q_conv2d_2/truediv_20:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_2/SelectV2_4�
sequential/q_conv2d_2/mul_18Mul sequential/q_conv2d_2/Sign_4:y:0)sequential/q_conv2d_2/SelectV2_4:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/mul_18�
sequential/q_conv2d_2/Mul_19Mul!sequential/q_conv2d_2/truediv:z:0 sequential/q_conv2d_2/mul_18:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Mul_19�
.sequential/q_conv2d_2/Mean_8/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          20
.sequential/q_conv2d_2/Mean_8/reduction_indices�
sequential/q_conv2d_2/Mean_8Mean sequential/q_conv2d_2/Mul_19:z:07sequential/q_conv2d_2/Mean_8/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_2/Mean_8�
sequential/q_conv2d_2/Mul_20Mul sequential/q_conv2d_2/mul_18:z:0 sequential/q_conv2d_2/mul_18:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Mul_20�
.sequential/q_conv2d_2/Mean_9/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          20
.sequential/q_conv2d_2/Mean_9/reduction_indices�
sequential/q_conv2d_2/Mean_9Mean sequential/q_conv2d_2/Mul_20:z:07sequential/q_conv2d_2/Mean_9/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
sequential/q_conv2d_2/Mean_9�
sequential/q_conv2d_2/add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32 
sequential/q_conv2d_2/add_14/y�
sequential/q_conv2d_2/add_14AddV2%sequential/q_conv2d_2/Mean_9:output:0'sequential/q_conv2d_2/add_14/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/add_14�
 sequential/q_conv2d_2/truediv_21RealDiv%sequential/q_conv2d_2/Mean_8:output:0 sequential/q_conv2d_2/add_14:z:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_2/truediv_21�
sequential/q_conv2d_2/add_15/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32 
sequential/q_conv2d_2/add_15/y�
sequential/q_conv2d_2/add_15AddV2$sequential/q_conv2d_2/truediv_21:z:0'sequential/q_conv2d_2/add_15/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/add_15�
sequential/q_conv2d_2/Log_5Log sequential/q_conv2d_2/add_15:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Log_5�
"sequential/q_conv2d_2/truediv_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2$
"sequential/q_conv2d_2/truediv_22/y�
 sequential/q_conv2d_2/truediv_22RealDivsequential/q_conv2d_2/Log_5:y:0+sequential/q_conv2d_2/truediv_22/y:output:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_2/truediv_22�
sequential/q_conv2d_2/Round_5Round$sequential/q_conv2d_2/truediv_22:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Round_5�
sequential/q_conv2d_2/Pow_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
sequential/q_conv2d_2/Pow_6/x�
sequential/q_conv2d_2/Pow_6Pow&sequential/q_conv2d_2/Pow_6/x:output:0!sequential/q_conv2d_2/Round_5:y:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Pow_6�
sequential/q_conv2d_2/mul_21/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2 
sequential/q_conv2d_2/mul_21/y�
sequential/q_conv2d_2/mul_21Mulsequential/q_conv2d_2/Pow_6:z:0'sequential/q_conv2d_2/mul_21/y:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/mul_21�
sequential/q_conv2d_2/mul_22Mulsequential/q_conv2d_2/Cast:y:0!sequential/q_conv2d_2/truediv:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/mul_22�
sequential/q_conv2d_2/mul_23Mulsequential/q_conv2d_2/Cast:y:0 sequential/q_conv2d_2/mul_18:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/mul_23�
"sequential/q_conv2d_2/truediv_23/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2$
"sequential/q_conv2d_2/truediv_23/y�
 sequential/q_conv2d_2/truediv_23RealDiv sequential/q_conv2d_2/mul_23:z:0+sequential/q_conv2d_2/truediv_23/y:output:0*
T0*&
_output_shapes
:2"
 sequential/q_conv2d_2/truediv_23�
sequential/q_conv2d_2/mul_24Mul sequential/q_conv2d_2/mul_21:z:0$sequential/q_conv2d_2/truediv_23:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/mul_24�
sequential/q_conv2d_2/NegNeg sequential/q_conv2d_2/mul_22:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/Neg�
sequential/q_conv2d_2/add_16AddV2sequential/q_conv2d_2/Neg:y:0 sequential/q_conv2d_2/mul_24:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/add_16�
sequential/q_conv2d_2/mul_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2 
sequential/q_conv2d_2/mul_25/x�
sequential/q_conv2d_2/mul_25Mul'sequential/q_conv2d_2/mul_25/x:output:0 sequential/q_conv2d_2/add_16:z:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/mul_25�
"sequential/q_conv2d_2/StopGradientStopGradient sequential/q_conv2d_2/mul_25:z:0*
T0*&
_output_shapes
:2$
"sequential/q_conv2d_2/StopGradient�
sequential/q_conv2d_2/add_17AddV2 sequential/q_conv2d_2/mul_22:z:0+sequential/q_conv2d_2/StopGradient:output:0*
T0*&
_output_shapes
:2
sequential/q_conv2d_2/add_17�
!sequential/q_conv2d_2/convolutionConv2D#sequential/q_activation_1/add_3:z:0 sequential/q_conv2d_2/add_17:z:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2#
!sequential/q_conv2d_2/convolution�
,sequential/q_conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_q_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential/q_conv2d_2/BiasAdd/ReadVariableOp�
sequential/q_conv2d_2/BiasAddBiasAdd*sequential/q_conv2d_2/convolution:output:04sequential/q_conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
sequential/q_conv2d_2/BiasAdd�
sequential/activation/SigmoidSigmoid&sequential/q_conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
sequential/activation/Sigmoid�
IdentityIdentity!sequential/activation/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp?^sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpA^sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1.^sequential/batch_normalization/ReadVariableOp0^sequential/batch_normalization/ReadVariableOp_1+^sequential/q_conv2d/BiasAdd/ReadVariableOp#^sequential/q_conv2d/ReadVariableOp-^sequential/q_conv2d_1/BiasAdd/ReadVariableOp%^sequential/q_conv2d_1/ReadVariableOp-^sequential/q_conv2d_2/BiasAdd/ReadVariableOp%^sequential/q_conv2d_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 2�
>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp2�
@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_12^
-sequential/batch_normalization/ReadVariableOp-sequential/batch_normalization/ReadVariableOp2b
/sequential/batch_normalization/ReadVariableOp_1/sequential/batch_normalization/ReadVariableOp_12X
*sequential/q_conv2d/BiasAdd/ReadVariableOp*sequential/q_conv2d/BiasAdd/ReadVariableOp2H
"sequential/q_conv2d/ReadVariableOp"sequential/q_conv2d/ReadVariableOp2\
,sequential/q_conv2d_1/BiasAdd/ReadVariableOp,sequential/q_conv2d_1/BiasAdd/ReadVariableOp2L
$sequential/q_conv2d_1/ReadVariableOp$sequential/q_conv2d_1/ReadVariableOp2\
,sequential/q_conv2d_2/BiasAdd/ReadVariableOp,sequential/q_conv2d_2/BiasAdd/ReadVariableOp2L
$sequential/q_conv2d_2/ReadVariableOp$sequential/q_conv2d_2/ReadVariableOp:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
��
�
G__inference_q_conv2d_2_layer_call_and_return_conditional_losses_3133127

inputs1
readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�ReadVariableOpP
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
Pow/xP
Pow/yConst*
_output_shapes
: *
dtype0*
value	B : 2
Pow/yR
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: 2
PowM
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast�
ReadVariableOpReadVariableOpreadvariableop_resource*&
_output_shapes
:*
dtype02
ReadVariableOpp
truedivRealDivReadVariableOp:value:0Cast:y:0*
T0*&
_output_shapes
:2	
truedivO
AbsAbstruediv:z:0*
T0*&
_output_shapes
:2
Abs�
Max/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Max/reduction_indices|
MaxMaxAbs:y:0Max/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
MaxS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
mul/y`
mulMulMax:output:0mul/y:output:0*
T0*&
_output_shapes
:2
mul_
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
truediv_1/yq
	truediv_1RealDivmul:z:0truediv_1/y:output:0*
T0*&
_output_shapes
:2
	truediv_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
add/yc
addAddV2truediv_1:z:0add/y:output:0*
T0*&
_output_shapes
:2
addK
LogLogadd:z:0*
T0*&
_output_shapes
:2
Log_
truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_2/yq
	truediv_2RealDivLog:y:0truediv_2/y:output:0*
T0*&
_output_shapes
:2
	truediv_2W
RoundRoundtruediv_2:z:0*
T0*&
_output_shapes
:2
RoundW
Pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_1/xc
Pow_1PowPow_1/x:output:0	Round:y:0*
T0*&
_output_shapes
:2
Pow_1S
Abs_1Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_1h
	truediv_3RealDiv	Abs_1:y:0	Pow_1:z:0*
T0*&
_output_shapes
:2
	truediv_3W
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
add_1/yi
add_1AddV2truediv_3:z:0add_1/y:output:0*
T0*&
_output_shapes
:2
add_1S
FloorFloor	add_1:z:0*
T0*&
_output_shapes
:2
FloorU
Less/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
Less/ya
LessLess	Floor:y:0Less/y:output:0*
T0*&
_output_shapes
:2
LessR
SignSigntruediv:z:0*
T0*&
_output_shapes
:2
Sign{
ones_like/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like/Const�
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*&
_output_shapes
:2
	ones_likeW
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2	
mul_1/yl
mul_1Mulones_like:output:0mul_1/y:output:0*
T0*&
_output_shapes
:2
mul_1_
truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_4/ys
	truediv_4RealDiv	mul_1:z:0truediv_4/y:output:0*
T0*&
_output_shapes
:2
	truediv_4u
SelectV2SelectV2Less:z:0	Floor:y:0truediv_4:z:0*
T0*&
_output_shapes
:2

SelectV2c
mul_2MulSign:y:0SelectV2:output:0*
T0*&
_output_shapes
:2
mul_2^
Mul_3Multruediv:z:0	mul_2:z:0*
T0*&
_output_shapes
:2
Mul_3�
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean/reduction_indices�
MeanMean	Mul_3:z:0Mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean\
Mul_4Mul	mul_2:z:0	mul_2:z:0*
T0*&
_output_shapes
:2
Mul_4�
Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_1/reduction_indices�
Mean_1Mean	Mul_4:z:0!Mean_1/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_1W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_2/yk
add_2AddV2Mean_1:output:0add_2/y:output:0*
T0*&
_output_shapes
:2
add_2l
	truediv_5RealDivMean:output:0	add_2:z:0*
T0*&
_output_shapes
:2
	truediv_5W
add_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_3/yi
add_3AddV2truediv_5:z:0add_3/y:output:0*
T0*&
_output_shapes
:2
add_3Q
Log_1Log	add_3:z:0*
T0*&
_output_shapes
:2
Log_1_
truediv_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_6/ys
	truediv_6RealDiv	Log_1:y:0truediv_6/y:output:0*
T0*&
_output_shapes
:2
	truediv_6[
Round_1Roundtruediv_6:z:0*
T0*&
_output_shapes
:2	
Round_1W
Pow_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_2/xe
Pow_2PowPow_2/x:output:0Round_1:y:0*
T0*&
_output_shapes
:2
Pow_2S
Abs_2Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_2h
	truediv_7RealDiv	Abs_2:y:0	Pow_2:z:0*
T0*&
_output_shapes
:2
	truediv_7W
add_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
add_4/yi
add_4AddV2truediv_7:z:0add_4/y:output:0*
T0*&
_output_shapes
:2
add_4W
Floor_1Floor	add_4:z:0*
T0*&
_output_shapes
:2	
Floor_1Y
Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_1/yi
Less_1LessFloor_1:y:0Less_1/y:output:0*
T0*&
_output_shapes
:2
Less_1V
Sign_1Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_1
ones_like_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_1/Const�
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*&
_output_shapes
:2
ones_like_1W
mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2	
mul_5/yn
mul_5Mulones_like_1:output:0mul_5/y:output:0*
T0*&
_output_shapes
:2
mul_5_
truediv_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_8/ys
	truediv_8RealDiv	mul_5:z:0truediv_8/y:output:0*
T0*&
_output_shapes
:2
	truediv_8}

SelectV2_1SelectV2
Less_1:z:0Floor_1:y:0truediv_8:z:0*
T0*&
_output_shapes
:2

SelectV2_1g
mul_6Mul
Sign_1:y:0SelectV2_1:output:0*
T0*&
_output_shapes
:2
mul_6^
Mul_7Multruediv:z:0	mul_6:z:0*
T0*&
_output_shapes
:2
Mul_7�
Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_2/reduction_indices�
Mean_2Mean	Mul_7:z:0!Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_2\
Mul_8Mul	mul_6:z:0	mul_6:z:0*
T0*&
_output_shapes
:2
Mul_8�
Mean_3/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_3/reduction_indices�
Mean_3Mean	Mul_8:z:0!Mean_3/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_3W
add_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_5/yk
add_5AddV2Mean_3:output:0add_5/y:output:0*
T0*&
_output_shapes
:2
add_5n
	truediv_9RealDivMean_2:output:0	add_5:z:0*
T0*&
_output_shapes
:2
	truediv_9W
add_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_6/yi
add_6AddV2truediv_9:z:0add_6/y:output:0*
T0*&
_output_shapes
:2
add_6Q
Log_2Log	add_6:z:0*
T0*&
_output_shapes
:2
Log_2a
truediv_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_10/yv

truediv_10RealDiv	Log_2:y:0truediv_10/y:output:0*
T0*&
_output_shapes
:2

truediv_10\
Round_2Roundtruediv_10:z:0*
T0*&
_output_shapes
:2	
Round_2W
Pow_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_3/xe
Pow_3PowPow_3/x:output:0Round_2:y:0*
T0*&
_output_shapes
:2
Pow_3S
Abs_3Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_3j

truediv_11RealDiv	Abs_3:y:0	Pow_3:z:0*
T0*&
_output_shapes
:2

truediv_11W
add_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
add_7/yj
add_7AddV2truediv_11:z:0add_7/y:output:0*
T0*&
_output_shapes
:2
add_7W
Floor_2Floor	add_7:z:0*
T0*&
_output_shapes
:2	
Floor_2Y
Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_2/yi
Less_2LessFloor_2:y:0Less_2/y:output:0*
T0*&
_output_shapes
:2
Less_2V
Sign_2Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_2
ones_like_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_2/Shapek
ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_2/Const�
ones_like_2Fillones_like_2/Shape:output:0ones_like_2/Const:output:0*
T0*&
_output_shapes
:2
ones_like_2W
mul_9/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2	
mul_9/yn
mul_9Mulones_like_2:output:0mul_9/y:output:0*
T0*&
_output_shapes
:2
mul_9a
truediv_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_12/yv

truediv_12RealDiv	mul_9:z:0truediv_12/y:output:0*
T0*&
_output_shapes
:2

truediv_12~

SelectV2_2SelectV2
Less_2:z:0Floor_2:y:0truediv_12:z:0*
T0*&
_output_shapes
:2

SelectV2_2i
mul_10Mul
Sign_2:y:0SelectV2_2:output:0*
T0*&
_output_shapes
:2
mul_10a
Mul_11Multruediv:z:0
mul_10:z:0*
T0*&
_output_shapes
:2
Mul_11�
Mean_4/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_4/reduction_indices�
Mean_4Mean
Mul_11:z:0!Mean_4/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_4`
Mul_12Mul
mul_10:z:0
mul_10:z:0*
T0*&
_output_shapes
:2
Mul_12�
Mean_5/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_5/reduction_indices�
Mean_5Mean
Mul_12:z:0!Mean_5/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_5W
add_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_8/yk
add_8AddV2Mean_5:output:0add_8/y:output:0*
T0*&
_output_shapes
:2
add_8p

truediv_13RealDivMean_4:output:0	add_8:z:0*
T0*&
_output_shapes
:2

truediv_13W
add_9/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_9/yj
add_9AddV2truediv_13:z:0add_9/y:output:0*
T0*&
_output_shapes
:2
add_9Q
Log_3Log	add_9:z:0*
T0*&
_output_shapes
:2
Log_3a
truediv_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_14/yv

truediv_14RealDiv	Log_3:y:0truediv_14/y:output:0*
T0*&
_output_shapes
:2

truediv_14\
Round_3Roundtruediv_14:z:0*
T0*&
_output_shapes
:2	
Round_3W
Pow_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_4/xe
Pow_4PowPow_4/x:output:0Round_3:y:0*
T0*&
_output_shapes
:2
Pow_4S
Abs_4Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_4j

truediv_15RealDiv	Abs_4:y:0	Pow_4:z:0*
T0*&
_output_shapes
:2

truediv_15Y
add_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2

add_10/ym
add_10AddV2truediv_15:z:0add_10/y:output:0*
T0*&
_output_shapes
:2
add_10X
Floor_3Floor
add_10:z:0*
T0*&
_output_shapes
:2	
Floor_3Y
Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_3/yi
Less_3LessFloor_3:y:0Less_3/y:output:0*
T0*&
_output_shapes
:2
Less_3V
Sign_3Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_3
ones_like_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_3/Shapek
ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_3/Const�
ones_like_3Fillones_like_3/Shape:output:0ones_like_3/Const:output:0*
T0*&
_output_shapes
:2
ones_like_3Y
mul_13/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2

mul_13/yq
mul_13Mulones_like_3:output:0mul_13/y:output:0*
T0*&
_output_shapes
:2
mul_13a
truediv_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_16/yw

truediv_16RealDiv
mul_13:z:0truediv_16/y:output:0*
T0*&
_output_shapes
:2

truediv_16~

SelectV2_3SelectV2
Less_3:z:0Floor_3:y:0truediv_16:z:0*
T0*&
_output_shapes
:2

SelectV2_3i
mul_14Mul
Sign_3:y:0SelectV2_3:output:0*
T0*&
_output_shapes
:2
mul_14a
Mul_15Multruediv:z:0
mul_14:z:0*
T0*&
_output_shapes
:2
Mul_15�
Mean_6/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_6/reduction_indices�
Mean_6Mean
Mul_15:z:0!Mean_6/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_6`
Mul_16Mul
mul_14:z:0
mul_14:z:0*
T0*&
_output_shapes
:2
Mul_16�
Mean_7/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_7/reduction_indices�
Mean_7Mean
Mul_16:z:0!Mean_7/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_7Y
add_11/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_11/yn
add_11AddV2Mean_7:output:0add_11/y:output:0*
T0*&
_output_shapes
:2
add_11q

truediv_17RealDivMean_6:output:0
add_11:z:0*
T0*&
_output_shapes
:2

truediv_17Y
add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_12/ym
add_12AddV2truediv_17:z:0add_12/y:output:0*
T0*&
_output_shapes
:2
add_12R
Log_4Log
add_12:z:0*
T0*&
_output_shapes
:2
Log_4a
truediv_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_18/yv

truediv_18RealDiv	Log_4:y:0truediv_18/y:output:0*
T0*&
_output_shapes
:2

truediv_18\
Round_4Roundtruediv_18:z:0*
T0*&
_output_shapes
:2	
Round_4W
Pow_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_5/xe
Pow_5PowPow_5/x:output:0Round_4:y:0*
T0*&
_output_shapes
:2
Pow_5S
Abs_5Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_5j

truediv_19RealDiv	Abs_5:y:0	Pow_5:z:0*
T0*&
_output_shapes
:2

truediv_19Y
add_13/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2

add_13/ym
add_13AddV2truediv_19:z:0add_13/y:output:0*
T0*&
_output_shapes
:2
add_13X
Floor_4Floor
add_13:z:0*
T0*&
_output_shapes
:2	
Floor_4Y
Less_4/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_4/yi
Less_4LessFloor_4:y:0Less_4/y:output:0*
T0*&
_output_shapes
:2
Less_4V
Sign_4Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_4
ones_like_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_4/Shapek
ones_like_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_4/Const�
ones_like_4Fillones_like_4/Shape:output:0ones_like_4/Const:output:0*
T0*&
_output_shapes
:2
ones_like_4Y
mul_17/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2

mul_17/yq
mul_17Mulones_like_4:output:0mul_17/y:output:0*
T0*&
_output_shapes
:2
mul_17a
truediv_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_20/yw

truediv_20RealDiv
mul_17:z:0truediv_20/y:output:0*
T0*&
_output_shapes
:2

truediv_20~

SelectV2_4SelectV2
Less_4:z:0Floor_4:y:0truediv_20:z:0*
T0*&
_output_shapes
:2

SelectV2_4i
mul_18Mul
Sign_4:y:0SelectV2_4:output:0*
T0*&
_output_shapes
:2
mul_18a
Mul_19Multruediv:z:0
mul_18:z:0*
T0*&
_output_shapes
:2
Mul_19�
Mean_8/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_8/reduction_indices�
Mean_8Mean
Mul_19:z:0!Mean_8/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_8`
Mul_20Mul
mul_18:z:0
mul_18:z:0*
T0*&
_output_shapes
:2
Mul_20�
Mean_9/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_9/reduction_indices�
Mean_9Mean
Mul_20:z:0!Mean_9/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_9Y
add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_14/yn
add_14AddV2Mean_9:output:0add_14/y:output:0*
T0*&
_output_shapes
:2
add_14q

truediv_21RealDivMean_8:output:0
add_14:z:0*
T0*&
_output_shapes
:2

truediv_21Y
add_15/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_15/ym
add_15AddV2truediv_21:z:0add_15/y:output:0*
T0*&
_output_shapes
:2
add_15R
Log_5Log
add_15:z:0*
T0*&
_output_shapes
:2
Log_5a
truediv_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_22/yv

truediv_22RealDiv	Log_5:y:0truediv_22/y:output:0*
T0*&
_output_shapes
:2

truediv_22\
Round_5Roundtruediv_22:z:0*
T0*&
_output_shapes
:2	
Round_5W
Pow_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_6/xe
Pow_6PowPow_6/x:output:0Round_5:y:0*
T0*&
_output_shapes
:2
Pow_6Y
mul_21/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2

mul_21/yf
mul_21Mul	Pow_6:z:0mul_21/y:output:0*
T0*&
_output_shapes
:2
mul_21_
mul_22MulCast:y:0truediv:z:0*
T0*&
_output_shapes
:2
mul_22^
mul_23MulCast:y:0
mul_18:z:0*
T0*&
_output_shapes
:2
mul_23a
truediv_23/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2
truediv_23/yw

truediv_23RealDiv
mul_23:z:0truediv_23/y:output:0*
T0*&
_output_shapes
:2

truediv_23d
mul_24Mul
mul_21:z:0truediv_23:z:0*
T0*&
_output_shapes
:2
mul_24N
NegNeg
mul_22:z:0*
T0*&
_output_shapes
:2
Neg_
add_16AddV2Neg:y:0
mul_24:z:0*
T0*&
_output_shapes
:2
add_16Y
mul_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2

mul_25/xg
mul_25Mulmul_25/x:output:0
add_16:z:0*
T0*&
_output_shapes
:2
mul_25i
StopGradientStopGradient
mul_25:z:0*
T0*&
_output_shapes
:2
StopGradientm
add_17AddV2
mul_22:z:0StopGradient:output:0*
T0*&
_output_shapes
:2
add_17�
convolutionConv2Dinputs
add_17:z:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
convolution�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconvolution:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityx
NoOpNoOp^BiasAdd/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2 
ReadVariableOpReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
c
G__inference_activation_layer_call_and_return_conditional_losses_3133138

inputs
identity_
SigmoidSigmoidinputs*
T0*/
_output_shapes
:���������2	
Sigmoidg
IdentityIdentitySigmoid:y:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3135103

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
%__inference_signature_wrapper_3133457
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2*0,1J 8� *+
f&R$
"__inference__wrapped_model_31322142
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�	
�
5__inference_batch_normalization_layer_call_fn_3134992

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_31322362
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
��
�
E__inference_q_conv2d_layer_call_and_return_conditional_losses_3135325

inputs1
readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�ReadVariableOpP
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
Pow/xP
Pow/yConst*
_output_shapes
: *
dtype0*
value	B : 2
Pow/yR
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: 2
PowM
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast�
ReadVariableOpReadVariableOpreadvariableop_resource*&
_output_shapes
:*
dtype02
ReadVariableOpp
truedivRealDivReadVariableOp:value:0Cast:y:0*
T0*&
_output_shapes
:2	
truedivO
AbsAbstruediv:z:0*
T0*&
_output_shapes
:2
Abs�
Max/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Max/reduction_indices|
MaxMaxAbs:y:0Max/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
MaxS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
mul/y`
mulMulMax:output:0mul/y:output:0*
T0*&
_output_shapes
:2
mul_
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
truediv_1/yq
	truediv_1RealDivmul:z:0truediv_1/y:output:0*
T0*&
_output_shapes
:2
	truediv_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
add/yc
addAddV2truediv_1:z:0add/y:output:0*
T0*&
_output_shapes
:2
addK
LogLogadd:z:0*
T0*&
_output_shapes
:2
Log_
truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_2/yq
	truediv_2RealDivLog:y:0truediv_2/y:output:0*
T0*&
_output_shapes
:2
	truediv_2W
RoundRoundtruediv_2:z:0*
T0*&
_output_shapes
:2
RoundW
Pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_1/xc
Pow_1PowPow_1/x:output:0	Round:y:0*
T0*&
_output_shapes
:2
Pow_1S
Abs_1Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_1h
	truediv_3RealDiv	Abs_1:y:0	Pow_1:z:0*
T0*&
_output_shapes
:2
	truediv_3W
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
add_1/yi
add_1AddV2truediv_3:z:0add_1/y:output:0*
T0*&
_output_shapes
:2
add_1S
FloorFloor	add_1:z:0*
T0*&
_output_shapes
:2
FloorU
Less/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
Less/ya
LessLess	Floor:y:0Less/y:output:0*
T0*&
_output_shapes
:2
LessR
SignSigntruediv:z:0*
T0*&
_output_shapes
:2
Sign{
ones_like/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like/Const�
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*&
_output_shapes
:2
	ones_likeW
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2	
mul_1/yl
mul_1Mulones_like:output:0mul_1/y:output:0*
T0*&
_output_shapes
:2
mul_1_
truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_4/ys
	truediv_4RealDiv	mul_1:z:0truediv_4/y:output:0*
T0*&
_output_shapes
:2
	truediv_4u
SelectV2SelectV2Less:z:0	Floor:y:0truediv_4:z:0*
T0*&
_output_shapes
:2

SelectV2c
mul_2MulSign:y:0SelectV2:output:0*
T0*&
_output_shapes
:2
mul_2^
Mul_3Multruediv:z:0	mul_2:z:0*
T0*&
_output_shapes
:2
Mul_3�
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean/reduction_indices�
MeanMean	Mul_3:z:0Mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean\
Mul_4Mul	mul_2:z:0	mul_2:z:0*
T0*&
_output_shapes
:2
Mul_4�
Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_1/reduction_indices�
Mean_1Mean	Mul_4:z:0!Mean_1/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_1W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_2/yk
add_2AddV2Mean_1:output:0add_2/y:output:0*
T0*&
_output_shapes
:2
add_2l
	truediv_5RealDivMean:output:0	add_2:z:0*
T0*&
_output_shapes
:2
	truediv_5W
add_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_3/yi
add_3AddV2truediv_5:z:0add_3/y:output:0*
T0*&
_output_shapes
:2
add_3Q
Log_1Log	add_3:z:0*
T0*&
_output_shapes
:2
Log_1_
truediv_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_6/ys
	truediv_6RealDiv	Log_1:y:0truediv_6/y:output:0*
T0*&
_output_shapes
:2
	truediv_6[
Round_1Roundtruediv_6:z:0*
T0*&
_output_shapes
:2	
Round_1W
Pow_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_2/xe
Pow_2PowPow_2/x:output:0Round_1:y:0*
T0*&
_output_shapes
:2
Pow_2S
Abs_2Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_2h
	truediv_7RealDiv	Abs_2:y:0	Pow_2:z:0*
T0*&
_output_shapes
:2
	truediv_7W
add_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
add_4/yi
add_4AddV2truediv_7:z:0add_4/y:output:0*
T0*&
_output_shapes
:2
add_4W
Floor_1Floor	add_4:z:0*
T0*&
_output_shapes
:2	
Floor_1Y
Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_1/yi
Less_1LessFloor_1:y:0Less_1/y:output:0*
T0*&
_output_shapes
:2
Less_1V
Sign_1Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_1
ones_like_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_1/Const�
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*&
_output_shapes
:2
ones_like_1W
mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2	
mul_5/yn
mul_5Mulones_like_1:output:0mul_5/y:output:0*
T0*&
_output_shapes
:2
mul_5_
truediv_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_8/ys
	truediv_8RealDiv	mul_5:z:0truediv_8/y:output:0*
T0*&
_output_shapes
:2
	truediv_8}

SelectV2_1SelectV2
Less_1:z:0Floor_1:y:0truediv_8:z:0*
T0*&
_output_shapes
:2

SelectV2_1g
mul_6Mul
Sign_1:y:0SelectV2_1:output:0*
T0*&
_output_shapes
:2
mul_6^
Mul_7Multruediv:z:0	mul_6:z:0*
T0*&
_output_shapes
:2
Mul_7�
Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_2/reduction_indices�
Mean_2Mean	Mul_7:z:0!Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_2\
Mul_8Mul	mul_6:z:0	mul_6:z:0*
T0*&
_output_shapes
:2
Mul_8�
Mean_3/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_3/reduction_indices�
Mean_3Mean	Mul_8:z:0!Mean_3/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_3W
add_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_5/yk
add_5AddV2Mean_3:output:0add_5/y:output:0*
T0*&
_output_shapes
:2
add_5n
	truediv_9RealDivMean_2:output:0	add_5:z:0*
T0*&
_output_shapes
:2
	truediv_9W
add_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_6/yi
add_6AddV2truediv_9:z:0add_6/y:output:0*
T0*&
_output_shapes
:2
add_6Q
Log_2Log	add_6:z:0*
T0*&
_output_shapes
:2
Log_2a
truediv_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_10/yv

truediv_10RealDiv	Log_2:y:0truediv_10/y:output:0*
T0*&
_output_shapes
:2

truediv_10\
Round_2Roundtruediv_10:z:0*
T0*&
_output_shapes
:2	
Round_2W
Pow_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_3/xe
Pow_3PowPow_3/x:output:0Round_2:y:0*
T0*&
_output_shapes
:2
Pow_3S
Abs_3Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_3j

truediv_11RealDiv	Abs_3:y:0	Pow_3:z:0*
T0*&
_output_shapes
:2

truediv_11W
add_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
add_7/yj
add_7AddV2truediv_11:z:0add_7/y:output:0*
T0*&
_output_shapes
:2
add_7W
Floor_2Floor	add_7:z:0*
T0*&
_output_shapes
:2	
Floor_2Y
Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_2/yi
Less_2LessFloor_2:y:0Less_2/y:output:0*
T0*&
_output_shapes
:2
Less_2V
Sign_2Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_2
ones_like_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_2/Shapek
ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_2/Const�
ones_like_2Fillones_like_2/Shape:output:0ones_like_2/Const:output:0*
T0*&
_output_shapes
:2
ones_like_2W
mul_9/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2	
mul_9/yn
mul_9Mulones_like_2:output:0mul_9/y:output:0*
T0*&
_output_shapes
:2
mul_9a
truediv_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_12/yv

truediv_12RealDiv	mul_9:z:0truediv_12/y:output:0*
T0*&
_output_shapes
:2

truediv_12~

SelectV2_2SelectV2
Less_2:z:0Floor_2:y:0truediv_12:z:0*
T0*&
_output_shapes
:2

SelectV2_2i
mul_10Mul
Sign_2:y:0SelectV2_2:output:0*
T0*&
_output_shapes
:2
mul_10a
Mul_11Multruediv:z:0
mul_10:z:0*
T0*&
_output_shapes
:2
Mul_11�
Mean_4/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_4/reduction_indices�
Mean_4Mean
Mul_11:z:0!Mean_4/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_4`
Mul_12Mul
mul_10:z:0
mul_10:z:0*
T0*&
_output_shapes
:2
Mul_12�
Mean_5/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_5/reduction_indices�
Mean_5Mean
Mul_12:z:0!Mean_5/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_5W
add_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_8/yk
add_8AddV2Mean_5:output:0add_8/y:output:0*
T0*&
_output_shapes
:2
add_8p

truediv_13RealDivMean_4:output:0	add_8:z:0*
T0*&
_output_shapes
:2

truediv_13W
add_9/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_9/yj
add_9AddV2truediv_13:z:0add_9/y:output:0*
T0*&
_output_shapes
:2
add_9Q
Log_3Log	add_9:z:0*
T0*&
_output_shapes
:2
Log_3a
truediv_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_14/yv

truediv_14RealDiv	Log_3:y:0truediv_14/y:output:0*
T0*&
_output_shapes
:2

truediv_14\
Round_3Roundtruediv_14:z:0*
T0*&
_output_shapes
:2	
Round_3W
Pow_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_4/xe
Pow_4PowPow_4/x:output:0Round_3:y:0*
T0*&
_output_shapes
:2
Pow_4S
Abs_4Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_4j

truediv_15RealDiv	Abs_4:y:0	Pow_4:z:0*
T0*&
_output_shapes
:2

truediv_15Y
add_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2

add_10/ym
add_10AddV2truediv_15:z:0add_10/y:output:0*
T0*&
_output_shapes
:2
add_10X
Floor_3Floor
add_10:z:0*
T0*&
_output_shapes
:2	
Floor_3Y
Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_3/yi
Less_3LessFloor_3:y:0Less_3/y:output:0*
T0*&
_output_shapes
:2
Less_3V
Sign_3Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_3
ones_like_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_3/Shapek
ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_3/Const�
ones_like_3Fillones_like_3/Shape:output:0ones_like_3/Const:output:0*
T0*&
_output_shapes
:2
ones_like_3Y
mul_13/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2

mul_13/yq
mul_13Mulones_like_3:output:0mul_13/y:output:0*
T0*&
_output_shapes
:2
mul_13a
truediv_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_16/yw

truediv_16RealDiv
mul_13:z:0truediv_16/y:output:0*
T0*&
_output_shapes
:2

truediv_16~

SelectV2_3SelectV2
Less_3:z:0Floor_3:y:0truediv_16:z:0*
T0*&
_output_shapes
:2

SelectV2_3i
mul_14Mul
Sign_3:y:0SelectV2_3:output:0*
T0*&
_output_shapes
:2
mul_14a
Mul_15Multruediv:z:0
mul_14:z:0*
T0*&
_output_shapes
:2
Mul_15�
Mean_6/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_6/reduction_indices�
Mean_6Mean
Mul_15:z:0!Mean_6/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_6`
Mul_16Mul
mul_14:z:0
mul_14:z:0*
T0*&
_output_shapes
:2
Mul_16�
Mean_7/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_7/reduction_indices�
Mean_7Mean
Mul_16:z:0!Mean_7/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_7Y
add_11/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_11/yn
add_11AddV2Mean_7:output:0add_11/y:output:0*
T0*&
_output_shapes
:2
add_11q

truediv_17RealDivMean_6:output:0
add_11:z:0*
T0*&
_output_shapes
:2

truediv_17Y
add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_12/ym
add_12AddV2truediv_17:z:0add_12/y:output:0*
T0*&
_output_shapes
:2
add_12R
Log_4Log
add_12:z:0*
T0*&
_output_shapes
:2
Log_4a
truediv_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_18/yv

truediv_18RealDiv	Log_4:y:0truediv_18/y:output:0*
T0*&
_output_shapes
:2

truediv_18\
Round_4Roundtruediv_18:z:0*
T0*&
_output_shapes
:2	
Round_4W
Pow_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_5/xe
Pow_5PowPow_5/x:output:0Round_4:y:0*
T0*&
_output_shapes
:2
Pow_5S
Abs_5Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_5j

truediv_19RealDiv	Abs_5:y:0	Pow_5:z:0*
T0*&
_output_shapes
:2

truediv_19Y
add_13/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2

add_13/ym
add_13AddV2truediv_19:z:0add_13/y:output:0*
T0*&
_output_shapes
:2
add_13X
Floor_4Floor
add_13:z:0*
T0*&
_output_shapes
:2	
Floor_4Y
Less_4/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_4/yi
Less_4LessFloor_4:y:0Less_4/y:output:0*
T0*&
_output_shapes
:2
Less_4V
Sign_4Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_4
ones_like_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_4/Shapek
ones_like_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_4/Const�
ones_like_4Fillones_like_4/Shape:output:0ones_like_4/Const:output:0*
T0*&
_output_shapes
:2
ones_like_4Y
mul_17/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2

mul_17/yq
mul_17Mulones_like_4:output:0mul_17/y:output:0*
T0*&
_output_shapes
:2
mul_17a
truediv_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_20/yw

truediv_20RealDiv
mul_17:z:0truediv_20/y:output:0*
T0*&
_output_shapes
:2

truediv_20~

SelectV2_4SelectV2
Less_4:z:0Floor_4:y:0truediv_20:z:0*
T0*&
_output_shapes
:2

SelectV2_4i
mul_18Mul
Sign_4:y:0SelectV2_4:output:0*
T0*&
_output_shapes
:2
mul_18a
Mul_19Multruediv:z:0
mul_18:z:0*
T0*&
_output_shapes
:2
Mul_19�
Mean_8/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_8/reduction_indices�
Mean_8Mean
Mul_19:z:0!Mean_8/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_8`
Mul_20Mul
mul_18:z:0
mul_18:z:0*
T0*&
_output_shapes
:2
Mul_20�
Mean_9/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_9/reduction_indices�
Mean_9Mean
Mul_20:z:0!Mean_9/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_9Y
add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_14/yn
add_14AddV2Mean_9:output:0add_14/y:output:0*
T0*&
_output_shapes
:2
add_14q

truediv_21RealDivMean_8:output:0
add_14:z:0*
T0*&
_output_shapes
:2

truediv_21Y
add_15/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_15/ym
add_15AddV2truediv_21:z:0add_15/y:output:0*
T0*&
_output_shapes
:2
add_15R
Log_5Log
add_15:z:0*
T0*&
_output_shapes
:2
Log_5a
truediv_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_22/yv

truediv_22RealDiv	Log_5:y:0truediv_22/y:output:0*
T0*&
_output_shapes
:2

truediv_22\
Round_5Roundtruediv_22:z:0*
T0*&
_output_shapes
:2	
Round_5W
Pow_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_6/xe
Pow_6PowPow_6/x:output:0Round_5:y:0*
T0*&
_output_shapes
:2
Pow_6Y
mul_21/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2

mul_21/yf
mul_21Mul	Pow_6:z:0mul_21/y:output:0*
T0*&
_output_shapes
:2
mul_21_
mul_22MulCast:y:0truediv:z:0*
T0*&
_output_shapes
:2
mul_22^
mul_23MulCast:y:0
mul_18:z:0*
T0*&
_output_shapes
:2
mul_23a
truediv_23/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2
truediv_23/yw

truediv_23RealDiv
mul_23:z:0truediv_23/y:output:0*
T0*&
_output_shapes
:2

truediv_23d
mul_24Mul
mul_21:z:0truediv_23:z:0*
T0*&
_output_shapes
:2
mul_24N
NegNeg
mul_22:z:0*
T0*&
_output_shapes
:2
Neg_
add_16AddV2Neg:y:0
mul_24:z:0*
T0*&
_output_shapes
:2
add_16Y
mul_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2

mul_25/xg
mul_25Mulmul_25/x:output:0
add_16:z:0*
T0*&
_output_shapes
:2
mul_25i
StopGradientStopGradient
mul_25:z:0*
T0*&
_output_shapes
:2
StopGradientm
add_17AddV2
mul_22:z:0StopGradient:output:0*
T0*&
_output_shapes
:2
add_17�
convolutionConv2Dinputs
add_17:z:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
convolution�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconvolution:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityx
NoOpNoOp^BiasAdd/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2 
ReadVariableOpReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
J
.__inference_q_activation_layer_call_fn_3135330

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_q_activation_layer_call_and_return_conditional_losses_31326422
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
L
0__inference_q_activation_1_layer_call_fn_3135606

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_q_activation_1_layer_call_and_return_conditional_losses_31329122
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
,__inference_sequential_layer_call_fn_3133362
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_31333142
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
5__inference_batch_normalization_layer_call_fn_3135031

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_31332452
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
5__inference_batch_normalization_layer_call_fn_3135005

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_31322802
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�&
e
I__inference_q_activation_layer_call_and_return_conditional_losses_3135379

inputs
identityP
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
Pow/xP
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :2
Pow/yR
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: 2
PowM
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
CastT
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
Pow_1/xT
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
Pow_1/yZ
Pow_1PowPow_1/x:output:0Pow_1/y:output:0*
T0*
_output_shapes
: 2
Pow_1S
Cast_1Cast	Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_1S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
ConstV
Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B :2

Cast_2/x[
Cast_2CastCast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_2S
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �A2
sub/yN
subSub
Cast_2:y:0sub/y:output:0*
T0*
_output_shapes
: 2
subO
Pow_2PowConst:output:0sub:z:0*
T0*
_output_shapes
: 2
Pow_2M
sub_1Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: 2
sub_1p
	LessEqual	LessEqualinputs	sub_1:z:0*
T0*/
_output_shapes
:���������2
	LessEqualV
ReluReluinputs*
T0*/
_output_shapes
:���������2
ReluX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like/Const�
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*/
_output_shapes
:���������2
	ones_likeM
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: 2
sub_2j
mulMulones_like:output:0	sub_2:z:0*
T0*/
_output_shapes
:���������2
mul�
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*/
_output_shapes
:���������2

SelectV2a
mul_1MulinputsCast:y:0*
T0*/
_output_shapes
:���������2
mul_1n
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*/
_output_shapes
:���������2	
truedivX
NegNegtruediv:z:0*
T0*/
_output_shapes
:���������2
Neg^
RoundRoundtruediv:z:0*
T0*/
_output_shapes
:���������2
Rounda
addAddV2Neg:y:0	Round:y:0*
T0*/
_output_shapes
:���������2
addo
StopGradientStopGradientadd:z:0*
T0*/
_output_shapes
:���������2
StopGradientu
add_1AddV2truediv:z:0StopGradient:output:0*
T0*/
_output_shapes
:���������2
add_1p
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*/
_output_shapes
:���������2
	truediv_1_
truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
truediv_2/xb
	truediv_2RealDivtruediv_2/x:output:0Cast:y:0*
T0*
_output_shapes
: 2
	truediv_2W
sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2	
sub_3/xW
sub_3Subsub_3/x:output:0truediv_2:z:0*
T0*
_output_shapes
: 2
sub_3�
clip_by_value/MinimumMinimumtruediv_1:z:0	sub_3:z:0*
T0*/
_output_shapes
:���������2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y�
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:���������2
clip_by_valuen
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*/
_output_shapes
:���������2
mul_2b
Neg_1NegSelectV2:output:0*
T0*/
_output_shapes
:���������2
Neg_1g
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*/
_output_shapes
:���������2
add_2W
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2	
mul_3/xl
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*/
_output_shapes
:���������2
mul_3u
StopGradient_1StopGradient	mul_3:z:0*
T0*/
_output_shapes
:���������2
StopGradient_1}
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*/
_output_shapes
:���������2
add_3e
IdentityIdentity	add_3:z:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
E__inference_q_conv2d_layer_call_and_return_conditional_losses_3132587

inputs1
readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�ReadVariableOpP
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
Pow/xP
Pow/yConst*
_output_shapes
: *
dtype0*
value	B : 2
Pow/yR
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: 2
PowM
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast�
ReadVariableOpReadVariableOpreadvariableop_resource*&
_output_shapes
:*
dtype02
ReadVariableOpp
truedivRealDivReadVariableOp:value:0Cast:y:0*
T0*&
_output_shapes
:2	
truedivO
AbsAbstruediv:z:0*
T0*&
_output_shapes
:2
Abs�
Max/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Max/reduction_indices|
MaxMaxAbs:y:0Max/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
MaxS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
mul/y`
mulMulMax:output:0mul/y:output:0*
T0*&
_output_shapes
:2
mul_
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
truediv_1/yq
	truediv_1RealDivmul:z:0truediv_1/y:output:0*
T0*&
_output_shapes
:2
	truediv_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
add/yc
addAddV2truediv_1:z:0add/y:output:0*
T0*&
_output_shapes
:2
addK
LogLogadd:z:0*
T0*&
_output_shapes
:2
Log_
truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_2/yq
	truediv_2RealDivLog:y:0truediv_2/y:output:0*
T0*&
_output_shapes
:2
	truediv_2W
RoundRoundtruediv_2:z:0*
T0*&
_output_shapes
:2
RoundW
Pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_1/xc
Pow_1PowPow_1/x:output:0	Round:y:0*
T0*&
_output_shapes
:2
Pow_1S
Abs_1Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_1h
	truediv_3RealDiv	Abs_1:y:0	Pow_1:z:0*
T0*&
_output_shapes
:2
	truediv_3W
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
add_1/yi
add_1AddV2truediv_3:z:0add_1/y:output:0*
T0*&
_output_shapes
:2
add_1S
FloorFloor	add_1:z:0*
T0*&
_output_shapes
:2
FloorU
Less/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
Less/ya
LessLess	Floor:y:0Less/y:output:0*
T0*&
_output_shapes
:2
LessR
SignSigntruediv:z:0*
T0*&
_output_shapes
:2
Sign{
ones_like/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like/Const�
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*&
_output_shapes
:2
	ones_likeW
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2	
mul_1/yl
mul_1Mulones_like:output:0mul_1/y:output:0*
T0*&
_output_shapes
:2
mul_1_
truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_4/ys
	truediv_4RealDiv	mul_1:z:0truediv_4/y:output:0*
T0*&
_output_shapes
:2
	truediv_4u
SelectV2SelectV2Less:z:0	Floor:y:0truediv_4:z:0*
T0*&
_output_shapes
:2

SelectV2c
mul_2MulSign:y:0SelectV2:output:0*
T0*&
_output_shapes
:2
mul_2^
Mul_3Multruediv:z:0	mul_2:z:0*
T0*&
_output_shapes
:2
Mul_3�
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean/reduction_indices�
MeanMean	Mul_3:z:0Mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean\
Mul_4Mul	mul_2:z:0	mul_2:z:0*
T0*&
_output_shapes
:2
Mul_4�
Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_1/reduction_indices�
Mean_1Mean	Mul_4:z:0!Mean_1/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_1W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_2/yk
add_2AddV2Mean_1:output:0add_2/y:output:0*
T0*&
_output_shapes
:2
add_2l
	truediv_5RealDivMean:output:0	add_2:z:0*
T0*&
_output_shapes
:2
	truediv_5W
add_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_3/yi
add_3AddV2truediv_5:z:0add_3/y:output:0*
T0*&
_output_shapes
:2
add_3Q
Log_1Log	add_3:z:0*
T0*&
_output_shapes
:2
Log_1_
truediv_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_6/ys
	truediv_6RealDiv	Log_1:y:0truediv_6/y:output:0*
T0*&
_output_shapes
:2
	truediv_6[
Round_1Roundtruediv_6:z:0*
T0*&
_output_shapes
:2	
Round_1W
Pow_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_2/xe
Pow_2PowPow_2/x:output:0Round_1:y:0*
T0*&
_output_shapes
:2
Pow_2S
Abs_2Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_2h
	truediv_7RealDiv	Abs_2:y:0	Pow_2:z:0*
T0*&
_output_shapes
:2
	truediv_7W
add_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
add_4/yi
add_4AddV2truediv_7:z:0add_4/y:output:0*
T0*&
_output_shapes
:2
add_4W
Floor_1Floor	add_4:z:0*
T0*&
_output_shapes
:2	
Floor_1Y
Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_1/yi
Less_1LessFloor_1:y:0Less_1/y:output:0*
T0*&
_output_shapes
:2
Less_1V
Sign_1Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_1
ones_like_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_1/Const�
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*&
_output_shapes
:2
ones_like_1W
mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2	
mul_5/yn
mul_5Mulones_like_1:output:0mul_5/y:output:0*
T0*&
_output_shapes
:2
mul_5_
truediv_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_8/ys
	truediv_8RealDiv	mul_5:z:0truediv_8/y:output:0*
T0*&
_output_shapes
:2
	truediv_8}

SelectV2_1SelectV2
Less_1:z:0Floor_1:y:0truediv_8:z:0*
T0*&
_output_shapes
:2

SelectV2_1g
mul_6Mul
Sign_1:y:0SelectV2_1:output:0*
T0*&
_output_shapes
:2
mul_6^
Mul_7Multruediv:z:0	mul_6:z:0*
T0*&
_output_shapes
:2
Mul_7�
Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_2/reduction_indices�
Mean_2Mean	Mul_7:z:0!Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_2\
Mul_8Mul	mul_6:z:0	mul_6:z:0*
T0*&
_output_shapes
:2
Mul_8�
Mean_3/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_3/reduction_indices�
Mean_3Mean	Mul_8:z:0!Mean_3/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_3W
add_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_5/yk
add_5AddV2Mean_3:output:0add_5/y:output:0*
T0*&
_output_shapes
:2
add_5n
	truediv_9RealDivMean_2:output:0	add_5:z:0*
T0*&
_output_shapes
:2
	truediv_9W
add_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_6/yi
add_6AddV2truediv_9:z:0add_6/y:output:0*
T0*&
_output_shapes
:2
add_6Q
Log_2Log	add_6:z:0*
T0*&
_output_shapes
:2
Log_2a
truediv_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_10/yv

truediv_10RealDiv	Log_2:y:0truediv_10/y:output:0*
T0*&
_output_shapes
:2

truediv_10\
Round_2Roundtruediv_10:z:0*
T0*&
_output_shapes
:2	
Round_2W
Pow_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_3/xe
Pow_3PowPow_3/x:output:0Round_2:y:0*
T0*&
_output_shapes
:2
Pow_3S
Abs_3Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_3j

truediv_11RealDiv	Abs_3:y:0	Pow_3:z:0*
T0*&
_output_shapes
:2

truediv_11W
add_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
add_7/yj
add_7AddV2truediv_11:z:0add_7/y:output:0*
T0*&
_output_shapes
:2
add_7W
Floor_2Floor	add_7:z:0*
T0*&
_output_shapes
:2	
Floor_2Y
Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_2/yi
Less_2LessFloor_2:y:0Less_2/y:output:0*
T0*&
_output_shapes
:2
Less_2V
Sign_2Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_2
ones_like_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_2/Shapek
ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_2/Const�
ones_like_2Fillones_like_2/Shape:output:0ones_like_2/Const:output:0*
T0*&
_output_shapes
:2
ones_like_2W
mul_9/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2	
mul_9/yn
mul_9Mulones_like_2:output:0mul_9/y:output:0*
T0*&
_output_shapes
:2
mul_9a
truediv_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_12/yv

truediv_12RealDiv	mul_9:z:0truediv_12/y:output:0*
T0*&
_output_shapes
:2

truediv_12~

SelectV2_2SelectV2
Less_2:z:0Floor_2:y:0truediv_12:z:0*
T0*&
_output_shapes
:2

SelectV2_2i
mul_10Mul
Sign_2:y:0SelectV2_2:output:0*
T0*&
_output_shapes
:2
mul_10a
Mul_11Multruediv:z:0
mul_10:z:0*
T0*&
_output_shapes
:2
Mul_11�
Mean_4/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_4/reduction_indices�
Mean_4Mean
Mul_11:z:0!Mean_4/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_4`
Mul_12Mul
mul_10:z:0
mul_10:z:0*
T0*&
_output_shapes
:2
Mul_12�
Mean_5/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_5/reduction_indices�
Mean_5Mean
Mul_12:z:0!Mean_5/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_5W
add_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_8/yk
add_8AddV2Mean_5:output:0add_8/y:output:0*
T0*&
_output_shapes
:2
add_8p

truediv_13RealDivMean_4:output:0	add_8:z:0*
T0*&
_output_shapes
:2

truediv_13W
add_9/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_9/yj
add_9AddV2truediv_13:z:0add_9/y:output:0*
T0*&
_output_shapes
:2
add_9Q
Log_3Log	add_9:z:0*
T0*&
_output_shapes
:2
Log_3a
truediv_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_14/yv

truediv_14RealDiv	Log_3:y:0truediv_14/y:output:0*
T0*&
_output_shapes
:2

truediv_14\
Round_3Roundtruediv_14:z:0*
T0*&
_output_shapes
:2	
Round_3W
Pow_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_4/xe
Pow_4PowPow_4/x:output:0Round_3:y:0*
T0*&
_output_shapes
:2
Pow_4S
Abs_4Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_4j

truediv_15RealDiv	Abs_4:y:0	Pow_4:z:0*
T0*&
_output_shapes
:2

truediv_15Y
add_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2

add_10/ym
add_10AddV2truediv_15:z:0add_10/y:output:0*
T0*&
_output_shapes
:2
add_10X
Floor_3Floor
add_10:z:0*
T0*&
_output_shapes
:2	
Floor_3Y
Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_3/yi
Less_3LessFloor_3:y:0Less_3/y:output:0*
T0*&
_output_shapes
:2
Less_3V
Sign_3Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_3
ones_like_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_3/Shapek
ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_3/Const�
ones_like_3Fillones_like_3/Shape:output:0ones_like_3/Const:output:0*
T0*&
_output_shapes
:2
ones_like_3Y
mul_13/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2

mul_13/yq
mul_13Mulones_like_3:output:0mul_13/y:output:0*
T0*&
_output_shapes
:2
mul_13a
truediv_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_16/yw

truediv_16RealDiv
mul_13:z:0truediv_16/y:output:0*
T0*&
_output_shapes
:2

truediv_16~

SelectV2_3SelectV2
Less_3:z:0Floor_3:y:0truediv_16:z:0*
T0*&
_output_shapes
:2

SelectV2_3i
mul_14Mul
Sign_3:y:0SelectV2_3:output:0*
T0*&
_output_shapes
:2
mul_14a
Mul_15Multruediv:z:0
mul_14:z:0*
T0*&
_output_shapes
:2
Mul_15�
Mean_6/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_6/reduction_indices�
Mean_6Mean
Mul_15:z:0!Mean_6/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_6`
Mul_16Mul
mul_14:z:0
mul_14:z:0*
T0*&
_output_shapes
:2
Mul_16�
Mean_7/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_7/reduction_indices�
Mean_7Mean
Mul_16:z:0!Mean_7/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_7Y
add_11/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_11/yn
add_11AddV2Mean_7:output:0add_11/y:output:0*
T0*&
_output_shapes
:2
add_11q

truediv_17RealDivMean_6:output:0
add_11:z:0*
T0*&
_output_shapes
:2

truediv_17Y
add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_12/ym
add_12AddV2truediv_17:z:0add_12/y:output:0*
T0*&
_output_shapes
:2
add_12R
Log_4Log
add_12:z:0*
T0*&
_output_shapes
:2
Log_4a
truediv_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_18/yv

truediv_18RealDiv	Log_4:y:0truediv_18/y:output:0*
T0*&
_output_shapes
:2

truediv_18\
Round_4Roundtruediv_18:z:0*
T0*&
_output_shapes
:2	
Round_4W
Pow_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_5/xe
Pow_5PowPow_5/x:output:0Round_4:y:0*
T0*&
_output_shapes
:2
Pow_5S
Abs_5Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_5j

truediv_19RealDiv	Abs_5:y:0	Pow_5:z:0*
T0*&
_output_shapes
:2

truediv_19Y
add_13/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2

add_13/ym
add_13AddV2truediv_19:z:0add_13/y:output:0*
T0*&
_output_shapes
:2
add_13X
Floor_4Floor
add_13:z:0*
T0*&
_output_shapes
:2	
Floor_4Y
Less_4/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_4/yi
Less_4LessFloor_4:y:0Less_4/y:output:0*
T0*&
_output_shapes
:2
Less_4V
Sign_4Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_4
ones_like_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_4/Shapek
ones_like_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_4/Const�
ones_like_4Fillones_like_4/Shape:output:0ones_like_4/Const:output:0*
T0*&
_output_shapes
:2
ones_like_4Y
mul_17/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2

mul_17/yq
mul_17Mulones_like_4:output:0mul_17/y:output:0*
T0*&
_output_shapes
:2
mul_17a
truediv_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_20/yw

truediv_20RealDiv
mul_17:z:0truediv_20/y:output:0*
T0*&
_output_shapes
:2

truediv_20~

SelectV2_4SelectV2
Less_4:z:0Floor_4:y:0truediv_20:z:0*
T0*&
_output_shapes
:2

SelectV2_4i
mul_18Mul
Sign_4:y:0SelectV2_4:output:0*
T0*&
_output_shapes
:2
mul_18a
Mul_19Multruediv:z:0
mul_18:z:0*
T0*&
_output_shapes
:2
Mul_19�
Mean_8/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_8/reduction_indices�
Mean_8Mean
Mul_19:z:0!Mean_8/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_8`
Mul_20Mul
mul_18:z:0
mul_18:z:0*
T0*&
_output_shapes
:2
Mul_20�
Mean_9/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_9/reduction_indices�
Mean_9Mean
Mul_20:z:0!Mean_9/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_9Y
add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_14/yn
add_14AddV2Mean_9:output:0add_14/y:output:0*
T0*&
_output_shapes
:2
add_14q

truediv_21RealDivMean_8:output:0
add_14:z:0*
T0*&
_output_shapes
:2

truediv_21Y
add_15/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_15/ym
add_15AddV2truediv_21:z:0add_15/y:output:0*
T0*&
_output_shapes
:2
add_15R
Log_5Log
add_15:z:0*
T0*&
_output_shapes
:2
Log_5a
truediv_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_22/yv

truediv_22RealDiv	Log_5:y:0truediv_22/y:output:0*
T0*&
_output_shapes
:2

truediv_22\
Round_5Roundtruediv_22:z:0*
T0*&
_output_shapes
:2	
Round_5W
Pow_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_6/xe
Pow_6PowPow_6/x:output:0Round_5:y:0*
T0*&
_output_shapes
:2
Pow_6Y
mul_21/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2

mul_21/yf
mul_21Mul	Pow_6:z:0mul_21/y:output:0*
T0*&
_output_shapes
:2
mul_21_
mul_22MulCast:y:0truediv:z:0*
T0*&
_output_shapes
:2
mul_22^
mul_23MulCast:y:0
mul_18:z:0*
T0*&
_output_shapes
:2
mul_23a
truediv_23/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2
truediv_23/yw

truediv_23RealDiv
mul_23:z:0truediv_23/y:output:0*
T0*&
_output_shapes
:2

truediv_23d
mul_24Mul
mul_21:z:0truediv_23:z:0*
T0*&
_output_shapes
:2
mul_24N
NegNeg
mul_22:z:0*
T0*&
_output_shapes
:2
Neg_
add_16AddV2Neg:y:0
mul_24:z:0*
T0*&
_output_shapes
:2
add_16Y
mul_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2

mul_25/xg
mul_25Mulmul_25/x:output:0
add_16:z:0*
T0*&
_output_shapes
:2
mul_25i
StopGradientStopGradient
mul_25:z:0*
T0*&
_output_shapes
:2
StopGradientm
add_17AddV2
mul_22:z:0StopGradient:output:0*
T0*&
_output_shapes
:2
add_17�
convolutionConv2Dinputs
add_17:z:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
convolution�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconvolution:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityx
NoOpNoOp^BiasAdd/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2 
ReadVariableOpReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_q_conv2d_layer_call_fn_3135112

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_q_conv2d_layer_call_and_return_conditional_losses_31325872
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�N
�
 __inference__traced_save_3136015
file_prefix8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop.
*savev2_q_conv2d_kernel_read_readvariableop,
(savev2_q_conv2d_bias_read_readvariableop0
,savev2_q_conv2d_1_kernel_read_readvariableop.
*savev2_q_conv2d_1_bias_read_readvariableop0
,savev2_q_conv2d_2_kernel_read_readvariableop.
*savev2_q_conv2d_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop?
;savev2_adam_batch_normalization_gamma_m_read_readvariableop>
:savev2_adam_batch_normalization_beta_m_read_readvariableop5
1savev2_adam_q_conv2d_kernel_m_read_readvariableop3
/savev2_adam_q_conv2d_bias_m_read_readvariableop7
3savev2_adam_q_conv2d_1_kernel_m_read_readvariableop5
1savev2_adam_q_conv2d_1_bias_m_read_readvariableop7
3savev2_adam_q_conv2d_2_kernel_m_read_readvariableop5
1savev2_adam_q_conv2d_2_bias_m_read_readvariableop?
;savev2_adam_batch_normalization_gamma_v_read_readvariableop>
:savev2_adam_batch_normalization_beta_v_read_readvariableop5
1savev2_adam_q_conv2d_kernel_v_read_readvariableop3
/savev2_adam_q_conv2d_bias_v_read_readvariableop7
3savev2_adam_q_conv2d_1_kernel_v_read_readvariableop5
1savev2_adam_q_conv2d_1_bias_v_read_readvariableop7
3savev2_adam_q_conv2d_2_kernel_v_read_readvariableop5
1savev2_adam_q_conv2d_2_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*�
value�B�$B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:04savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop*savev2_q_conv2d_kernel_read_readvariableop(savev2_q_conv2d_bias_read_readvariableop,savev2_q_conv2d_1_kernel_read_readvariableop*savev2_q_conv2d_1_bias_read_readvariableop,savev2_q_conv2d_2_kernel_read_readvariableop*savev2_q_conv2d_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop;savev2_adam_batch_normalization_gamma_m_read_readvariableop:savev2_adam_batch_normalization_beta_m_read_readvariableop1savev2_adam_q_conv2d_kernel_m_read_readvariableop/savev2_adam_q_conv2d_bias_m_read_readvariableop3savev2_adam_q_conv2d_1_kernel_m_read_readvariableop1savev2_adam_q_conv2d_1_bias_m_read_readvariableop3savev2_adam_q_conv2d_2_kernel_m_read_readvariableop1savev2_adam_q_conv2d_2_bias_m_read_readvariableop;savev2_adam_batch_normalization_gamma_v_read_readvariableop:savev2_adam_batch_normalization_beta_v_read_readvariableop1savev2_adam_q_conv2d_kernel_v_read_readvariableop/savev2_adam_q_conv2d_bias_v_read_readvariableop3savev2_adam_q_conv2d_1_kernel_v_read_readvariableop1savev2_adam_q_conv2d_1_bias_v_read_readvariableop3savev2_adam_q_conv2d_2_kernel_v_read_readvariableop1savev2_adam_q_conv2d_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *2
dtypes(
&2$	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*�
_input_shapes�
�: ::::::::::: : : : : : : : : ::::::::::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,	(
&
_output_shapes
:: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::, (
&
_output_shapes
:: !

_output_shapes
::,"(
&
_output_shapes
:: #

_output_shapes
::$

_output_shapes
: 
��
�
G__inference_q_conv2d_2_layer_call_and_return_conditional_losses_3135877

inputs1
readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�ReadVariableOpP
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
Pow/xP
Pow/yConst*
_output_shapes
: *
dtype0*
value	B : 2
Pow/yR
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: 2
PowM
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast�
ReadVariableOpReadVariableOpreadvariableop_resource*&
_output_shapes
:*
dtype02
ReadVariableOpp
truedivRealDivReadVariableOp:value:0Cast:y:0*
T0*&
_output_shapes
:2	
truedivO
AbsAbstruediv:z:0*
T0*&
_output_shapes
:2
Abs�
Max/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Max/reduction_indices|
MaxMaxAbs:y:0Max/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
MaxS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
mul/y`
mulMulMax:output:0mul/y:output:0*
T0*&
_output_shapes
:2
mul_
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2
truediv_1/yq
	truediv_1RealDivmul:z:0truediv_1/y:output:0*
T0*&
_output_shapes
:2
	truediv_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
add/yc
addAddV2truediv_1:z:0add/y:output:0*
T0*&
_output_shapes
:2
addK
LogLogadd:z:0*
T0*&
_output_shapes
:2
Log_
truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_2/yq
	truediv_2RealDivLog:y:0truediv_2/y:output:0*
T0*&
_output_shapes
:2
	truediv_2W
RoundRoundtruediv_2:z:0*
T0*&
_output_shapes
:2
RoundW
Pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_1/xc
Pow_1PowPow_1/x:output:0	Round:y:0*
T0*&
_output_shapes
:2
Pow_1S
Abs_1Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_1h
	truediv_3RealDiv	Abs_1:y:0	Pow_1:z:0*
T0*&
_output_shapes
:2
	truediv_3W
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
add_1/yi
add_1AddV2truediv_3:z:0add_1/y:output:0*
T0*&
_output_shapes
:2
add_1S
FloorFloor	add_1:z:0*
T0*&
_output_shapes
:2
FloorU
Less/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2
Less/ya
LessLess	Floor:y:0Less/y:output:0*
T0*&
_output_shapes
:2
LessR
SignSigntruediv:z:0*
T0*&
_output_shapes
:2
Sign{
ones_like/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like/Const�
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*&
_output_shapes
:2
	ones_likeW
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2	
mul_1/yl
mul_1Mulones_like:output:0mul_1/y:output:0*
T0*&
_output_shapes
:2
mul_1_
truediv_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_4/ys
	truediv_4RealDiv	mul_1:z:0truediv_4/y:output:0*
T0*&
_output_shapes
:2
	truediv_4u
SelectV2SelectV2Less:z:0	Floor:y:0truediv_4:z:0*
T0*&
_output_shapes
:2

SelectV2c
mul_2MulSign:y:0SelectV2:output:0*
T0*&
_output_shapes
:2
mul_2^
Mul_3Multruediv:z:0	mul_2:z:0*
T0*&
_output_shapes
:2
Mul_3�
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean/reduction_indices�
MeanMean	Mul_3:z:0Mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean\
Mul_4Mul	mul_2:z:0	mul_2:z:0*
T0*&
_output_shapes
:2
Mul_4�
Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_1/reduction_indices�
Mean_1Mean	Mul_4:z:0!Mean_1/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_1W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_2/yk
add_2AddV2Mean_1:output:0add_2/y:output:0*
T0*&
_output_shapes
:2
add_2l
	truediv_5RealDivMean:output:0	add_2:z:0*
T0*&
_output_shapes
:2
	truediv_5W
add_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_3/yi
add_3AddV2truediv_5:z:0add_3/y:output:0*
T0*&
_output_shapes
:2
add_3Q
Log_1Log	add_3:z:0*
T0*&
_output_shapes
:2
Log_1_
truediv_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_6/ys
	truediv_6RealDiv	Log_1:y:0truediv_6/y:output:0*
T0*&
_output_shapes
:2
	truediv_6[
Round_1Roundtruediv_6:z:0*
T0*&
_output_shapes
:2	
Round_1W
Pow_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_2/xe
Pow_2PowPow_2/x:output:0Round_1:y:0*
T0*&
_output_shapes
:2
Pow_2S
Abs_2Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_2h
	truediv_7RealDiv	Abs_2:y:0	Pow_2:z:0*
T0*&
_output_shapes
:2
	truediv_7W
add_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
add_4/yi
add_4AddV2truediv_7:z:0add_4/y:output:0*
T0*&
_output_shapes
:2
add_4W
Floor_1Floor	add_4:z:0*
T0*&
_output_shapes
:2	
Floor_1Y
Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_1/yi
Less_1LessFloor_1:y:0Less_1/y:output:0*
T0*&
_output_shapes
:2
Less_1V
Sign_1Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_1
ones_like_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_1/Const�
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*&
_output_shapes
:2
ones_like_1W
mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2	
mul_5/yn
mul_5Mulones_like_1:output:0mul_5/y:output:0*
T0*&
_output_shapes
:2
mul_5_
truediv_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_8/ys
	truediv_8RealDiv	mul_5:z:0truediv_8/y:output:0*
T0*&
_output_shapes
:2
	truediv_8}

SelectV2_1SelectV2
Less_1:z:0Floor_1:y:0truediv_8:z:0*
T0*&
_output_shapes
:2

SelectV2_1g
mul_6Mul
Sign_1:y:0SelectV2_1:output:0*
T0*&
_output_shapes
:2
mul_6^
Mul_7Multruediv:z:0	mul_6:z:0*
T0*&
_output_shapes
:2
Mul_7�
Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_2/reduction_indices�
Mean_2Mean	Mul_7:z:0!Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_2\
Mul_8Mul	mul_6:z:0	mul_6:z:0*
T0*&
_output_shapes
:2
Mul_8�
Mean_3/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_3/reduction_indices�
Mean_3Mean	Mul_8:z:0!Mean_3/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_3W
add_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_5/yk
add_5AddV2Mean_3:output:0add_5/y:output:0*
T0*&
_output_shapes
:2
add_5n
	truediv_9RealDivMean_2:output:0	add_5:z:0*
T0*&
_output_shapes
:2
	truediv_9W
add_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_6/yi
add_6AddV2truediv_9:z:0add_6/y:output:0*
T0*&
_output_shapes
:2
add_6Q
Log_2Log	add_6:z:0*
T0*&
_output_shapes
:2
Log_2a
truediv_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_10/yv

truediv_10RealDiv	Log_2:y:0truediv_10/y:output:0*
T0*&
_output_shapes
:2

truediv_10\
Round_2Roundtruediv_10:z:0*
T0*&
_output_shapes
:2	
Round_2W
Pow_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_3/xe
Pow_3PowPow_3/x:output:0Round_2:y:0*
T0*&
_output_shapes
:2
Pow_3S
Abs_3Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_3j

truediv_11RealDiv	Abs_3:y:0	Pow_3:z:0*
T0*&
_output_shapes
:2

truediv_11W
add_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
add_7/yj
add_7AddV2truediv_11:z:0add_7/y:output:0*
T0*&
_output_shapes
:2
add_7W
Floor_2Floor	add_7:z:0*
T0*&
_output_shapes
:2	
Floor_2Y
Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_2/yi
Less_2LessFloor_2:y:0Less_2/y:output:0*
T0*&
_output_shapes
:2
Less_2V
Sign_2Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_2
ones_like_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_2/Shapek
ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_2/Const�
ones_like_2Fillones_like_2/Shape:output:0ones_like_2/Const:output:0*
T0*&
_output_shapes
:2
ones_like_2W
mul_9/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2	
mul_9/yn
mul_9Mulones_like_2:output:0mul_9/y:output:0*
T0*&
_output_shapes
:2
mul_9a
truediv_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_12/yv

truediv_12RealDiv	mul_9:z:0truediv_12/y:output:0*
T0*&
_output_shapes
:2

truediv_12~

SelectV2_2SelectV2
Less_2:z:0Floor_2:y:0truediv_12:z:0*
T0*&
_output_shapes
:2

SelectV2_2i
mul_10Mul
Sign_2:y:0SelectV2_2:output:0*
T0*&
_output_shapes
:2
mul_10a
Mul_11Multruediv:z:0
mul_10:z:0*
T0*&
_output_shapes
:2
Mul_11�
Mean_4/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_4/reduction_indices�
Mean_4Mean
Mul_11:z:0!Mean_4/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_4`
Mul_12Mul
mul_10:z:0
mul_10:z:0*
T0*&
_output_shapes
:2
Mul_12�
Mean_5/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_5/reduction_indices�
Mean_5Mean
Mul_12:z:0!Mean_5/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_5W
add_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_8/yk
add_8AddV2Mean_5:output:0add_8/y:output:0*
T0*&
_output_shapes
:2
add_8p

truediv_13RealDivMean_4:output:0	add_8:z:0*
T0*&
_output_shapes
:2

truediv_13W
add_9/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32	
add_9/yj
add_9AddV2truediv_13:z:0add_9/y:output:0*
T0*&
_output_shapes
:2
add_9Q
Log_3Log	add_9:z:0*
T0*&
_output_shapes
:2
Log_3a
truediv_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_14/yv

truediv_14RealDiv	Log_3:y:0truediv_14/y:output:0*
T0*&
_output_shapes
:2

truediv_14\
Round_3Roundtruediv_14:z:0*
T0*&
_output_shapes
:2	
Round_3W
Pow_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_4/xe
Pow_4PowPow_4/x:output:0Round_3:y:0*
T0*&
_output_shapes
:2
Pow_4S
Abs_4Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_4j

truediv_15RealDiv	Abs_4:y:0	Pow_4:z:0*
T0*&
_output_shapes
:2

truediv_15Y
add_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2

add_10/ym
add_10AddV2truediv_15:z:0add_10/y:output:0*
T0*&
_output_shapes
:2
add_10X
Floor_3Floor
add_10:z:0*
T0*&
_output_shapes
:2	
Floor_3Y
Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_3/yi
Less_3LessFloor_3:y:0Less_3/y:output:0*
T0*&
_output_shapes
:2
Less_3V
Sign_3Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_3
ones_like_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_3/Shapek
ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_3/Const�
ones_like_3Fillones_like_3/Shape:output:0ones_like_3/Const:output:0*
T0*&
_output_shapes
:2
ones_like_3Y
mul_13/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2

mul_13/yq
mul_13Mulones_like_3:output:0mul_13/y:output:0*
T0*&
_output_shapes
:2
mul_13a
truediv_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_16/yw

truediv_16RealDiv
mul_13:z:0truediv_16/y:output:0*
T0*&
_output_shapes
:2

truediv_16~

SelectV2_3SelectV2
Less_3:z:0Floor_3:y:0truediv_16:z:0*
T0*&
_output_shapes
:2

SelectV2_3i
mul_14Mul
Sign_3:y:0SelectV2_3:output:0*
T0*&
_output_shapes
:2
mul_14a
Mul_15Multruediv:z:0
mul_14:z:0*
T0*&
_output_shapes
:2
Mul_15�
Mean_6/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_6/reduction_indices�
Mean_6Mean
Mul_15:z:0!Mean_6/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_6`
Mul_16Mul
mul_14:z:0
mul_14:z:0*
T0*&
_output_shapes
:2
Mul_16�
Mean_7/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_7/reduction_indices�
Mean_7Mean
Mul_16:z:0!Mean_7/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_7Y
add_11/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_11/yn
add_11AddV2Mean_7:output:0add_11/y:output:0*
T0*&
_output_shapes
:2
add_11q

truediv_17RealDivMean_6:output:0
add_11:z:0*
T0*&
_output_shapes
:2

truediv_17Y
add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_12/ym
add_12AddV2truediv_17:z:0add_12/y:output:0*
T0*&
_output_shapes
:2
add_12R
Log_4Log
add_12:z:0*
T0*&
_output_shapes
:2
Log_4a
truediv_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_18/yv

truediv_18RealDiv	Log_4:y:0truediv_18/y:output:0*
T0*&
_output_shapes
:2

truediv_18\
Round_4Roundtruediv_18:z:0*
T0*&
_output_shapes
:2	
Round_4W
Pow_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_5/xe
Pow_5PowPow_5/x:output:0Round_4:y:0*
T0*&
_output_shapes
:2
Pow_5S
Abs_5Abstruediv:z:0*
T0*&
_output_shapes
:2
Abs_5j

truediv_19RealDiv	Abs_5:y:0	Pow_5:z:0*
T0*&
_output_shapes
:2

truediv_19Y
add_13/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2

add_13/ym
add_13AddV2truediv_19:z:0add_13/y:output:0*
T0*&
_output_shapes
:2
add_13X
Floor_4Floor
add_13:z:0*
T0*&
_output_shapes
:2	
Floor_4Y
Less_4/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F2

Less_4/yi
Less_4LessFloor_4:y:0Less_4/y:output:0*
T0*&
_output_shapes
:2
Less_4V
Sign_4Signtruediv:z:0*
T0*&
_output_shapes
:2
Sign_4
ones_like_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
ones_like_4/Shapek
ones_like_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like_4/Const�
ones_like_4Fillones_like_4/Shape:output:0ones_like_4/Const:output:0*
T0*&
_output_shapes
:2
ones_like_4Y
mul_17/yConst*
_output_shapes
: *
dtype0*
valueB
 * �G2

mul_17/yq
mul_17Mulones_like_4:output:0mul_17/y:output:0*
T0*&
_output_shapes
:2
mul_17a
truediv_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
truediv_20/yw

truediv_20RealDiv
mul_17:z:0truediv_20/y:output:0*
T0*&
_output_shapes
:2

truediv_20~

SelectV2_4SelectV2
Less_4:z:0Floor_4:y:0truediv_20:z:0*
T0*&
_output_shapes
:2

SelectV2_4i
mul_18Mul
Sign_4:y:0SelectV2_4:output:0*
T0*&
_output_shapes
:2
mul_18a
Mul_19Multruediv:z:0
mul_18:z:0*
T0*&
_output_shapes
:2
Mul_19�
Mean_8/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_8/reduction_indices�
Mean_8Mean
Mul_19:z:0!Mean_8/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_8`
Mul_20Mul
mul_18:z:0
mul_18:z:0*
T0*&
_output_shapes
:2
Mul_20�
Mean_9/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2
Mean_9/reduction_indices�
Mean_9Mean
Mul_20:z:0!Mean_9/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
Mean_9Y
add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_14/yn
add_14AddV2Mean_9:output:0add_14/y:output:0*
T0*&
_output_shapes
:2
add_14q

truediv_21RealDivMean_8:output:0
add_14:z:0*
T0*&
_output_shapes
:2

truediv_21Y
add_15/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32

add_15/ym
add_15AddV2truediv_21:z:0add_15/y:output:0*
T0*&
_output_shapes
:2
add_15R
Log_5Log
add_15:z:0*
T0*&
_output_shapes
:2
Log_5a
truediv_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?2
truediv_22/yv

truediv_22RealDiv	Log_5:y:0truediv_22/y:output:0*
T0*&
_output_shapes
:2

truediv_22\
Round_5Roundtruediv_22:z:0*
T0*&
_output_shapes
:2	
Round_5W
Pow_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
Pow_6/xe
Pow_6PowPow_6/x:output:0Round_5:y:0*
T0*&
_output_shapes
:2
Pow_6Y
mul_21/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2

mul_21/yf
mul_21Mul	Pow_6:z:0mul_21/y:output:0*
T0*&
_output_shapes
:2
mul_21_
mul_22MulCast:y:0truediv:z:0*
T0*&
_output_shapes
:2
mul_22^
mul_23MulCast:y:0
mul_18:z:0*
T0*&
_output_shapes
:2
mul_23a
truediv_23/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G2
truediv_23/yw

truediv_23RealDiv
mul_23:z:0truediv_23/y:output:0*
T0*&
_output_shapes
:2

truediv_23d
mul_24Mul
mul_21:z:0truediv_23:z:0*
T0*&
_output_shapes
:2
mul_24N
NegNeg
mul_22:z:0*
T0*&
_output_shapes
:2
Neg_
add_16AddV2Neg:y:0
mul_24:z:0*
T0*&
_output_shapes
:2
add_16Y
mul_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2

mul_25/xg
mul_25Mulmul_25/x:output:0
add_16:z:0*
T0*&
_output_shapes
:2
mul_25i
StopGradientStopGradient
mul_25:z:0*
T0*&
_output_shapes
:2
StopGradientm
add_17AddV2
mul_22:z:0StopGradient:output:0*
T0*&
_output_shapes
:2
add_17�
convolutionConv2Dinputs
add_17:z:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
convolution�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconvolution:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identityx
NoOpNoOp^BiasAdd/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2 
ReadVariableOpReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�&
g
K__inference_q_activation_1_layer_call_and_return_conditional_losses_3135655

inputs
identityP
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :2
Pow/xP
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :2
Pow/yR
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: 2
PowM
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
CastT
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
Pow_1/xT
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
Pow_1/yZ
Pow_1PowPow_1/x:output:0Pow_1/y:output:0*
T0*
_output_shapes
: 2
Pow_1S
Cast_1Cast	Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_1S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
ConstV
Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B :2

Cast_2/x[
Cast_2CastCast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_2S
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �A2
sub/yN
subSub
Cast_2:y:0sub/y:output:0*
T0*
_output_shapes
: 2
subO
Pow_2PowConst:output:0sub:z:0*
T0*
_output_shapes
: 2
Pow_2M
sub_1Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: 2
sub_1p
	LessEqual	LessEqualinputs	sub_1:z:0*
T0*/
_output_shapes
:���������2
	LessEqualV
ReluReluinputs*
T0*/
_output_shapes
:���������2
ReluX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones_like/Const�
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*/
_output_shapes
:���������2
	ones_likeM
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: 2
sub_2j
mulMulones_like:output:0	sub_2:z:0*
T0*/
_output_shapes
:���������2
mul�
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*/
_output_shapes
:���������2

SelectV2a
mul_1MulinputsCast:y:0*
T0*/
_output_shapes
:���������2
mul_1n
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*/
_output_shapes
:���������2	
truedivX
NegNegtruediv:z:0*
T0*/
_output_shapes
:���������2
Neg^
RoundRoundtruediv:z:0*
T0*/
_output_shapes
:���������2
Rounda
addAddV2Neg:y:0	Round:y:0*
T0*/
_output_shapes
:���������2
addo
StopGradientStopGradientadd:z:0*
T0*/
_output_shapes
:���������2
StopGradientu
add_1AddV2truediv:z:0StopGradient:output:0*
T0*/
_output_shapes
:���������2
add_1p
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*/
_output_shapes
:���������2
	truediv_1_
truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
truediv_2/xb
	truediv_2RealDivtruediv_2/x:output:0Cast:y:0*
T0*
_output_shapes
: 2
	truediv_2W
sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2	
sub_3/xW
sub_3Subsub_3/x:output:0truediv_2:z:0*
T0*
_output_shapes
: 2
sub_3�
clip_by_value/MinimumMinimumtruediv_1:z:0	sub_3:z:0*
T0*/
_output_shapes
:���������2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y�
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:���������2
clip_by_valuen
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*/
_output_shapes
:���������2
mul_2b
Neg_1NegSelectV2:output:0*
T0*/
_output_shapes
:���������2
Neg_1g
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*/
_output_shapes
:���������2
add_2W
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2	
mul_3/xl
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*/
_output_shapes
:���������2
mul_3u
StopGradient_1StopGradient	mul_3:z:0*
T0*/
_output_shapes
:���������2
StopGradient_1}
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*/
_output_shapes
:���������2
add_3e
IdentityIdentity	add_3:z:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�%
�
G__inference_sequential_layer_call_and_return_conditional_losses_3133393
input_1)
batch_normalization_3133365:)
batch_normalization_3133367:)
batch_normalization_3133369:)
batch_normalization_3133371:*
q_conv2d_3133374:
q_conv2d_3133376:,
q_conv2d_1_3133380: 
q_conv2d_1_3133382:,
q_conv2d_2_3133386: 
q_conv2d_2_3133388:
identity��+batch_normalization/StatefulPartitionedCall� q_conv2d/StatefulPartitionedCall�"q_conv2d_1/StatefulPartitionedCall�"q_conv2d_2/StatefulPartitionedCall�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCallinput_1batch_normalization_3133365batch_normalization_3133367batch_normalization_3133369batch_normalization_3133371*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_31323642-
+batch_normalization/StatefulPartitionedCall�
 q_conv2d/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0q_conv2d_3133374q_conv2d_3133376*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_q_conv2d_layer_call_and_return_conditional_losses_31325872"
 q_conv2d/StatefulPartitionedCall�
q_activation/PartitionedCallPartitionedCall)q_conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *R
fMRK
I__inference_q_activation_layer_call_and_return_conditional_losses_31326422
q_activation/PartitionedCall�
"q_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall%q_activation/PartitionedCall:output:0q_conv2d_1_3133380q_conv2d_1_3133382*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_q_conv2d_1_layer_call_and_return_conditional_losses_31328572$
"q_conv2d_1/StatefulPartitionedCall�
q_activation_1/PartitionedCallPartitionedCall+q_conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_q_activation_1_layer_call_and_return_conditional_losses_31329122 
q_activation_1/PartitionedCall�
"q_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall'q_activation_1/PartitionedCall:output:0q_conv2d_2_3133386q_conv2d_2_3133388*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_q_conv2d_2_layer_call_and_return_conditional_losses_31331272$
"q_conv2d_2/StatefulPartitionedCall�
activation/PartitionedCallPartitionedCall+q_conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_31331382
activation/PartitionedCall�
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������2

Identity�
NoOpNoOp,^batch_normalization/StatefulPartitionedCall!^q_conv2d/StatefulPartitionedCall#^q_conv2d_1/StatefulPartitionedCall#^q_conv2d_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2D
 q_conv2d/StatefulPartitionedCall q_conv2d/StatefulPartitionedCall2H
"q_conv2d_1/StatefulPartitionedCall"q_conv2d_1/StatefulPartitionedCall2H
"q_conv2d_2/StatefulPartitionedCall"q_conv2d_2/StatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
input_18
serving_default_input_1:0���������F

activation8
StatefulPartitionedCall:0���������tensorflow/serving/predict:�
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
	optimizer
	regularization_losses

trainable_variables
	variables
	keras_api

signatures
�_default_save_signature
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
axis
	gamma
beta
moving_mean
moving_variance
regularization_losses
trainable_variables
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
kernel_quantizer
kernel_quantizer_internal

quantizers

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	quantizer
 regularization_losses
!trainable_variables
"	variables
#	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
$kernel_quantizer
$kernel_quantizer_internal
%
quantizers

&kernel
'bias
(regularization_losses
)trainable_variables
*	variables
+	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
,	quantizer
-regularization_losses
.trainable_variables
/	variables
0	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
1kernel_quantizer
1kernel_quantizer_internal
2
quantizers

3kernel
4bias
5regularization_losses
6trainable_variables
7	variables
8	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
9regularization_losses
:trainable_variables
;	variables
<	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
=iter

>beta_1

?beta_2
	@decay
Alearning_ratemumvmwmx&my'mz3m{4m|v}v~vv�&v�'v�3v�4v�"
	optimizer
 "
trackable_list_wrapper
X
0
1
2
3
&4
'5
36
47"
trackable_list_wrapper
f
0
1
2
3
4
5
&6
'7
38
49"
trackable_list_wrapper
�
	regularization_losses

Blayers
Clayer_regularization_losses

trainable_variables
Dnon_trainable_variables
Elayer_metrics
Fmetrics
	variables
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
 "
trackable_list_wrapper
':%2batch_normalization/gamma
&:$2batch_normalization/beta
/:- (2batch_normalization/moving_mean
3:1 (2#batch_normalization/moving_variance
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
�
regularization_losses

Glayers
Hlayer_regularization_losses
trainable_variables
Inon_trainable_variables
Jlayer_metrics
Kmetrics
	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
'
0"
trackable_list_wrapper
):'2q_conv2d/kernel
:2q_conv2d/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
regularization_losses

Llayers
Mlayer_regularization_losses
trainable_variables
Nnon_trainable_variables
Olayer_metrics
Pmetrics
	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
 regularization_losses

Qlayers
Rlayer_regularization_losses
!trainable_variables
Snon_trainable_variables
Tlayer_metrics
Umetrics
"	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
'
$0"
trackable_list_wrapper
+:)2q_conv2d_1/kernel
:2q_conv2d_1/bias
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
�
(regularization_losses

Vlayers
Wlayer_regularization_losses
)trainable_variables
Xnon_trainable_variables
Ylayer_metrics
Zmetrics
*	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
-regularization_losses

[layers
\layer_regularization_losses
.trainable_variables
]non_trainable_variables
^layer_metrics
_metrics
/	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
'
10"
trackable_list_wrapper
+:)2q_conv2d_2/kernel
:2q_conv2d_2/bias
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
�
5regularization_losses

`layers
alayer_regularization_losses
6trainable_variables
bnon_trainable_variables
clayer_metrics
dmetrics
7	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
9regularization_losses

elayers
flayer_regularization_losses
:trainable_variables
gnon_trainable_variables
hlayer_metrics
imetrics
;	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
N
	ltotal
	mcount
n	variables
o	keras_api"
_tf_keras_metric
^
	ptotal
	qcount
r
_fn_kwargs
s	variables
t	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
l0
m1"
trackable_list_wrapper
-
n	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
p0
q1"
trackable_list_wrapper
-
s	variables"
_generic_user_object
,:*2 Adam/batch_normalization/gamma/m
+:)2Adam/batch_normalization/beta/m
.:,2Adam/q_conv2d/kernel/m
 :2Adam/q_conv2d/bias/m
0:.2Adam/q_conv2d_1/kernel/m
": 2Adam/q_conv2d_1/bias/m
0:.2Adam/q_conv2d_2/kernel/m
": 2Adam/q_conv2d_2/bias/m
,:*2 Adam/batch_normalization/gamma/v
+:)2Adam/batch_normalization/beta/v
.:,2Adam/q_conv2d/kernel/v
 :2Adam/q_conv2d/bias/v
0:.2Adam/q_conv2d_1/kernel/v
": 2Adam/q_conv2d_1/bias/v
0:.2Adam/q_conv2d_2/kernel/v
": 2Adam/q_conv2d_2/bias/v
�B�
"__inference__wrapped_model_3132214input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_sequential_layer_call_fn_3133164
,__inference_sequential_layer_call_fn_3133482
,__inference_sequential_layer_call_fn_3133507
,__inference_sequential_layer_call_fn_3133362�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_sequential_layer_call_and_return_conditional_losses_3134243
G__inference_sequential_layer_call_and_return_conditional_losses_3134979
G__inference_sequential_layer_call_and_return_conditional_losses_3133393
G__inference_sequential_layer_call_and_return_conditional_losses_3133424�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
5__inference_batch_normalization_layer_call_fn_3134992
5__inference_batch_normalization_layer_call_fn_3135005
5__inference_batch_normalization_layer_call_fn_3135018
5__inference_batch_normalization_layer_call_fn_3135031�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3135049
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3135067
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3135085
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3135103�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_q_conv2d_layer_call_fn_3135112�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_q_conv2d_layer_call_and_return_conditional_losses_3135325�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_q_activation_layer_call_fn_3135330�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_q_activation_layer_call_and_return_conditional_losses_3135379�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_q_conv2d_1_layer_call_fn_3135388�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_q_conv2d_1_layer_call_and_return_conditional_losses_3135601�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
0__inference_q_activation_1_layer_call_fn_3135606�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_q_activation_1_layer_call_and_return_conditional_losses_3135655�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_q_conv2d_2_layer_call_fn_3135664�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_q_conv2d_2_layer_call_and_return_conditional_losses_3135877�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_activation_layer_call_fn_3135882�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_activation_layer_call_and_return_conditional_losses_3135887�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_signature_wrapper_3133457input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
"__inference__wrapped_model_3132214�
&'348�5
.�+
)�&
input_1���������
� "?�<
:

activation,�)

activation����������
G__inference_activation_layer_call_and_return_conditional_losses_3135887h7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
,__inference_activation_layer_call_fn_3135882[7�4
-�*
(�%
inputs���������
� " �����������
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3135049�M�J
C�@
:�7
inputs+���������������������������
p 
� "?�<
5�2
0+���������������������������
� �
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3135067�M�J
C�@
:�7
inputs+���������������������������
p
� "?�<
5�2
0+���������������������������
� �
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3135085r;�8
1�.
(�%
inputs���������
p 
� "-�*
#� 
0���������
� �
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3135103r;�8
1�.
(�%
inputs���������
p
� "-�*
#� 
0���������
� �
5__inference_batch_normalization_layer_call_fn_3134992�M�J
C�@
:�7
inputs+���������������������������
p 
� "2�/+����������������������������
5__inference_batch_normalization_layer_call_fn_3135005�M�J
C�@
:�7
inputs+���������������������������
p
� "2�/+����������������������������
5__inference_batch_normalization_layer_call_fn_3135018e;�8
1�.
(�%
inputs���������
p 
� " �����������
5__inference_batch_normalization_layer_call_fn_3135031e;�8
1�.
(�%
inputs���������
p
� " �����������
K__inference_q_activation_1_layer_call_and_return_conditional_losses_3135655h7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
0__inference_q_activation_1_layer_call_fn_3135606[7�4
-�*
(�%
inputs���������
� " �����������
I__inference_q_activation_layer_call_and_return_conditional_losses_3135379h7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
.__inference_q_activation_layer_call_fn_3135330[7�4
-�*
(�%
inputs���������
� " �����������
G__inference_q_conv2d_1_layer_call_and_return_conditional_losses_3135601l&'7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
,__inference_q_conv2d_1_layer_call_fn_3135388_&'7�4
-�*
(�%
inputs���������
� " �����������
G__inference_q_conv2d_2_layer_call_and_return_conditional_losses_3135877l347�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
,__inference_q_conv2d_2_layer_call_fn_3135664_347�4
-�*
(�%
inputs���������
� " �����������
E__inference_q_conv2d_layer_call_and_return_conditional_losses_3135325l7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
*__inference_q_conv2d_layer_call_fn_3135112_7�4
-�*
(�%
inputs���������
� " �����������
G__inference_sequential_layer_call_and_return_conditional_losses_3133393}
&'34@�=
6�3
)�&
input_1���������
p 

 
� "-�*
#� 
0���������
� �
G__inference_sequential_layer_call_and_return_conditional_losses_3133424}
&'34@�=
6�3
)�&
input_1���������
p

 
� "-�*
#� 
0���������
� �
G__inference_sequential_layer_call_and_return_conditional_losses_3134243|
&'34?�<
5�2
(�%
inputs���������
p 

 
� "-�*
#� 
0���������
� �
G__inference_sequential_layer_call_and_return_conditional_losses_3134979|
&'34?�<
5�2
(�%
inputs���������
p

 
� "-�*
#� 
0���������
� �
,__inference_sequential_layer_call_fn_3133164p
&'34@�=
6�3
)�&
input_1���������
p 

 
� " �����������
,__inference_sequential_layer_call_fn_3133362p
&'34@�=
6�3
)�&
input_1���������
p

 
� " �����������
,__inference_sequential_layer_call_fn_3133482o
&'34?�<
5�2
(�%
inputs���������
p 

 
� " �����������
,__inference_sequential_layer_call_fn_3133507o
&'34?�<
5�2
(�%
inputs���������
p

 
� " �����������
%__inference_signature_wrapper_3133457�
&'34C�@
� 
9�6
4
input_1)�&
input_1���������"?�<
:

activation,�)

activation���������