??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??	
?
conv2d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_16/kernel
}
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*&
_output_shapes
:*
dtype0
t
conv2d_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_16/bias
m
"conv2d_16/bias/Read/ReadVariableOpReadVariableOpconv2d_16/bias*
_output_shapes
:*
dtype0
?
conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_17/kernel
}
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*&
_output_shapes
:*
dtype0
t
conv2d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_17/bias
m
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes
:*
dtype0
z
dense_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x* 
shared_namedense_27/kernel
s
#dense_27/kernel/Read/ReadVariableOpReadVariableOpdense_27/kernel*
_output_shapes

:x*
dtype0
r
dense_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*
shared_namedense_27/bias
k
!dense_27/bias/Read/ReadVariableOpReadVariableOpdense_27/bias*
_output_shapes
:x*
dtype0
z
dense_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:xT* 
shared_namedense_28/kernel
s
#dense_28/kernel/Read/ReadVariableOpReadVariableOpdense_28/kernel*
_output_shapes

:xT*
dtype0
r
dense_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*
shared_namedense_28/bias
k
!dense_28/bias/Read/ReadVariableOpReadVariableOpdense_28/bias*
_output_shapes
:T*
dtype0
z
dense_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T* 
shared_namedense_29/kernel
s
#dense_29/kernel/Read/ReadVariableOpReadVariableOpdense_29/kernel*
_output_shapes

:T*
dtype0
r
dense_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_29/bias
k
!dense_29/bias/Read/ReadVariableOpReadVariableOpdense_29/bias*
_output_shapes
:*
dtype0
?
training_272/Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *'
shared_nametraining_272/Adam/iter
y
*training_272/Adam/iter/Read/ReadVariableOpReadVariableOptraining_272/Adam/iter*
_output_shapes
: *
dtype0	
?
training_272/Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nametraining_272/Adam/beta_1
}
,training_272/Adam/beta_1/Read/ReadVariableOpReadVariableOptraining_272/Adam/beta_1*
_output_shapes
: *
dtype0
?
training_272/Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nametraining_272/Adam/beta_2
}
,training_272/Adam/beta_2/Read/ReadVariableOpReadVariableOptraining_272/Adam/beta_2*
_output_shapes
: *
dtype0
?
training_272/Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nametraining_272/Adam/decay
{
+training_272/Adam/decay/Read/ReadVariableOpReadVariableOptraining_272/Adam/decay*
_output_shapes
: *
dtype0
?
training_272/Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!training_272/Adam/learning_rate
?
3training_272/Adam/learning_rate/Read/ReadVariableOpReadVariableOptraining_272/Adam/learning_rate*
_output_shapes
: *
dtype0
d
total_13VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
total_13
]
total_13/Read/ReadVariableOpReadVariableOptotal_13*
_output_shapes
: *
dtype0
d
count_13VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
count_13
]
count_13/Read/ReadVariableOpReadVariableOpcount_13*
_output_shapes
: *
dtype0
?
$training_272/Adam/conv2d_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$training_272/Adam/conv2d_16/kernel/m
?
8training_272/Adam/conv2d_16/kernel/m/Read/ReadVariableOpReadVariableOp$training_272/Adam/conv2d_16/kernel/m*&
_output_shapes
:*
dtype0
?
"training_272/Adam/conv2d_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"training_272/Adam/conv2d_16/bias/m
?
6training_272/Adam/conv2d_16/bias/m/Read/ReadVariableOpReadVariableOp"training_272/Adam/conv2d_16/bias/m*
_output_shapes
:*
dtype0
?
$training_272/Adam/conv2d_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$training_272/Adam/conv2d_17/kernel/m
?
8training_272/Adam/conv2d_17/kernel/m/Read/ReadVariableOpReadVariableOp$training_272/Adam/conv2d_17/kernel/m*&
_output_shapes
:*
dtype0
?
"training_272/Adam/conv2d_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"training_272/Adam/conv2d_17/bias/m
?
6training_272/Adam/conv2d_17/bias/m/Read/ReadVariableOpReadVariableOp"training_272/Adam/conv2d_17/bias/m*
_output_shapes
:*
dtype0
?
#training_272/Adam/dense_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*4
shared_name%#training_272/Adam/dense_27/kernel/m
?
7training_272/Adam/dense_27/kernel/m/Read/ReadVariableOpReadVariableOp#training_272/Adam/dense_27/kernel/m*
_output_shapes

:x*
dtype0
?
!training_272/Adam/dense_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*2
shared_name#!training_272/Adam/dense_27/bias/m
?
5training_272/Adam/dense_27/bias/m/Read/ReadVariableOpReadVariableOp!training_272/Adam/dense_27/bias/m*
_output_shapes
:x*
dtype0
?
#training_272/Adam/dense_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:xT*4
shared_name%#training_272/Adam/dense_28/kernel/m
?
7training_272/Adam/dense_28/kernel/m/Read/ReadVariableOpReadVariableOp#training_272/Adam/dense_28/kernel/m*
_output_shapes

:xT*
dtype0
?
!training_272/Adam/dense_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*2
shared_name#!training_272/Adam/dense_28/bias/m
?
5training_272/Adam/dense_28/bias/m/Read/ReadVariableOpReadVariableOp!training_272/Adam/dense_28/bias/m*
_output_shapes
:T*
dtype0
?
#training_272/Adam/dense_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T*4
shared_name%#training_272/Adam/dense_29/kernel/m
?
7training_272/Adam/dense_29/kernel/m/Read/ReadVariableOpReadVariableOp#training_272/Adam/dense_29/kernel/m*
_output_shapes

:T*
dtype0
?
!training_272/Adam/dense_29/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!training_272/Adam/dense_29/bias/m
?
5training_272/Adam/dense_29/bias/m/Read/ReadVariableOpReadVariableOp!training_272/Adam/dense_29/bias/m*
_output_shapes
:*
dtype0
?
$training_272/Adam/conv2d_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$training_272/Adam/conv2d_16/kernel/v
?
8training_272/Adam/conv2d_16/kernel/v/Read/ReadVariableOpReadVariableOp$training_272/Adam/conv2d_16/kernel/v*&
_output_shapes
:*
dtype0
?
"training_272/Adam/conv2d_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"training_272/Adam/conv2d_16/bias/v
?
6training_272/Adam/conv2d_16/bias/v/Read/ReadVariableOpReadVariableOp"training_272/Adam/conv2d_16/bias/v*
_output_shapes
:*
dtype0
?
$training_272/Adam/conv2d_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$training_272/Adam/conv2d_17/kernel/v
?
8training_272/Adam/conv2d_17/kernel/v/Read/ReadVariableOpReadVariableOp$training_272/Adam/conv2d_17/kernel/v*&
_output_shapes
:*
dtype0
?
"training_272/Adam/conv2d_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"training_272/Adam/conv2d_17/bias/v
?
6training_272/Adam/conv2d_17/bias/v/Read/ReadVariableOpReadVariableOp"training_272/Adam/conv2d_17/bias/v*
_output_shapes
:*
dtype0
?
#training_272/Adam/dense_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*4
shared_name%#training_272/Adam/dense_27/kernel/v
?
7training_272/Adam/dense_27/kernel/v/Read/ReadVariableOpReadVariableOp#training_272/Adam/dense_27/kernel/v*
_output_shapes

:x*
dtype0
?
!training_272/Adam/dense_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*2
shared_name#!training_272/Adam/dense_27/bias/v
?
5training_272/Adam/dense_27/bias/v/Read/ReadVariableOpReadVariableOp!training_272/Adam/dense_27/bias/v*
_output_shapes
:x*
dtype0
?
#training_272/Adam/dense_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:xT*4
shared_name%#training_272/Adam/dense_28/kernel/v
?
7training_272/Adam/dense_28/kernel/v/Read/ReadVariableOpReadVariableOp#training_272/Adam/dense_28/kernel/v*
_output_shapes

:xT*
dtype0
?
!training_272/Adam/dense_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*2
shared_name#!training_272/Adam/dense_28/bias/v
?
5training_272/Adam/dense_28/bias/v/Read/ReadVariableOpReadVariableOp!training_272/Adam/dense_28/bias/v*
_output_shapes
:T*
dtype0
?
#training_272/Adam/dense_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T*4
shared_name%#training_272/Adam/dense_29/kernel/v
?
7training_272/Adam/dense_29/kernel/v/Read/ReadVariableOpReadVariableOp#training_272/Adam/dense_29/kernel/v*
_output_shapes

:T*
dtype0
?
!training_272/Adam/dense_29/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!training_272/Adam/dense_29/bias/v
?
5training_272/Adam/dense_29/bias/v/Read/ReadVariableOpReadVariableOp!training_272/Adam/dense_29/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?E
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?E
value?EB?E B?E
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api
h

 kernel
!bias
"regularization_losses
#trainable_variables
$	variables
%	keras_api
R
&regularization_losses
'trainable_variables
(	variables
)	keras_api
R
*regularization_losses
+trainable_variables
,	variables
-	keras_api
R
.regularization_losses
/trainable_variables
0	variables
1	keras_api
h

2kernel
3bias
4regularization_losses
5trainable_variables
6	variables
7	keras_api
h

8kernel
9bias
:regularization_losses
;trainable_variables
<	variables
=	keras_api
R
>regularization_losses
?trainable_variables
@	variables
A	keras_api
h

Bkernel
Cbias
Dregularization_losses
Etrainable_variables
F	variables
G	keras_api
?
Hiter

Ibeta_1

Jbeta_2
	Kdecay
Llearning_ratem?m? m?!m?2m?3m?8m?9m?Bm?Cm?v?v? v?!v?2v?3v?8v?9v?Bv?Cv?
 
F
0
1
 2
!3
24
35
86
97
B8
C9
F
0
1
 2
!3
24
35
86
97
B8
C9
?
regularization_losses
trainable_variables
Mnon_trainable_variables

Nlayers
	variables
Olayer_regularization_losses
Pmetrics
Qlayer_metrics
 
\Z
VARIABLE_VALUEconv2d_16/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_16/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses
trainable_variables
Rnon_trainable_variables

Slayers
	variables
Tlayer_regularization_losses
Umetrics
Vlayer_metrics
 
 
 
?
regularization_losses
trainable_variables
Wnon_trainable_variables

Xlayers
	variables
Ylayer_regularization_losses
Zmetrics
[layer_metrics
 
 
 
?
regularization_losses
trainable_variables
\non_trainable_variables

]layers
	variables
^layer_regularization_losses
_metrics
`layer_metrics
\Z
VARIABLE_VALUEconv2d_17/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_17/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

 0
!1

 0
!1
?
"regularization_losses
#trainable_variables
anon_trainable_variables

blayers
$	variables
clayer_regularization_losses
dmetrics
elayer_metrics
 
 
 
?
&regularization_losses
'trainable_variables
fnon_trainable_variables

glayers
(	variables
hlayer_regularization_losses
imetrics
jlayer_metrics
 
 
 
?
*regularization_losses
+trainable_variables
knon_trainable_variables

llayers
,	variables
mlayer_regularization_losses
nmetrics
olayer_metrics
 
 
 
?
.regularization_losses
/trainable_variables
pnon_trainable_variables

qlayers
0	variables
rlayer_regularization_losses
smetrics
tlayer_metrics
[Y
VARIABLE_VALUEdense_27/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_27/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

20
31

20
31
?
4regularization_losses
5trainable_variables
unon_trainable_variables

vlayers
6	variables
wlayer_regularization_losses
xmetrics
ylayer_metrics
[Y
VARIABLE_VALUEdense_28/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_28/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

80
91

80
91
?
:regularization_losses
;trainable_variables
znon_trainable_variables

{layers
<	variables
|layer_regularization_losses
}metrics
~layer_metrics
 
 
 
?
>regularization_losses
?trainable_variables
non_trainable_variables
?layers
@	variables
 ?layer_regularization_losses
?metrics
?layer_metrics
[Y
VARIABLE_VALUEdense_29/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_29/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

B0
C1

B0
C1
?
Dregularization_losses
Etrainable_variables
?non_trainable_variables
?layers
F	variables
 ?layer_regularization_losses
?metrics
?layer_metrics
US
VARIABLE_VALUEtraining_272/Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEtraining_272/Adam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEtraining_272/Adam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEtraining_272/Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEtraining_272/Adam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
N
0
1
2
3
4
5
6
7
	8

9
10
 

?0
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
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
RP
VARIABLE_VALUEtotal_134keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcount_134keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
??
VARIABLE_VALUE$training_272/Adam/conv2d_16/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"training_272/Adam/conv2d_16/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$training_272/Adam/conv2d_17/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"training_272/Adam/conv2d_17/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#training_272/Adam/dense_27/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!training_272/Adam/dense_27/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#training_272/Adam/dense_28/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!training_272/Adam/dense_28/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#training_272/Adam/dense_29/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!training_272/Adam/dense_29/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$training_272/Adam/conv2d_16/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"training_272/Adam/conv2d_16/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$training_272/Adam/conv2d_17/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"training_272/Adam/conv2d_17/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#training_272/Adam/dense_27/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!training_272/Adam/dense_27/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#training_272/Adam/dense_28/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!training_272/Adam/dense_28/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#training_272/Adam/dense_29/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!training_272/Adam/dense_29/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_16_inputPlaceholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_16_inputconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasdense_27/kerneldense_27/biasdense_28/kerneldense_28/biasdense_29/kerneldense_29/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_49203
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_16/kernel/Read/ReadVariableOp"conv2d_16/bias/Read/ReadVariableOp$conv2d_17/kernel/Read/ReadVariableOp"conv2d_17/bias/Read/ReadVariableOp#dense_27/kernel/Read/ReadVariableOp!dense_27/bias/Read/ReadVariableOp#dense_28/kernel/Read/ReadVariableOp!dense_28/bias/Read/ReadVariableOp#dense_29/kernel/Read/ReadVariableOp!dense_29/bias/Read/ReadVariableOp*training_272/Adam/iter/Read/ReadVariableOp,training_272/Adam/beta_1/Read/ReadVariableOp,training_272/Adam/beta_2/Read/ReadVariableOp+training_272/Adam/decay/Read/ReadVariableOp3training_272/Adam/learning_rate/Read/ReadVariableOptotal_13/Read/ReadVariableOpcount_13/Read/ReadVariableOp8training_272/Adam/conv2d_16/kernel/m/Read/ReadVariableOp6training_272/Adam/conv2d_16/bias/m/Read/ReadVariableOp8training_272/Adam/conv2d_17/kernel/m/Read/ReadVariableOp6training_272/Adam/conv2d_17/bias/m/Read/ReadVariableOp7training_272/Adam/dense_27/kernel/m/Read/ReadVariableOp5training_272/Adam/dense_27/bias/m/Read/ReadVariableOp7training_272/Adam/dense_28/kernel/m/Read/ReadVariableOp5training_272/Adam/dense_28/bias/m/Read/ReadVariableOp7training_272/Adam/dense_29/kernel/m/Read/ReadVariableOp5training_272/Adam/dense_29/bias/m/Read/ReadVariableOp8training_272/Adam/conv2d_16/kernel/v/Read/ReadVariableOp6training_272/Adam/conv2d_16/bias/v/Read/ReadVariableOp8training_272/Adam/conv2d_17/kernel/v/Read/ReadVariableOp6training_272/Adam/conv2d_17/bias/v/Read/ReadVariableOp7training_272/Adam/dense_27/kernel/v/Read/ReadVariableOp5training_272/Adam/dense_27/bias/v/Read/ReadVariableOp7training_272/Adam/dense_28/kernel/v/Read/ReadVariableOp5training_272/Adam/dense_28/bias/v/Read/ReadVariableOp7training_272/Adam/dense_29/kernel/v/Read/ReadVariableOp5training_272/Adam/dense_29/bias/v/Read/ReadVariableOpConst*2
Tin+
)2'	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_49662
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasdense_27/kerneldense_27/biasdense_28/kerneldense_28/biasdense_29/kerneldense_29/biastraining_272/Adam/itertraining_272/Adam/beta_1training_272/Adam/beta_2training_272/Adam/decaytraining_272/Adam/learning_ratetotal_13count_13$training_272/Adam/conv2d_16/kernel/m"training_272/Adam/conv2d_16/bias/m$training_272/Adam/conv2d_17/kernel/m"training_272/Adam/conv2d_17/bias/m#training_272/Adam/dense_27/kernel/m!training_272/Adam/dense_27/bias/m#training_272/Adam/dense_28/kernel/m!training_272/Adam/dense_28/bias/m#training_272/Adam/dense_29/kernel/m!training_272/Adam/dense_29/bias/m$training_272/Adam/conv2d_16/kernel/v"training_272/Adam/conv2d_16/bias/v$training_272/Adam/conv2d_17/kernel/v"training_272/Adam/conv2d_17/bias/v#training_272/Adam/dense_27/kernel/v!training_272/Adam/dense_27/bias/v#training_272/Adam/dense_28/kernel/v!training_272/Adam/dense_28/bias/v#training_272/Adam/dense_29/kernel/v!training_272/Adam/dense_29/bias/v*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_49783??
?
b
)__inference_dropout_8_layer_call_fn_49505

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_490382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????T22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
?
(__inference_dense_27_layer_call_fn_49465

inputs
dense_27_kernel
dense_27_bias
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsdense_27_kerneldense_27_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_27_layer_call_and_return_conditional_losses_489912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????x2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_conv2d_16_layer_call_and_return_conditional_losses_48858

inputs*
&conv2d_readvariableop_conv2d_16_kernel)
%biasadd_readvariableop_conv2d_16_bias
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOp&conv2d_readvariableop_conv2d_16_kernel*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOp%biasadd_readvariableop_conv2d_16_bias*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????  ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
c
D__inference_dropout_6_layer_call_and_return_conditional_losses_48883

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_8_layer_call_and_return_conditional_losses_49495

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????T2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????T*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????T2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????T2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????T2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????T:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?4
?
H__inference_sequential_13_layer_call_and_return_conditional_losses_49080
conv2d_16_input
conv2d_16_conv2d_16_kernel
conv2d_16_conv2d_16_bias
conv2d_17_conv2d_17_kernel
conv2d_17_conv2d_17_bias
dense_27_dense_27_kernel
dense_27_dense_27_bias
dense_28_dense_28_kernel
dense_28_dense_28_bias
dense_29_dense_29_kernel
dense_29_dense_29_bias
identity??!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall? dense_27/StatefulPartitionedCall? dense_28/StatefulPartitionedCall? dense_29/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?!dropout_7/StatefulPartitionedCall?!dropout_8/StatefulPartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCallconv2d_16_inputconv2d_16_conv2d_16_kernelconv2d_16_conv2d_16_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_488582#
!conv2d_16/StatefulPartitionedCall?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_488832#
!dropout_6/StatefulPartitionedCall?
 max_pooling2d_10/PartitionedCallPartitionedCall*dropout_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_488232"
 max_pooling2d_10/PartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_17_conv2d_17_kernelconv2d_17_conv2d_17_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_489182#
!conv2d_17/StatefulPartitionedCall?
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_489422#
!dropout_7/StatefulPartitionedCall?
 max_pooling2d_11/PartitionedCallPartitionedCall*dropout_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_488402"
 max_pooling2d_11/PartitionedCall?
flatten_10/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_10_layer_call_and_return_conditional_losses_489722
flatten_10/PartitionedCall?
 dense_27/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_27_dense_27_kerneldense_27_dense_27_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_27_layer_call_and_return_conditional_losses_489912"
 dense_27/StatefulPartitionedCall?
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0dense_28_dense_28_kerneldense_28_dense_28_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_28_layer_call_and_return_conditional_losses_490142"
 dense_28/StatefulPartitionedCall?
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_490382#
!dropout_8/StatefulPartitionedCall?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0dense_29_dense_29_kerneldense_29_dense_29_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_29_layer_call_and_return_conditional_losses_490672"
 dense_29/StatefulPartitionedCall?
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall:` \
/
_output_shapes
:?????????  
)
_user_specified_nameconv2d_16_input
??
?
!__inference__traced_restore_49783
file_prefix%
!assignvariableop_conv2d_16_kernel%
!assignvariableop_1_conv2d_16_bias'
#assignvariableop_2_conv2d_17_kernel%
!assignvariableop_3_conv2d_17_bias&
"assignvariableop_4_dense_27_kernel$
 assignvariableop_5_dense_27_bias&
"assignvariableop_6_dense_28_kernel$
 assignvariableop_7_dense_28_bias&
"assignvariableop_8_dense_29_kernel$
 assignvariableop_9_dense_29_bias.
*assignvariableop_10_training_272_adam_iter0
,assignvariableop_11_training_272_adam_beta_10
,assignvariableop_12_training_272_adam_beta_2/
+assignvariableop_13_training_272_adam_decay7
3assignvariableop_14_training_272_adam_learning_rate 
assignvariableop_15_total_13 
assignvariableop_16_count_13<
8assignvariableop_17_training_272_adam_conv2d_16_kernel_m:
6assignvariableop_18_training_272_adam_conv2d_16_bias_m<
8assignvariableop_19_training_272_adam_conv2d_17_kernel_m:
6assignvariableop_20_training_272_adam_conv2d_17_bias_m;
7assignvariableop_21_training_272_adam_dense_27_kernel_m9
5assignvariableop_22_training_272_adam_dense_27_bias_m;
7assignvariableop_23_training_272_adam_dense_28_kernel_m9
5assignvariableop_24_training_272_adam_dense_28_bias_m;
7assignvariableop_25_training_272_adam_dense_29_kernel_m9
5assignvariableop_26_training_272_adam_dense_29_bias_m<
8assignvariableop_27_training_272_adam_conv2d_16_kernel_v:
6assignvariableop_28_training_272_adam_conv2d_16_bias_v<
8assignvariableop_29_training_272_adam_conv2d_17_kernel_v:
6assignvariableop_30_training_272_adam_conv2d_17_bias_v;
7assignvariableop_31_training_272_adam_dense_27_kernel_v9
5assignvariableop_32_training_272_adam_dense_27_bias_v;
7assignvariableop_33_training_272_adam_dense_28_kernel_v9
5assignvariableop_34_training_272_adam_dense_28_bias_v;
7assignvariableop_35_training_272_adam_dense_29_kernel_v9
5assignvariableop_36_training_272_adam_dense_29_bias_v
identity_38??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*?
value?B?&B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::*4
dtypes*
(2&	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_16_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_16_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_17_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_17_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_27_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_27_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_28_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_28_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_29_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_29_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp*assignvariableop_10_training_272_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp,assignvariableop_11_training_272_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp,assignvariableop_12_training_272_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp+assignvariableop_13_training_272_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp3assignvariableop_14_training_272_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_13Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_13Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp8assignvariableop_17_training_272_adam_conv2d_16_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp6assignvariableop_18_training_272_adam_conv2d_16_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp8assignvariableop_19_training_272_adam_conv2d_17_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp6assignvariableop_20_training_272_adam_conv2d_17_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp7assignvariableop_21_training_272_adam_dense_27_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp5assignvariableop_22_training_272_adam_dense_27_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp7assignvariableop_23_training_272_adam_dense_28_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp5assignvariableop_24_training_272_adam_dense_28_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp7assignvariableop_25_training_272_adam_dense_29_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp5assignvariableop_26_training_272_adam_dense_29_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp8assignvariableop_27_training_272_adam_conv2d_16_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_training_272_adam_conv2d_16_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp8assignvariableop_29_training_272_adam_conv2d_17_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp6assignvariableop_30_training_272_adam_conv2d_17_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp7assignvariableop_31_training_272_adam_dense_27_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp5assignvariableop_32_training_272_adam_dense_27_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp7assignvariableop_33_training_272_adam_dense_28_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp5assignvariableop_34_training_272_adam_dense_28_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp7assignvariableop_35_training_272_adam_dense_29_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp5assignvariableop_36_training_272_adam_dense_29_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_369
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_37Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_37?
Identity_38IdentityIdentity_37:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_38"#
identity_38Identity_38:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362(
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
?	
?
-__inference_sequential_13_layer_call_fn_49331

inputs
conv2d_16_kernel
conv2d_16_bias
conv2d_17_kernel
conv2d_17_bias
dense_27_kernel
dense_27_bias
dense_28_kernel
dense_28_bias
dense_29_kernel
dense_29_bias
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_16_kernelconv2d_16_biasconv2d_17_kernelconv2d_17_biasdense_27_kerneldense_27_biasdense_28_kerneldense_28_biasdense_29_kerneldense_29_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_13_layer_call_and_return_conditional_losses_491332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?/
?
H__inference_sequential_13_layer_call_and_return_conditional_losses_49173

inputs
conv2d_16_conv2d_16_kernel
conv2d_16_conv2d_16_bias
conv2d_17_conv2d_17_kernel
conv2d_17_conv2d_17_bias
dense_27_dense_27_kernel
dense_27_dense_27_bias
dense_28_dense_28_kernel
dense_28_dense_28_bias
dense_29_dense_29_kernel
dense_29_dense_29_bias
identity??!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall? dense_27/StatefulPartitionedCall? dense_28/StatefulPartitionedCall? dense_29/StatefulPartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_16_conv2d_16_kernelconv2d_16_conv2d_16_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_488582#
!conv2d_16/StatefulPartitionedCall?
dropout_6/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_488882
dropout_6/PartitionedCall?
 max_pooling2d_10/PartitionedCallPartitionedCall"dropout_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_488232"
 max_pooling2d_10/PartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_17_conv2d_17_kernelconv2d_17_conv2d_17_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_489182#
!conv2d_17/StatefulPartitionedCall?
dropout_7/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_489472
dropout_7/PartitionedCall?
 max_pooling2d_11/PartitionedCallPartitionedCall"dropout_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_488402"
 max_pooling2d_11/PartitionedCall?
flatten_10/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_10_layer_call_and_return_conditional_losses_489722
flatten_10/PartitionedCall?
 dense_27/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_27_dense_27_kerneldense_27_dense_27_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_27_layer_call_and_return_conditional_losses_489912"
 dense_27/StatefulPartitionedCall?
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0dense_28_dense_28_kerneldense_28_dense_28_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_28_layer_call_and_return_conditional_losses_490142"
 dense_28/StatefulPartitionedCall?
dropout_8/PartitionedCallPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_490432
dropout_8/PartitionedCall?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0dense_29_dense_29_kerneldense_29_dense_29_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_29_layer_call_and_return_conditional_losses_490672"
 dense_29/StatefulPartitionedCall?
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?L
?	
 __inference__wrapped_model_48809
conv2d_16_inputB
>sequential_13_conv2d_16_conv2d_readvariableop_conv2d_16_kernelA
=sequential_13_conv2d_16_biasadd_readvariableop_conv2d_16_biasB
>sequential_13_conv2d_17_conv2d_readvariableop_conv2d_17_kernelA
=sequential_13_conv2d_17_biasadd_readvariableop_conv2d_17_bias@
<sequential_13_dense_27_matmul_readvariableop_dense_27_kernel?
;sequential_13_dense_27_biasadd_readvariableop_dense_27_bias@
<sequential_13_dense_28_matmul_readvariableop_dense_28_kernel?
;sequential_13_dense_28_biasadd_readvariableop_dense_28_bias@
<sequential_13_dense_29_matmul_readvariableop_dense_29_kernel?
;sequential_13_dense_29_biasadd_readvariableop_dense_29_bias
identity??.sequential_13/conv2d_16/BiasAdd/ReadVariableOp?-sequential_13/conv2d_16/Conv2D/ReadVariableOp?.sequential_13/conv2d_17/BiasAdd/ReadVariableOp?-sequential_13/conv2d_17/Conv2D/ReadVariableOp?-sequential_13/dense_27/BiasAdd/ReadVariableOp?,sequential_13/dense_27/MatMul/ReadVariableOp?-sequential_13/dense_28/BiasAdd/ReadVariableOp?,sequential_13/dense_28/MatMul/ReadVariableOp?-sequential_13/dense_29/BiasAdd/ReadVariableOp?,sequential_13/dense_29/MatMul/ReadVariableOp?
-sequential_13/conv2d_16/Conv2D/ReadVariableOpReadVariableOp>sequential_13_conv2d_16_conv2d_readvariableop_conv2d_16_kernel*&
_output_shapes
:*
dtype02/
-sequential_13/conv2d_16/Conv2D/ReadVariableOp?
sequential_13/conv2d_16/Conv2DConv2Dconv2d_16_input5sequential_13/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2 
sequential_13/conv2d_16/Conv2D?
.sequential_13/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp=sequential_13_conv2d_16_biasadd_readvariableop_conv2d_16_bias*
_output_shapes
:*
dtype020
.sequential_13/conv2d_16/BiasAdd/ReadVariableOp?
sequential_13/conv2d_16/BiasAddBiasAdd'sequential_13/conv2d_16/Conv2D:output:06sequential_13/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2!
sequential_13/conv2d_16/BiasAdd?
sequential_13/conv2d_16/ReluRelu(sequential_13/conv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
sequential_13/conv2d_16/Relu?
 sequential_13/dropout_6/IdentityIdentity*sequential_13/conv2d_16/Relu:activations:0*
T0*/
_output_shapes
:?????????2"
 sequential_13/dropout_6/Identity?
&sequential_13/max_pooling2d_10/MaxPoolMaxPool)sequential_13/dropout_6/Identity:output:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2(
&sequential_13/max_pooling2d_10/MaxPool?
-sequential_13/conv2d_17/Conv2D/ReadVariableOpReadVariableOp>sequential_13_conv2d_17_conv2d_readvariableop_conv2d_17_kernel*&
_output_shapes
:*
dtype02/
-sequential_13/conv2d_17/Conv2D/ReadVariableOp?
sequential_13/conv2d_17/Conv2DConv2D/sequential_13/max_pooling2d_10/MaxPool:output:05sequential_13/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2 
sequential_13/conv2d_17/Conv2D?
.sequential_13/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp=sequential_13_conv2d_17_biasadd_readvariableop_conv2d_17_bias*
_output_shapes
:*
dtype020
.sequential_13/conv2d_17/BiasAdd/ReadVariableOp?
sequential_13/conv2d_17/BiasAddBiasAdd'sequential_13/conv2d_17/Conv2D:output:06sequential_13/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2!
sequential_13/conv2d_17/BiasAdd?
sequential_13/conv2d_17/ReluRelu(sequential_13/conv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
sequential_13/conv2d_17/Relu?
 sequential_13/dropout_7/IdentityIdentity*sequential_13/conv2d_17/Relu:activations:0*
T0*/
_output_shapes
:?????????2"
 sequential_13/dropout_7/Identity?
&sequential_13/max_pooling2d_11/MaxPoolMaxPool)sequential_13/dropout_7/Identity:output:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2(
&sequential_13/max_pooling2d_11/MaxPool?
sequential_13/flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2 
sequential_13/flatten_10/Const?
 sequential_13/flatten_10/ReshapeReshape/sequential_13/max_pooling2d_11/MaxPool:output:0'sequential_13/flatten_10/Const:output:0*
T0*'
_output_shapes
:?????????2"
 sequential_13/flatten_10/Reshape?
,sequential_13/dense_27/MatMul/ReadVariableOpReadVariableOp<sequential_13_dense_27_matmul_readvariableop_dense_27_kernel*
_output_shapes

:x*
dtype02.
,sequential_13/dense_27/MatMul/ReadVariableOp?
sequential_13/dense_27/MatMulMatMul)sequential_13/flatten_10/Reshape:output:04sequential_13/dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
sequential_13/dense_27/MatMul?
-sequential_13/dense_27/BiasAdd/ReadVariableOpReadVariableOp;sequential_13_dense_27_biasadd_readvariableop_dense_27_bias*
_output_shapes
:x*
dtype02/
-sequential_13/dense_27/BiasAdd/ReadVariableOp?
sequential_13/dense_27/BiasAddBiasAdd'sequential_13/dense_27/MatMul:product:05sequential_13/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2 
sequential_13/dense_27/BiasAdd?
sequential_13/dense_27/ReluRelu'sequential_13/dense_27/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
sequential_13/dense_27/Relu?
,sequential_13/dense_28/MatMul/ReadVariableOpReadVariableOp<sequential_13_dense_28_matmul_readvariableop_dense_28_kernel*
_output_shapes

:xT*
dtype02.
,sequential_13/dense_28/MatMul/ReadVariableOp?
sequential_13/dense_28/MatMulMatMul)sequential_13/dense_27/Relu:activations:04sequential_13/dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
sequential_13/dense_28/MatMul?
-sequential_13/dense_28/BiasAdd/ReadVariableOpReadVariableOp;sequential_13_dense_28_biasadd_readvariableop_dense_28_bias*
_output_shapes
:T*
dtype02/
-sequential_13/dense_28/BiasAdd/ReadVariableOp?
sequential_13/dense_28/BiasAddBiasAdd'sequential_13/dense_28/MatMul:product:05sequential_13/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2 
sequential_13/dense_28/BiasAdd?
sequential_13/dense_28/ReluRelu'sequential_13/dense_28/BiasAdd:output:0*
T0*'
_output_shapes
:?????????T2
sequential_13/dense_28/Relu?
 sequential_13/dropout_8/IdentityIdentity)sequential_13/dense_28/Relu:activations:0*
T0*'
_output_shapes
:?????????T2"
 sequential_13/dropout_8/Identity?
,sequential_13/dense_29/MatMul/ReadVariableOpReadVariableOp<sequential_13_dense_29_matmul_readvariableop_dense_29_kernel*
_output_shapes

:T*
dtype02.
,sequential_13/dense_29/MatMul/ReadVariableOp?
sequential_13/dense_29/MatMulMatMul)sequential_13/dropout_8/Identity:output:04sequential_13/dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_13/dense_29/MatMul?
-sequential_13/dense_29/BiasAdd/ReadVariableOpReadVariableOp;sequential_13_dense_29_biasadd_readvariableop_dense_29_bias*
_output_shapes
:*
dtype02/
-sequential_13/dense_29/BiasAdd/ReadVariableOp?
sequential_13/dense_29/BiasAddBiasAdd'sequential_13/dense_29/MatMul:product:05sequential_13/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_13/dense_29/BiasAdd?
sequential_13/dense_29/SoftmaxSoftmax'sequential_13/dense_29/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_13/dense_29/Softmax?
IdentityIdentity(sequential_13/dense_29/Softmax:softmax:0/^sequential_13/conv2d_16/BiasAdd/ReadVariableOp.^sequential_13/conv2d_16/Conv2D/ReadVariableOp/^sequential_13/conv2d_17/BiasAdd/ReadVariableOp.^sequential_13/conv2d_17/Conv2D/ReadVariableOp.^sequential_13/dense_27/BiasAdd/ReadVariableOp-^sequential_13/dense_27/MatMul/ReadVariableOp.^sequential_13/dense_28/BiasAdd/ReadVariableOp-^sequential_13/dense_28/MatMul/ReadVariableOp.^sequential_13/dense_29/BiasAdd/ReadVariableOp-^sequential_13/dense_29/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2`
.sequential_13/conv2d_16/BiasAdd/ReadVariableOp.sequential_13/conv2d_16/BiasAdd/ReadVariableOp2^
-sequential_13/conv2d_16/Conv2D/ReadVariableOp-sequential_13/conv2d_16/Conv2D/ReadVariableOp2`
.sequential_13/conv2d_17/BiasAdd/ReadVariableOp.sequential_13/conv2d_17/BiasAdd/ReadVariableOp2^
-sequential_13/conv2d_17/Conv2D/ReadVariableOp-sequential_13/conv2d_17/Conv2D/ReadVariableOp2^
-sequential_13/dense_27/BiasAdd/ReadVariableOp-sequential_13/dense_27/BiasAdd/ReadVariableOp2\
,sequential_13/dense_27/MatMul/ReadVariableOp,sequential_13/dense_27/MatMul/ReadVariableOp2^
-sequential_13/dense_28/BiasAdd/ReadVariableOp-sequential_13/dense_28/BiasAdd/ReadVariableOp2\
,sequential_13/dense_28/MatMul/ReadVariableOp,sequential_13/dense_28/MatMul/ReadVariableOp2^
-sequential_13/dense_29/BiasAdd/ReadVariableOp-sequential_13/dense_29/BiasAdd/ReadVariableOp2\
,sequential_13/dense_29/MatMul/ReadVariableOp,sequential_13/dense_29/MatMul/ReadVariableOp:` \
/
_output_shapes
:?????????  
)
_user_specified_nameconv2d_16_input
?

?
C__inference_dense_28_layer_call_and_return_conditional_losses_49476

inputs)
%matmul_readvariableop_dense_28_kernel(
$biasadd_readvariableop_dense_28_bias
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOp%matmul_readvariableop_dense_28_kernel*
_output_shapes

:xT*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
MatMul?
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_dense_28_bias*
_output_shapes
:T*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????T2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????x::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_49381

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_dense_28_layer_call_fn_49483

inputs
dense_28_kernel
dense_28_bias
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsdense_28_kerneldense_28_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_28_layer_call_and_return_conditional_losses_490142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????x::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?

?
C__inference_dense_27_layer_call_and_return_conditional_losses_49458

inputs)
%matmul_readvariableop_dense_27_kernel(
$biasadd_readvariableop_dense_27_bias
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOp%matmul_readvariableop_dense_27_kernel*
_output_shapes

:x*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
MatMul?
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_dense_27_bias*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????x2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
C__inference_dense_29_layer_call_and_return_conditional_losses_49067

inputs)
%matmul_readvariableop_dense_29_kernel(
$biasadd_readvariableop_dense_29_bias
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOp%matmul_readvariableop_dense_29_kernel*
_output_shapes

:T*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_dense_29_bias*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????T::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?

?
C__inference_dense_27_layer_call_and_return_conditional_losses_48991

inputs)
%matmul_readvariableop_dense_27_kernel(
$biasadd_readvariableop_dense_27_bias
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOp%matmul_readvariableop_dense_27_kernel*
_output_shapes

:x*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
MatMul?
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_dense_27_bias*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????x2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_6_layer_call_and_return_conditional_losses_49376

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_7_layer_call_and_return_conditional_losses_49426

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_10_layer_call_and_return_conditional_losses_48972

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_conv2d_16_layer_call_and_return_conditional_losses_49357

inputs*
&conv2d_readvariableop_conv2d_16_kernel)
%biasadd_readvariableop_conv2d_16_bias
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOp&conv2d_readvariableop_conv2d_16_kernel*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOp%biasadd_readvariableop_conv2d_16_bias*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????  ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
b
D__inference_dropout_7_layer_call_and_return_conditional_losses_48947

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
C__inference_dense_29_layer_call_and_return_conditional_losses_49521

inputs)
%matmul_readvariableop_dense_29_kernel(
$biasadd_readvariableop_dense_29_bias
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOp%matmul_readvariableop_dense_29_kernel*
_output_shapes

:T*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_dense_29_bias*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????T::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?

?
D__inference_conv2d_17_layer_call_and_return_conditional_losses_48918

inputs*
&conv2d_readvariableop_conv2d_17_kernel)
%biasadd_readvariableop_conv2d_17_bias
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOp&conv2d_readvariableop_conv2d_17_kernel*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOp%biasadd_readvariableop_conv2d_17_bias*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_17_layer_call_fn_49409

inputs
conv2d_17_kernel
conv2d_17_bias
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_17_kernelconv2d_17_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_489182
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_10_layer_call_and_return_conditional_losses_49442

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_7_layer_call_and_return_conditional_losses_48942

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_conv2d_17_layer_call_and_return_conditional_losses_49402

inputs*
&conv2d_readvariableop_conv2d_17_kernel)
%biasadd_readvariableop_conv2d_17_bias
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOp&conv2d_readvariableop_conv2d_17_kernel*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOp%biasadd_readvariableop_conv2d_17_bias*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_48840

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_11_layer_call_fn_48843

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_488402
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_8_layer_call_and_return_conditional_losses_49500

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????T2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????T2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????T:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
E
)__inference_dropout_8_layer_call_fn_49510

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_490432
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????T:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?;
?
H__inference_sequential_13_layer_call_and_return_conditional_losses_49316

inputs4
0conv2d_16_conv2d_readvariableop_conv2d_16_kernel3
/conv2d_16_biasadd_readvariableop_conv2d_16_bias4
0conv2d_17_conv2d_readvariableop_conv2d_17_kernel3
/conv2d_17_biasadd_readvariableop_conv2d_17_bias2
.dense_27_matmul_readvariableop_dense_27_kernel1
-dense_27_biasadd_readvariableop_dense_27_bias2
.dense_28_matmul_readvariableop_dense_28_kernel1
-dense_28_biasadd_readvariableop_dense_28_bias2
.dense_29_matmul_readvariableop_dense_29_kernel1
-dense_29_biasadd_readvariableop_dense_29_bias
identity?? conv2d_16/BiasAdd/ReadVariableOp?conv2d_16/Conv2D/ReadVariableOp? conv2d_17/BiasAdd/ReadVariableOp?conv2d_17/Conv2D/ReadVariableOp?dense_27/BiasAdd/ReadVariableOp?dense_27/MatMul/ReadVariableOp?dense_28/BiasAdd/ReadVariableOp?dense_28/MatMul/ReadVariableOp?dense_29/BiasAdd/ReadVariableOp?dense_29/MatMul/ReadVariableOp?
conv2d_16/Conv2D/ReadVariableOpReadVariableOp0conv2d_16_conv2d_readvariableop_conv2d_16_kernel*&
_output_shapes
:*
dtype02!
conv2d_16/Conv2D/ReadVariableOp?
conv2d_16/Conv2DConv2Dinputs'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_16/Conv2D?
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp/conv2d_16_biasadd_readvariableop_conv2d_16_bias*
_output_shapes
:*
dtype02"
 conv2d_16/BiasAdd/ReadVariableOp?
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_16/BiasAdd~
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d_16/Relu?
dropout_6/IdentityIdentityconv2d_16/Relu:activations:0*
T0*/
_output_shapes
:?????????2
dropout_6/Identity?
max_pooling2d_10/MaxPoolMaxPooldropout_6/Identity:output:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_10/MaxPool?
conv2d_17/Conv2D/ReadVariableOpReadVariableOp0conv2d_17_conv2d_readvariableop_conv2d_17_kernel*&
_output_shapes
:*
dtype02!
conv2d_17/Conv2D/ReadVariableOp?
conv2d_17/Conv2DConv2D!max_pooling2d_10/MaxPool:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
conv2d_17/Conv2D?
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp/conv2d_17_biasadd_readvariableop_conv2d_17_bias*
_output_shapes
:*
dtype02"
 conv2d_17/BiasAdd/ReadVariableOp?
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_17/BiasAdd~
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d_17/Relu?
dropout_7/IdentityIdentityconv2d_17/Relu:activations:0*
T0*/
_output_shapes
:?????????2
dropout_7/Identity?
max_pooling2d_11/MaxPoolMaxPooldropout_7/Identity:output:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_11/MaxPoolu
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_10/Const?
flatten_10/ReshapeReshape!max_pooling2d_11/MaxPool:output:0flatten_10/Const:output:0*
T0*'
_output_shapes
:?????????2
flatten_10/Reshape?
dense_27/MatMul/ReadVariableOpReadVariableOp.dense_27_matmul_readvariableop_dense_27_kernel*
_output_shapes

:x*
dtype02 
dense_27/MatMul/ReadVariableOp?
dense_27/MatMulMatMulflatten_10/Reshape:output:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_27/MatMul?
dense_27/BiasAdd/ReadVariableOpReadVariableOp-dense_27_biasadd_readvariableop_dense_27_bias*
_output_shapes
:x*
dtype02!
dense_27/BiasAdd/ReadVariableOp?
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_27/BiasAdds
dense_27/ReluReludense_27/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
dense_27/Relu?
dense_28/MatMul/ReadVariableOpReadVariableOp.dense_28_matmul_readvariableop_dense_28_kernel*
_output_shapes

:xT*
dtype02 
dense_28/MatMul/ReadVariableOp?
dense_28/MatMulMatMuldense_27/Relu:activations:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
dense_28/MatMul?
dense_28/BiasAdd/ReadVariableOpReadVariableOp-dense_28_biasadd_readvariableop_dense_28_bias*
_output_shapes
:T*
dtype02!
dense_28/BiasAdd/ReadVariableOp?
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
dense_28/BiasAdds
dense_28/ReluReludense_28/BiasAdd:output:0*
T0*'
_output_shapes
:?????????T2
dense_28/Relu?
dropout_8/IdentityIdentitydense_28/Relu:activations:0*
T0*'
_output_shapes
:?????????T2
dropout_8/Identity?
dense_29/MatMul/ReadVariableOpReadVariableOp.dense_29_matmul_readvariableop_dense_29_kernel*
_output_shapes

:T*
dtype02 
dense_29/MatMul/ReadVariableOp?
dense_29/MatMulMatMuldropout_8/Identity:output:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_29/MatMul?
dense_29/BiasAdd/ReadVariableOpReadVariableOp-dense_29_biasadd_readvariableop_dense_29_bias*
_output_shapes
:*
dtype02!
dense_29/BiasAdd/ReadVariableOp?
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_29/BiasAdd|
dense_29/SoftmaxSoftmaxdense_29/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_29/Softmax?
IdentityIdentitydense_29/Softmax:softmax:0!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
(__inference_dense_29_layer_call_fn_49528

inputs
dense_29_kernel
dense_29_bias
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsdense_29_kerneldense_29_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_29_layer_call_and_return_conditional_losses_490672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????T::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?U
?
__inference__traced_save_49662
file_prefix/
+savev2_conv2d_16_kernel_read_readvariableop-
)savev2_conv2d_16_bias_read_readvariableop/
+savev2_conv2d_17_kernel_read_readvariableop-
)savev2_conv2d_17_bias_read_readvariableop.
*savev2_dense_27_kernel_read_readvariableop,
(savev2_dense_27_bias_read_readvariableop.
*savev2_dense_28_kernel_read_readvariableop,
(savev2_dense_28_bias_read_readvariableop.
*savev2_dense_29_kernel_read_readvariableop,
(savev2_dense_29_bias_read_readvariableop5
1savev2_training_272_adam_iter_read_readvariableop	7
3savev2_training_272_adam_beta_1_read_readvariableop7
3savev2_training_272_adam_beta_2_read_readvariableop6
2savev2_training_272_adam_decay_read_readvariableop>
:savev2_training_272_adam_learning_rate_read_readvariableop'
#savev2_total_13_read_readvariableop'
#savev2_count_13_read_readvariableopC
?savev2_training_272_adam_conv2d_16_kernel_m_read_readvariableopA
=savev2_training_272_adam_conv2d_16_bias_m_read_readvariableopC
?savev2_training_272_adam_conv2d_17_kernel_m_read_readvariableopA
=savev2_training_272_adam_conv2d_17_bias_m_read_readvariableopB
>savev2_training_272_adam_dense_27_kernel_m_read_readvariableop@
<savev2_training_272_adam_dense_27_bias_m_read_readvariableopB
>savev2_training_272_adam_dense_28_kernel_m_read_readvariableop@
<savev2_training_272_adam_dense_28_bias_m_read_readvariableopB
>savev2_training_272_adam_dense_29_kernel_m_read_readvariableop@
<savev2_training_272_adam_dense_29_bias_m_read_readvariableopC
?savev2_training_272_adam_conv2d_16_kernel_v_read_readvariableopA
=savev2_training_272_adam_conv2d_16_bias_v_read_readvariableopC
?savev2_training_272_adam_conv2d_17_kernel_v_read_readvariableopA
=savev2_training_272_adam_conv2d_17_bias_v_read_readvariableopB
>savev2_training_272_adam_dense_27_kernel_v_read_readvariableop@
<savev2_training_272_adam_dense_27_bias_v_read_readvariableopB
>savev2_training_272_adam_dense_28_kernel_v_read_readvariableop@
<savev2_training_272_adam_dense_28_bias_v_read_readvariableopB
>savev2_training_272_adam_dense_29_kernel_v_read_readvariableop@
<savev2_training_272_adam_dense_29_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*?
value?B?&B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_16_kernel_read_readvariableop)savev2_conv2d_16_bias_read_readvariableop+savev2_conv2d_17_kernel_read_readvariableop)savev2_conv2d_17_bias_read_readvariableop*savev2_dense_27_kernel_read_readvariableop(savev2_dense_27_bias_read_readvariableop*savev2_dense_28_kernel_read_readvariableop(savev2_dense_28_bias_read_readvariableop*savev2_dense_29_kernel_read_readvariableop(savev2_dense_29_bias_read_readvariableop1savev2_training_272_adam_iter_read_readvariableop3savev2_training_272_adam_beta_1_read_readvariableop3savev2_training_272_adam_beta_2_read_readvariableop2savev2_training_272_adam_decay_read_readvariableop:savev2_training_272_adam_learning_rate_read_readvariableop#savev2_total_13_read_readvariableop#savev2_count_13_read_readvariableop?savev2_training_272_adam_conv2d_16_kernel_m_read_readvariableop=savev2_training_272_adam_conv2d_16_bias_m_read_readvariableop?savev2_training_272_adam_conv2d_17_kernel_m_read_readvariableop=savev2_training_272_adam_conv2d_17_bias_m_read_readvariableop>savev2_training_272_adam_dense_27_kernel_m_read_readvariableop<savev2_training_272_adam_dense_27_bias_m_read_readvariableop>savev2_training_272_adam_dense_28_kernel_m_read_readvariableop<savev2_training_272_adam_dense_28_bias_m_read_readvariableop>savev2_training_272_adam_dense_29_kernel_m_read_readvariableop<savev2_training_272_adam_dense_29_bias_m_read_readvariableop?savev2_training_272_adam_conv2d_16_kernel_v_read_readvariableop=savev2_training_272_adam_conv2d_16_bias_v_read_readvariableop?savev2_training_272_adam_conv2d_17_kernel_v_read_readvariableop=savev2_training_272_adam_conv2d_17_bias_v_read_readvariableop>savev2_training_272_adam_dense_27_kernel_v_read_readvariableop<savev2_training_272_adam_dense_27_bias_v_read_readvariableop>savev2_training_272_adam_dense_28_kernel_v_read_readvariableop<savev2_training_272_adam_dense_28_bias_v_read_readvariableop>savev2_training_272_adam_dense_29_kernel_v_read_readvariableop<savev2_training_272_adam_dense_29_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *4
dtypes*
(2&	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::::x:x:xT:T:T:: : : : : : : :::::x:x:xT:T:T::::::x:x:xT:T:T:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:x: 

_output_shapes
:x:$ 

_output_shapes

:xT: 

_output_shapes
:T:$	 

_output_shapes

:T: 


_output_shapes
::
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
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:x: 

_output_shapes
:x:$ 

_output_shapes

:xT: 

_output_shapes
:T:$ 

_output_shapes

:T: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::$  

_output_shapes

:x: !

_output_shapes
:x:$" 

_output_shapes

:xT: #

_output_shapes
:T:$$ 

_output_shapes

:T: %

_output_shapes
::&

_output_shapes
: 
?
?
)__inference_conv2d_16_layer_call_fn_49364

inputs
conv2d_16_kernel
conv2d_16_bias
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_16_kernelconv2d_16_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_488582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????  ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
c
D__inference_dropout_8_layer_call_and_return_conditional_losses_49038

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????T2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????T*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????T2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????T2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????T2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????T:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
F
*__inference_flatten_10_layer_call_fn_49447

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_10_layer_call_and_return_conditional_losses_489722
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_48823

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?W
?
H__inference_sequential_13_layer_call_and_return_conditional_losses_49270

inputs4
0conv2d_16_conv2d_readvariableop_conv2d_16_kernel3
/conv2d_16_biasadd_readvariableop_conv2d_16_bias4
0conv2d_17_conv2d_readvariableop_conv2d_17_kernel3
/conv2d_17_biasadd_readvariableop_conv2d_17_bias2
.dense_27_matmul_readvariableop_dense_27_kernel1
-dense_27_biasadd_readvariableop_dense_27_bias2
.dense_28_matmul_readvariableop_dense_28_kernel1
-dense_28_biasadd_readvariableop_dense_28_bias2
.dense_29_matmul_readvariableop_dense_29_kernel1
-dense_29_biasadd_readvariableop_dense_29_bias
identity?? conv2d_16/BiasAdd/ReadVariableOp?conv2d_16/Conv2D/ReadVariableOp? conv2d_17/BiasAdd/ReadVariableOp?conv2d_17/Conv2D/ReadVariableOp?dense_27/BiasAdd/ReadVariableOp?dense_27/MatMul/ReadVariableOp?dense_28/BiasAdd/ReadVariableOp?dense_28/MatMul/ReadVariableOp?dense_29/BiasAdd/ReadVariableOp?dense_29/MatMul/ReadVariableOp?
conv2d_16/Conv2D/ReadVariableOpReadVariableOp0conv2d_16_conv2d_readvariableop_conv2d_16_kernel*&
_output_shapes
:*
dtype02!
conv2d_16/Conv2D/ReadVariableOp?
conv2d_16/Conv2DConv2Dinputs'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_16/Conv2D?
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp/conv2d_16_biasadd_readvariableop_conv2d_16_bias*
_output_shapes
:*
dtype02"
 conv2d_16/BiasAdd/ReadVariableOp?
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_16/BiasAdd~
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d_16/Reluw
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_6/dropout/Const?
dropout_6/dropout/MulMulconv2d_16/Relu:activations:0 dropout_6/dropout/Const:output:0*
T0*/
_output_shapes
:?????????2
dropout_6/dropout/Mul~
dropout_6/dropout/ShapeShapeconv2d_16/Relu:activations:0*
T0*
_output_shapes
:2
dropout_6/dropout/Shape?
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype020
.dropout_6/dropout/random_uniform/RandomUniform?
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_6/dropout/GreaterEqual/y?
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2 
dropout_6/dropout/GreaterEqual?
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2
dropout_6/dropout/Cast?
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2
dropout_6/dropout/Mul_1?
max_pooling2d_10/MaxPoolMaxPooldropout_6/dropout/Mul_1:z:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_10/MaxPool?
conv2d_17/Conv2D/ReadVariableOpReadVariableOp0conv2d_17_conv2d_readvariableop_conv2d_17_kernel*&
_output_shapes
:*
dtype02!
conv2d_17/Conv2D/ReadVariableOp?
conv2d_17/Conv2DConv2D!max_pooling2d_10/MaxPool:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
conv2d_17/Conv2D?
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp/conv2d_17_biasadd_readvariableop_conv2d_17_bias*
_output_shapes
:*
dtype02"
 conv2d_17/BiasAdd/ReadVariableOp?
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_17/BiasAdd~
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d_17/Reluw
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_7/dropout/Const?
dropout_7/dropout/MulMulconv2d_17/Relu:activations:0 dropout_7/dropout/Const:output:0*
T0*/
_output_shapes
:?????????2
dropout_7/dropout/Mul~
dropout_7/dropout/ShapeShapeconv2d_17/Relu:activations:0*
T0*
_output_shapes
:2
dropout_7/dropout/Shape?
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype020
.dropout_7/dropout/random_uniform/RandomUniform?
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_7/dropout/GreaterEqual/y?
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2 
dropout_7/dropout/GreaterEqual?
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2
dropout_7/dropout/Cast?
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2
dropout_7/dropout/Mul_1?
max_pooling2d_11/MaxPoolMaxPooldropout_7/dropout/Mul_1:z:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_11/MaxPoolu
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_10/Const?
flatten_10/ReshapeReshape!max_pooling2d_11/MaxPool:output:0flatten_10/Const:output:0*
T0*'
_output_shapes
:?????????2
flatten_10/Reshape?
dense_27/MatMul/ReadVariableOpReadVariableOp.dense_27_matmul_readvariableop_dense_27_kernel*
_output_shapes

:x*
dtype02 
dense_27/MatMul/ReadVariableOp?
dense_27/MatMulMatMulflatten_10/Reshape:output:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_27/MatMul?
dense_27/BiasAdd/ReadVariableOpReadVariableOp-dense_27_biasadd_readvariableop_dense_27_bias*
_output_shapes
:x*
dtype02!
dense_27/BiasAdd/ReadVariableOp?
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_27/BiasAdds
dense_27/ReluReludense_27/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x2
dense_27/Relu?
dense_28/MatMul/ReadVariableOpReadVariableOp.dense_28_matmul_readvariableop_dense_28_kernel*
_output_shapes

:xT*
dtype02 
dense_28/MatMul/ReadVariableOp?
dense_28/MatMulMatMuldense_27/Relu:activations:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
dense_28/MatMul?
dense_28/BiasAdd/ReadVariableOpReadVariableOp-dense_28_biasadd_readvariableop_dense_28_bias*
_output_shapes
:T*
dtype02!
dense_28/BiasAdd/ReadVariableOp?
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
dense_28/BiasAdds
dense_28/ReluReludense_28/BiasAdd:output:0*
T0*'
_output_shapes
:?????????T2
dense_28/Reluw
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_8/dropout/Const?
dropout_8/dropout/MulMuldense_28/Relu:activations:0 dropout_8/dropout/Const:output:0*
T0*'
_output_shapes
:?????????T2
dropout_8/dropout/Mul}
dropout_8/dropout/ShapeShapedense_28/Relu:activations:0*
T0*
_output_shapes
:2
dropout_8/dropout/Shape?
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????T*
dtype020
.dropout_8/dropout/random_uniform/RandomUniform?
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_8/dropout/GreaterEqual/y?
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????T2 
dropout_8/dropout/GreaterEqual?
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????T2
dropout_8/dropout/Cast?
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????T2
dropout_8/dropout/Mul_1?
dense_29/MatMul/ReadVariableOpReadVariableOp.dense_29_matmul_readvariableop_dense_29_kernel*
_output_shapes

:T*
dtype02 
dense_29/MatMul/ReadVariableOp?
dense_29/MatMulMatMuldropout_8/dropout/Mul_1:z:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_29/MatMul?
dense_29/BiasAdd/ReadVariableOpReadVariableOp-dense_29_biasadd_readvariableop_dense_29_bias*
_output_shapes
:*
dtype02!
dense_29/BiasAdd/ReadVariableOp?
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_29/BiasAdd|
dense_29/SoftmaxSoftmaxdense_29/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_29/Softmax?
IdentityIdentitydense_29/Softmax:softmax:0!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_48888

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
C__inference_dense_28_layer_call_and_return_conditional_losses_49014

inputs)
%matmul_readvariableop_dense_28_kernel(
$biasadd_readvariableop_dense_28_bias
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOp%matmul_readvariableop_dense_28_kernel*
_output_shapes

:xT*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
MatMul?
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_dense_28_bias*
_output_shapes
:T*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????T2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????x::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_10_layer_call_fn_48826

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_488232
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_7_layer_call_and_return_conditional_losses_49421

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
E
)__inference_dropout_7_layer_call_fn_49436

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_489472
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
)__inference_dropout_6_layer_call_fn_49386

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_488832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
)__inference_dropout_7_layer_call_fn_49431

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_489422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?4
?
H__inference_sequential_13_layer_call_and_return_conditional_losses_49133

inputs
conv2d_16_conv2d_16_kernel
conv2d_16_conv2d_16_bias
conv2d_17_conv2d_17_kernel
conv2d_17_conv2d_17_bias
dense_27_dense_27_kernel
dense_27_dense_27_bias
dense_28_dense_28_kernel
dense_28_dense_28_bias
dense_29_dense_29_kernel
dense_29_dense_29_bias
identity??!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall? dense_27/StatefulPartitionedCall? dense_28/StatefulPartitionedCall? dense_29/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?!dropout_7/StatefulPartitionedCall?!dropout_8/StatefulPartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_16_conv2d_16_kernelconv2d_16_conv2d_16_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_488582#
!conv2d_16/StatefulPartitionedCall?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_488832#
!dropout_6/StatefulPartitionedCall?
 max_pooling2d_10/PartitionedCallPartitionedCall*dropout_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_488232"
 max_pooling2d_10/PartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_17_conv2d_17_kernelconv2d_17_conv2d_17_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_489182#
!conv2d_17/StatefulPartitionedCall?
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_489422#
!dropout_7/StatefulPartitionedCall?
 max_pooling2d_11/PartitionedCallPartitionedCall*dropout_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_488402"
 max_pooling2d_11/PartitionedCall?
flatten_10/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_10_layer_call_and_return_conditional_losses_489722
flatten_10/PartitionedCall?
 dense_27/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_27_dense_27_kerneldense_27_dense_27_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_27_layer_call_and_return_conditional_losses_489912"
 dense_27/StatefulPartitionedCall?
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0dense_28_dense_28_kerneldense_28_dense_28_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_28_layer_call_and_return_conditional_losses_490142"
 dense_28/StatefulPartitionedCall?
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_490382#
!dropout_8/StatefulPartitionedCall?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0dense_29_dense_29_kerneldense_29_dense_29_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_29_layer_call_and_return_conditional_losses_490672"
 dense_29/StatefulPartitionedCall?
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?

?
-__inference_sequential_13_layer_call_fn_49186
conv2d_16_input
conv2d_16_kernel
conv2d_16_bias
conv2d_17_kernel
conv2d_17_bias
dense_27_kernel
dense_27_bias
dense_28_kernel
dense_28_bias
dense_29_kernel
dense_29_bias
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_16_inputconv2d_16_kernelconv2d_16_biasconv2d_17_kernelconv2d_17_biasdense_27_kerneldense_27_biasdense_28_kerneldense_28_biasdense_29_kerneldense_29_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_13_layer_call_and_return_conditional_losses_491732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????  
)
_user_specified_nameconv2d_16_input
?	
?
#__inference_signature_wrapper_49203
conv2d_16_input
conv2d_16_kernel
conv2d_16_bias
conv2d_17_kernel
conv2d_17_bias
dense_27_kernel
dense_27_bias
dense_28_kernel
dense_28_bias
dense_29_kernel
dense_29_bias
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_16_inputconv2d_16_kernelconv2d_16_biasconv2d_17_kernelconv2d_17_biasdense_27_kerneldense_27_biasdense_28_kerneldense_28_biasdense_29_kerneldense_29_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_488092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????  
)
_user_specified_nameconv2d_16_input
?
E
)__inference_dropout_6_layer_call_fn_49391

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_488882
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
-__inference_sequential_13_layer_call_fn_49346

inputs
conv2d_16_kernel
conv2d_16_bias
conv2d_17_kernel
conv2d_17_bias
dense_27_kernel
dense_27_bias
dense_28_kernel
dense_28_bias
dense_29_kernel
dense_29_bias
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_16_kernelconv2d_16_biasconv2d_17_kernelconv2d_17_biasdense_27_kerneldense_27_biasdense_28_kerneldense_28_biasdense_29_kerneldense_29_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_13_layer_call_and_return_conditional_losses_491732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_48815

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?/
?
H__inference_sequential_13_layer_call_and_return_conditional_losses_49105
conv2d_16_input
conv2d_16_conv2d_16_kernel
conv2d_16_conv2d_16_bias
conv2d_17_conv2d_17_kernel
conv2d_17_conv2d_17_bias
dense_27_dense_27_kernel
dense_27_dense_27_bias
dense_28_dense_28_kernel
dense_28_dense_28_bias
dense_29_dense_29_kernel
dense_29_dense_29_bias
identity??!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall? dense_27/StatefulPartitionedCall? dense_28/StatefulPartitionedCall? dense_29/StatefulPartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCallconv2d_16_inputconv2d_16_conv2d_16_kernelconv2d_16_conv2d_16_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_488582#
!conv2d_16/StatefulPartitionedCall?
dropout_6/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_488882
dropout_6/PartitionedCall?
 max_pooling2d_10/PartitionedCallPartitionedCall"dropout_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_488232"
 max_pooling2d_10/PartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_17_conv2d_17_kernelconv2d_17_conv2d_17_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_489182#
!conv2d_17/StatefulPartitionedCall?
dropout_7/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_489472
dropout_7/PartitionedCall?
 max_pooling2d_11/PartitionedCallPartitionedCall"dropout_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_488402"
 max_pooling2d_11/PartitionedCall?
flatten_10/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_10_layer_call_and_return_conditional_losses_489722
flatten_10/PartitionedCall?
 dense_27/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_27_dense_27_kerneldense_27_dense_27_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_27_layer_call_and_return_conditional_losses_489912"
 dense_27/StatefulPartitionedCall?
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0dense_28_dense_28_kerneldense_28_dense_28_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_28_layer_call_and_return_conditional_losses_490142"
 dense_28/StatefulPartitionedCall?
dropout_8/PartitionedCallPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_490432
dropout_8/PartitionedCall?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0dense_29_dense_29_kerneldense_29_dense_29_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_29_layer_call_and_return_conditional_losses_490672"
 dense_29/StatefulPartitionedCall?
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall:` \
/
_output_shapes
:?????????  
)
_user_specified_nameconv2d_16_input
?

?
-__inference_sequential_13_layer_call_fn_49146
conv2d_16_input
conv2d_16_kernel
conv2d_16_bias
conv2d_17_kernel
conv2d_17_bias
dense_27_kernel
dense_27_bias
dense_28_kernel
dense_28_bias
dense_29_kernel
dense_29_bias
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_16_inputconv2d_16_kernelconv2d_16_biasconv2d_17_kernelconv2d_17_biasdense_27_kerneldense_27_biasdense_28_kerneldense_28_biasdense_29_kerneldense_29_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_13_layer_call_and_return_conditional_losses_491332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????  
)
_user_specified_nameconv2d_16_input
?
g
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_48832

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_8_layer_call_and_return_conditional_losses_49043

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????T2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????T2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????T:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
S
conv2d_16_input@
!serving_default_conv2d_16_input:0?????????  <
dense_290
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?L
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"?H
_tf_keras_sequential?H{"class_name": "Sequential", "name": "sequential_13", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_13", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_16_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 1]}, "dtype": "float32", "filters": 6, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [4, 4]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 1]}, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_11", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_10", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 120, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 84, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_8", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_29", "trainable": true, "dtype": "float32", "units": 4, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_13", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_16_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 1]}, "dtype": "float32", "filters": 6, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [4, 4]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 1]}, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_11", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_10", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 120, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 84, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_8", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_29", "trainable": true, "dtype": "float32", "units": 4, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": ["accuracy"], "loss_weights": null, "sample_weight_mode": null, "weighted_metrics": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?


kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"class_name": "Conv2D", "name": "conv2d_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_16", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 1]}, "dtype": "float32", "filters": 6, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [4, 4]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 1]}}
?
regularization_losses
trainable_variables
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?
regularization_losses
trainable_variables
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?


 kernel
!bias
"regularization_losses
#trainable_variables
$	variables
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"class_name": "Conv2D", "name": "conv2d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_17", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 1]}, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 6}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 6]}}
?
&regularization_losses
'trainable_variables
(	variables
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?
*regularization_losses
+trainable_variables
,	variables
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_11", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
.regularization_losses
/trainable_variables
0	variables
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_10", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

2kernel
3bias
4regularization_losses
5trainable_variables
6	variables
7	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 120, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
?

8kernel
9bias
:regularization_losses
;trainable_variables
<	variables
=	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 84, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 120}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 120]}}
?
>regularization_losses
?trainable_variables
@	variables
A	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_8", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
?

Bkernel
Cbias
Dregularization_losses
Etrainable_variables
F	variables
G	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_29", "trainable": true, "dtype": "float32", "units": 4, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 84}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 84]}}
?
Hiter

Ibeta_1

Jbeta_2
	Kdecay
Llearning_ratem?m? m?!m?2m?3m?8m?9m?Bm?Cm?v?v? v?!v?2v?3v?8v?9v?Bv?Cv?"
	optimizer
 "
trackable_list_wrapper
f
0
1
 2
!3
24
35
86
97
B8
C9"
trackable_list_wrapper
f
0
1
 2
!3
24
35
86
97
B8
C9"
trackable_list_wrapper
?
regularization_losses
trainable_variables
Mnon_trainable_variables

Nlayers
	variables
Olayer_regularization_losses
Pmetrics
Qlayer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
*:(2conv2d_16/kernel
:2conv2d_16/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
regularization_losses
trainable_variables
Rnon_trainable_variables

Slayers
	variables
Tlayer_regularization_losses
Umetrics
Vlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
regularization_losses
trainable_variables
Wnon_trainable_variables

Xlayers
	variables
Ylayer_regularization_losses
Zmetrics
[layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
regularization_losses
trainable_variables
\non_trainable_variables

]layers
	variables
^layer_regularization_losses
_metrics
`layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(2conv2d_17/kernel
:2conv2d_17/bias
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
?
"regularization_losses
#trainable_variables
anon_trainable_variables

blayers
$	variables
clayer_regularization_losses
dmetrics
elayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
&regularization_losses
'trainable_variables
fnon_trainable_variables

glayers
(	variables
hlayer_regularization_losses
imetrics
jlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
*regularization_losses
+trainable_variables
knon_trainable_variables

llayers
,	variables
mlayer_regularization_losses
nmetrics
olayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
.regularization_losses
/trainable_variables
pnon_trainable_variables

qlayers
0	variables
rlayer_regularization_losses
smetrics
tlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:x2dense_27/kernel
:x2dense_27/bias
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
?
4regularization_losses
5trainable_variables
unon_trainable_variables

vlayers
6	variables
wlayer_regularization_losses
xmetrics
ylayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:xT2dense_28/kernel
:T2dense_28/bias
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
?
:regularization_losses
;trainable_variables
znon_trainable_variables

{layers
<	variables
|layer_regularization_losses
}metrics
~layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
>regularization_losses
?trainable_variables
non_trainable_variables
?layers
@	variables
 ?layer_regularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:T2dense_29/kernel
:2dense_29/bias
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
?
Dregularization_losses
Etrainable_variables
?non_trainable_variables
?layers
F	variables
 ?layer_regularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :	 (2training_272/Adam/iter
":  (2training_272/Adam/beta_1
":  (2training_272/Adam/beta_2
!: (2training_272/Adam/decay
):' (2training_272/Adam/learning_rate
 "
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
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
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
:  (2total_13
:  (2count_13
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
<::2$training_272/Adam/conv2d_16/kernel/m
.:,2"training_272/Adam/conv2d_16/bias/m
<::2$training_272/Adam/conv2d_17/kernel/m
.:,2"training_272/Adam/conv2d_17/bias/m
3:1x2#training_272/Adam/dense_27/kernel/m
-:+x2!training_272/Adam/dense_27/bias/m
3:1xT2#training_272/Adam/dense_28/kernel/m
-:+T2!training_272/Adam/dense_28/bias/m
3:1T2#training_272/Adam/dense_29/kernel/m
-:+2!training_272/Adam/dense_29/bias/m
<::2$training_272/Adam/conv2d_16/kernel/v
.:,2"training_272/Adam/conv2d_16/bias/v
<::2$training_272/Adam/conv2d_17/kernel/v
.:,2"training_272/Adam/conv2d_17/bias/v
3:1x2#training_272/Adam/dense_27/kernel/v
-:+x2!training_272/Adam/dense_27/bias/v
3:1xT2#training_272/Adam/dense_28/kernel/v
-:+T2!training_272/Adam/dense_28/bias/v
3:1T2#training_272/Adam/dense_29/kernel/v
-:+2!training_272/Adam/dense_29/bias/v
?2?
 __inference__wrapped_model_48809?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *6?3
1?.
conv2d_16_input?????????  
?2?
-__inference_sequential_13_layer_call_fn_49186
-__inference_sequential_13_layer_call_fn_49331
-__inference_sequential_13_layer_call_fn_49146
-__inference_sequential_13_layer_call_fn_49346?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_13_layer_call_and_return_conditional_losses_49270
H__inference_sequential_13_layer_call_and_return_conditional_losses_49316
H__inference_sequential_13_layer_call_and_return_conditional_losses_49105
H__inference_sequential_13_layer_call_and_return_conditional_losses_49080?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_conv2d_16_layer_call_fn_49364?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_16_layer_call_and_return_conditional_losses_49357?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dropout_6_layer_call_fn_49386
)__inference_dropout_6_layer_call_fn_49391?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_6_layer_call_and_return_conditional_losses_49381
D__inference_dropout_6_layer_call_and_return_conditional_losses_49376?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
0__inference_max_pooling2d_10_layer_call_fn_48826?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_48815?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
)__inference_conv2d_17_layer_call_fn_49409?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_17_layer_call_and_return_conditional_losses_49402?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dropout_7_layer_call_fn_49431
)__inference_dropout_7_layer_call_fn_49436?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_7_layer_call_and_return_conditional_losses_49421
D__inference_dropout_7_layer_call_and_return_conditional_losses_49426?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
0__inference_max_pooling2d_11_layer_call_fn_48843?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_48832?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_flatten_10_layer_call_fn_49447?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_flatten_10_layer_call_and_return_conditional_losses_49442?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_27_layer_call_fn_49465?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_27_layer_call_and_return_conditional_losses_49458?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_28_layer_call_fn_49483?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_28_layer_call_and_return_conditional_losses_49476?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dropout_8_layer_call_fn_49505
)__inference_dropout_8_layer_call_fn_49510?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_8_layer_call_and_return_conditional_losses_49500
D__inference_dropout_8_layer_call_and_return_conditional_losses_49495?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dense_29_layer_call_fn_49528?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_29_layer_call_and_return_conditional_losses_49521?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_49203conv2d_16_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_48809?
 !2389BC@?=
6?3
1?.
conv2d_16_input?????????  
? "3?0
.
dense_29"?
dense_29??????????
D__inference_conv2d_16_layer_call_and_return_conditional_losses_49357l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????
? ?
)__inference_conv2d_16_layer_call_fn_49364_7?4
-?*
(?%
inputs?????????  
? " ???????????
D__inference_conv2d_17_layer_call_and_return_conditional_losses_49402l !7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
)__inference_conv2d_17_layer_call_fn_49409_ !7?4
-?*
(?%
inputs?????????
? " ???????????
C__inference_dense_27_layer_call_and_return_conditional_losses_49458\23/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????x
? {
(__inference_dense_27_layer_call_fn_49465O23/?,
%?"
 ?
inputs?????????
? "??????????x?
C__inference_dense_28_layer_call_and_return_conditional_losses_49476\89/?,
%?"
 ?
inputs?????????x
? "%?"
?
0?????????T
? {
(__inference_dense_28_layer_call_fn_49483O89/?,
%?"
 ?
inputs?????????x
? "??????????T?
C__inference_dense_29_layer_call_and_return_conditional_losses_49521\BC/?,
%?"
 ?
inputs?????????T
? "%?"
?
0?????????
? {
(__inference_dense_29_layer_call_fn_49528OBC/?,
%?"
 ?
inputs?????????T
? "???????????
D__inference_dropout_6_layer_call_and_return_conditional_losses_49376l;?8
1?.
(?%
inputs?????????
p
? "-?*
#? 
0?????????
? ?
D__inference_dropout_6_layer_call_and_return_conditional_losses_49381l;?8
1?.
(?%
inputs?????????
p 
? "-?*
#? 
0?????????
? ?
)__inference_dropout_6_layer_call_fn_49386_;?8
1?.
(?%
inputs?????????
p
? " ???????????
)__inference_dropout_6_layer_call_fn_49391_;?8
1?.
(?%
inputs?????????
p 
? " ???????????
D__inference_dropout_7_layer_call_and_return_conditional_losses_49421l;?8
1?.
(?%
inputs?????????
p
? "-?*
#? 
0?????????
? ?
D__inference_dropout_7_layer_call_and_return_conditional_losses_49426l;?8
1?.
(?%
inputs?????????
p 
? "-?*
#? 
0?????????
? ?
)__inference_dropout_7_layer_call_fn_49431_;?8
1?.
(?%
inputs?????????
p
? " ???????????
)__inference_dropout_7_layer_call_fn_49436_;?8
1?.
(?%
inputs?????????
p 
? " ???????????
D__inference_dropout_8_layer_call_and_return_conditional_losses_49495\3?0
)?&
 ?
inputs?????????T
p
? "%?"
?
0?????????T
? ?
D__inference_dropout_8_layer_call_and_return_conditional_losses_49500\3?0
)?&
 ?
inputs?????????T
p 
? "%?"
?
0?????????T
? |
)__inference_dropout_8_layer_call_fn_49505O3?0
)?&
 ?
inputs?????????T
p
? "??????????T|
)__inference_dropout_8_layer_call_fn_49510O3?0
)?&
 ?
inputs?????????T
p 
? "??????????T?
E__inference_flatten_10_layer_call_and_return_conditional_losses_49442`7?4
-?*
(?%
inputs?????????
? "%?"
?
0?????????
? ?
*__inference_flatten_10_layer_call_fn_49447S7?4
-?*
(?%
inputs?????????
? "???????????
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_48815?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_10_layer_call_fn_48826?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_48832?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_11_layer_call_fn_48843?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_sequential_13_layer_call_and_return_conditional_losses_49080}
 !2389BCH?E
>?;
1?.
conv2d_16_input?????????  
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_13_layer_call_and_return_conditional_losses_49105}
 !2389BCH?E
>?;
1?.
conv2d_16_input?????????  
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_13_layer_call_and_return_conditional_losses_49270t
 !2389BC??<
5?2
(?%
inputs?????????  
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_13_layer_call_and_return_conditional_losses_49316t
 !2389BC??<
5?2
(?%
inputs?????????  
p 

 
? "%?"
?
0?????????
? ?
-__inference_sequential_13_layer_call_fn_49146p
 !2389BCH?E
>?;
1?.
conv2d_16_input?????????  
p

 
? "???????????
-__inference_sequential_13_layer_call_fn_49186p
 !2389BCH?E
>?;
1?.
conv2d_16_input?????????  
p 

 
? "???????????
-__inference_sequential_13_layer_call_fn_49331g
 !2389BC??<
5?2
(?%
inputs?????????  
p

 
? "???????????
-__inference_sequential_13_layer_call_fn_49346g
 !2389BC??<
5?2
(?%
inputs?????????  
p 

 
? "???????????
#__inference_signature_wrapper_49203?
 !2389BCS?P
? 
I?F
D
conv2d_16_input1?.
conv2d_16_input?????????  "3?0
.
dense_29"?
dense_29?????????