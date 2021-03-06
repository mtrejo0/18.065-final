??
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
?
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
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
.
Rsqrt
x"T
y"T"
Ttype:

2
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
?
conv2d_105/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_105/kernel

%conv2d_105/kernel/Read/ReadVariableOpReadVariableOpconv2d_105/kernel*&
_output_shapes
:*
dtype0
v
conv2d_105/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_105/bias
o
#conv2d_105/bias/Read/ReadVariableOpReadVariableOpconv2d_105/bias*
_output_shapes
:*
dtype0
?
batch_normalization_140/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_140/gamma
?
1batch_normalization_140/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_140/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_140/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_140/beta
?
0batch_normalization_140/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_140/beta*
_output_shapes
:*
dtype0
?
#batch_normalization_140/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_140/moving_mean
?
7batch_normalization_140/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_140/moving_mean*
_output_shapes
:*
dtype0
?
'batch_normalization_140/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_140/moving_variance
?
;batch_normalization_140/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_140/moving_variance*
_output_shapes
:*
dtype0
?
conv2d_106/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_106/kernel

%conv2d_106/kernel/Read/ReadVariableOpReadVariableOpconv2d_106/kernel*&
_output_shapes
: *
dtype0
v
conv2d_106/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_106/bias
o
#conv2d_106/bias/Read/ReadVariableOpReadVariableOpconv2d_106/bias*
_output_shapes
: *
dtype0
?
batch_normalization_141/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namebatch_normalization_141/gamma
?
1batch_normalization_141/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_141/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_141/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_141/beta
?
0batch_normalization_141/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_141/beta*
_output_shapes
: *
dtype0
?
#batch_normalization_141/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#batch_normalization_141/moving_mean
?
7batch_normalization_141/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_141/moving_mean*
_output_shapes
: *
dtype0
?
'batch_normalization_141/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'batch_normalization_141/moving_variance
?
;batch_normalization_141/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_141/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_107/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_107/kernel

%conv2d_107/kernel/Read/ReadVariableOpReadVariableOpconv2d_107/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_107/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_107/bias
o
#conv2d_107/bias/Read/ReadVariableOpReadVariableOpconv2d_107/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_142/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namebatch_normalization_142/gamma
?
1batch_normalization_142/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_142/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_142/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_142/beta
?
0batch_normalization_142/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_142/beta*
_output_shapes
:@*
dtype0
?
#batch_normalization_142/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization_142/moving_mean
?
7batch_normalization_142/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_142/moving_mean*
_output_shapes
:@*
dtype0
?
'batch_normalization_142/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'batch_normalization_142/moving_variance
?
;batch_normalization_142/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_142/moving_variance*
_output_shapes
:@*
dtype0
}
dense_105/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*!
shared_namedense_105/kernel
v
$dense_105/kernel/Read/ReadVariableOpReadVariableOpdense_105/kernel*
_output_shapes
:	?*
dtype0
t
dense_105/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_105/bias
m
"dense_105/bias/Read/ReadVariableOpReadVariableOpdense_105/bias*
_output_shapes
:*
dtype0
?
batch_normalization_143/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_143/gamma
?
1batch_normalization_143/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_143/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_143/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_143/beta
?
0batch_normalization_143/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_143/beta*
_output_shapes
:*
dtype0
?
#batch_normalization_143/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_143/moving_mean
?
7batch_normalization_143/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_143/moving_mean*
_output_shapes
:*
dtype0
?
'batch_normalization_143/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_143/moving_variance
?
;batch_normalization_143/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_143/moving_variance*
_output_shapes
:*
dtype0
|
dense_106/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_106/kernel
u
$dense_106/kernel/Read/ReadVariableOpReadVariableOpdense_106/kernel*
_output_shapes

:*
dtype0
t
dense_106/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_106/bias
m
"dense_106/bias/Read/ReadVariableOpReadVariableOpdense_106/bias*
_output_shapes
:*
dtype0
|
dense_107/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_107/kernel
u
$dense_107/kernel/Read/ReadVariableOpReadVariableOpdense_107/kernel*
_output_shapes

:*
dtype0
t
dense_107/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_107/bias
m
"dense_107/bias/Read/ReadVariableOpReadVariableOpdense_107/bias*
_output_shapes
:*
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

NoOpNoOp
?^
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?]
value?]B?] B?]
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer_with_weights-6
layer-14
layer-15
layer_with_weights-7
layer-16
layer-17
layer_with_weights-8
layer-18
layer-19
layer_with_weights-9
layer-20
	optimizer

signatures
#_self_saveable_object_factories
regularization_losses
trainable_variables
	variables
	keras_api
%
#_self_saveable_object_factories
?

kernel
bias
# _self_saveable_object_factories
!regularization_losses
"trainable_variables
#	variables
$	keras_api
w
#%_self_saveable_object_factories
&regularization_losses
'trainable_variables
(	variables
)	keras_api
?
*axis
	+gamma
,beta
-moving_mean
.moving_variance
#/_self_saveable_object_factories
0regularization_losses
1trainable_variables
2	variables
3	keras_api
w
#4_self_saveable_object_factories
5regularization_losses
6trainable_variables
7	variables
8	keras_api
?

9kernel
:bias
#;_self_saveable_object_factories
<regularization_losses
=trainable_variables
>	variables
?	keras_api
w
#@_self_saveable_object_factories
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
?
Eaxis
	Fgamma
Gbeta
Hmoving_mean
Imoving_variance
#J_self_saveable_object_factories
Kregularization_losses
Ltrainable_variables
M	variables
N	keras_api
w
#O_self_saveable_object_factories
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
?

Tkernel
Ubias
#V_self_saveable_object_factories
Wregularization_losses
Xtrainable_variables
Y	variables
Z	keras_api
w
#[_self_saveable_object_factories
\regularization_losses
]trainable_variables
^	variables
_	keras_api
?
`axis
	agamma
bbeta
cmoving_mean
dmoving_variance
#e_self_saveable_object_factories
fregularization_losses
gtrainable_variables
h	variables
i	keras_api
w
#j_self_saveable_object_factories
kregularization_losses
ltrainable_variables
m	variables
n	keras_api
w
#o_self_saveable_object_factories
pregularization_losses
qtrainable_variables
r	variables
s	keras_api
?

tkernel
ubias
#v_self_saveable_object_factories
wregularization_losses
xtrainable_variables
y	variables
z	keras_api
w
#{_self_saveable_object_factories
|regularization_losses
}trainable_variables
~	variables
	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
$?_self_saveable_object_factories
?regularization_losses
?trainable_variables
?	variables
?	keras_api
|
$?_self_saveable_object_factories
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?trainable_variables
?	variables
?	keras_api
|
$?_self_saveable_object_factories
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
 
 
 
?
0
1
+2
,3
94
:5
F6
G7
T8
U9
a10
b11
t12
u13
?14
?15
?16
?17
?18
?19
?
0
1
+2
,3
-4
.5
96
:7
F8
G9
H10
I11
T12
U13
a14
b15
c16
d17
t18
u19
?20
?21
?22
?23
?24
?25
?26
?27
?
 ?layer_regularization_losses
?metrics
?layer_metrics
regularization_losses
trainable_variables
?layers
	variables
?non_trainable_variables
 
][
VARIABLE_VALUEconv2d_105/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_105/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1

0
1
?
 ?layer_regularization_losses
?metrics
?layer_metrics
!regularization_losses
"trainable_variables
?layers
#	variables
?non_trainable_variables
 
 
 
 
?
 ?layer_regularization_losses
?metrics
?layer_metrics
&regularization_losses
'trainable_variables
?layers
(	variables
?non_trainable_variables
 
hf
VARIABLE_VALUEbatch_normalization_140/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_140/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_140/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_140/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
 

+0
,1

+0
,1
-2
.3
?
 ?layer_regularization_losses
?metrics
?layer_metrics
0regularization_losses
1trainable_variables
?layers
2	variables
?non_trainable_variables
 
 
 
 
?
 ?layer_regularization_losses
?metrics
?layer_metrics
5regularization_losses
6trainable_variables
?layers
7	variables
?non_trainable_variables
][
VARIABLE_VALUEconv2d_106/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_106/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

90
:1

90
:1
?
 ?layer_regularization_losses
?metrics
?layer_metrics
<regularization_losses
=trainable_variables
?layers
>	variables
?non_trainable_variables
 
 
 
 
?
 ?layer_regularization_losses
?metrics
?layer_metrics
Aregularization_losses
Btrainable_variables
?layers
C	variables
?non_trainable_variables
 
hf
VARIABLE_VALUEbatch_normalization_141/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_141/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_141/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_141/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
 

F0
G1

F0
G1
H2
I3
?
 ?layer_regularization_losses
?metrics
?layer_metrics
Kregularization_losses
Ltrainable_variables
?layers
M	variables
?non_trainable_variables
 
 
 
 
?
 ?layer_regularization_losses
?metrics
?layer_metrics
Pregularization_losses
Qtrainable_variables
?layers
R	variables
?non_trainable_variables
][
VARIABLE_VALUEconv2d_107/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_107/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

T0
U1

T0
U1
?
 ?layer_regularization_losses
?metrics
?layer_metrics
Wregularization_losses
Xtrainable_variables
?layers
Y	variables
?non_trainable_variables
 
 
 
 
?
 ?layer_regularization_losses
?metrics
?layer_metrics
\regularization_losses
]trainable_variables
?layers
^	variables
?non_trainable_variables
 
hf
VARIABLE_VALUEbatch_normalization_142/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_142/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_142/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_142/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
 

a0
b1

a0
b1
c2
d3
?
 ?layer_regularization_losses
?metrics
?layer_metrics
fregularization_losses
gtrainable_variables
?layers
h	variables
?non_trainable_variables
 
 
 
 
?
 ?layer_regularization_losses
?metrics
?layer_metrics
kregularization_losses
ltrainable_variables
?layers
m	variables
?non_trainable_variables
 
 
 
 
?
 ?layer_regularization_losses
?metrics
?layer_metrics
pregularization_losses
qtrainable_variables
?layers
r	variables
?non_trainable_variables
\Z
VARIABLE_VALUEdense_105/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_105/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

t0
u1

t0
u1
?
 ?layer_regularization_losses
?metrics
?layer_metrics
wregularization_losses
xtrainable_variables
?layers
y	variables
?non_trainable_variables
 
 
 
 
?
 ?layer_regularization_losses
?metrics
?layer_metrics
|regularization_losses
}trainable_variables
?layers
~	variables
?non_trainable_variables
 
hf
VARIABLE_VALUEbatch_normalization_143/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_143/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_143/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_143/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1
 
?0
?1
?2
?3
?
 ?layer_regularization_losses
?metrics
?layer_metrics
?regularization_losses
?trainable_variables
?layers
?	variables
?non_trainable_variables
 
 
 
 
?
 ?layer_regularization_losses
?metrics
?layer_metrics
?regularization_losses
?trainable_variables
?layers
?	variables
?non_trainable_variables
\Z
VARIABLE_VALUEdense_106/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_106/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1

?0
?1
?
 ?layer_regularization_losses
?metrics
?layer_metrics
?regularization_losses
?trainable_variables
?layers
?	variables
?non_trainable_variables
 
 
 
 
?
 ?layer_regularization_losses
?metrics
?layer_metrics
?regularization_losses
?trainable_variables
?layers
?	variables
?non_trainable_variables
\Z
VARIABLE_VALUEdense_107/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_107/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1

?0
?1
?
 ?layer_regularization_losses
?metrics
?layer_metrics
?regularization_losses
?trainable_variables
?layers
?	variables
?non_trainable_variables
 

?0
 
?
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
11
12
13
14
15
16
17
18
19
20
:
-0
.1
H2
I3
c4
d5
?6
?7
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

-0
.1
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

H0
I1
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

c0
d1
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

?0
?1
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
8

?total

?count
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
?
serving_default_input_36Placeholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_36conv2d_105/kernelconv2d_105/biasbatch_normalization_140/gammabatch_normalization_140/beta#batch_normalization_140/moving_mean'batch_normalization_140/moving_varianceconv2d_106/kernelconv2d_106/biasbatch_normalization_141/gammabatch_normalization_141/beta#batch_normalization_141/moving_mean'batch_normalization_141/moving_varianceconv2d_107/kernelconv2d_107/biasbatch_normalization_142/gammabatch_normalization_142/beta#batch_normalization_142/moving_mean'batch_normalization_142/moving_variancedense_105/kerneldense_105/bias'batch_normalization_143/moving_variancebatch_normalization_143/gamma#batch_normalization_143/moving_meanbatch_normalization_143/betadense_106/kerneldense_106/biasdense_107/kerneldense_107/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_313255
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_105/kernel/Read/ReadVariableOp#conv2d_105/bias/Read/ReadVariableOp1batch_normalization_140/gamma/Read/ReadVariableOp0batch_normalization_140/beta/Read/ReadVariableOp7batch_normalization_140/moving_mean/Read/ReadVariableOp;batch_normalization_140/moving_variance/Read/ReadVariableOp%conv2d_106/kernel/Read/ReadVariableOp#conv2d_106/bias/Read/ReadVariableOp1batch_normalization_141/gamma/Read/ReadVariableOp0batch_normalization_141/beta/Read/ReadVariableOp7batch_normalization_141/moving_mean/Read/ReadVariableOp;batch_normalization_141/moving_variance/Read/ReadVariableOp%conv2d_107/kernel/Read/ReadVariableOp#conv2d_107/bias/Read/ReadVariableOp1batch_normalization_142/gamma/Read/ReadVariableOp0batch_normalization_142/beta/Read/ReadVariableOp7batch_normalization_142/moving_mean/Read/ReadVariableOp;batch_normalization_142/moving_variance/Read/ReadVariableOp$dense_105/kernel/Read/ReadVariableOp"dense_105/bias/Read/ReadVariableOp1batch_normalization_143/gamma/Read/ReadVariableOp0batch_normalization_143/beta/Read/ReadVariableOp7batch_normalization_143/moving_mean/Read/ReadVariableOp;batch_normalization_143/moving_variance/Read/ReadVariableOp$dense_106/kernel/Read/ReadVariableOp"dense_106/bias/Read/ReadVariableOp$dense_107/kernel/Read/ReadVariableOp"dense_107/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*+
Tin$
"2 *
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
GPU 2J 8? *(
f#R!
__inference__traced_save_314405
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_105/kernelconv2d_105/biasbatch_normalization_140/gammabatch_normalization_140/beta#batch_normalization_140/moving_mean'batch_normalization_140/moving_varianceconv2d_106/kernelconv2d_106/biasbatch_normalization_141/gammabatch_normalization_141/beta#batch_normalization_141/moving_mean'batch_normalization_141/moving_varianceconv2d_107/kernelconv2d_107/biasbatch_normalization_142/gammabatch_normalization_142/beta#batch_normalization_142/moving_mean'batch_normalization_142/moving_variancedense_105/kerneldense_105/biasbatch_normalization_143/gammabatch_normalization_143/beta#batch_normalization_143/moving_mean'batch_normalization_143/moving_variancedense_106/kerneldense_106/biasdense_107/kerneldense_107/biastotalcount**
Tin#
!2*
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_314505??
?
?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_313848

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
b
F__inference_flatten_35_layer_call_and_return_conditional_losses_312651

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?^
?

D__inference_model_35_layer_call_and_return_conditional_losses_313133

inputs
conv2d_105_313056
conv2d_105_313058"
batch_normalization_140_313062"
batch_normalization_140_313064"
batch_normalization_140_313066"
batch_normalization_140_313068
conv2d_106_313072
conv2d_106_313074"
batch_normalization_141_313078"
batch_normalization_141_313080"
batch_normalization_141_313082"
batch_normalization_141_313084
conv2d_107_313088
conv2d_107_313090"
batch_normalization_142_313094"
batch_normalization_142_313096"
batch_normalization_142_313098"
batch_normalization_142_313100
dense_105_313105
dense_105_313107"
batch_normalization_143_313111"
batch_normalization_143_313113"
batch_normalization_143_313115"
batch_normalization_143_313117
dense_106_313121
dense_106_313123
dense_107_313127
dense_107_313129
identity??/batch_normalization_140/StatefulPartitionedCall?/batch_normalization_141/StatefulPartitionedCall?/batch_normalization_142/StatefulPartitionedCall?/batch_normalization_143/StatefulPartitionedCall?"conv2d_105/StatefulPartitionedCall?"conv2d_106/StatefulPartitionedCall?"conv2d_107/StatefulPartitionedCall?!dense_105/StatefulPartitionedCall?!dense_106/StatefulPartitionedCall?!dense_107/StatefulPartitionedCall?
"conv2d_105/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_105_313056conv2d_105_313058*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_105_layer_call_and_return_conditional_losses_3123162$
"conv2d_105/StatefulPartitionedCall?
activation_175/PartitionedCallPartitionedCall+conv2d_105/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_175_layer_call_and_return_conditional_losses_3123372 
activation_175/PartitionedCall?
/batch_normalization_140/StatefulPartitionedCallStatefulPartitionedCall'activation_175/PartitionedCall:output:0batch_normalization_140_313062batch_normalization_140_313064batch_normalization_140_313066batch_normalization_140_313068*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_31238221
/batch_normalization_140/StatefulPartitionedCall?
!max_pooling2d_105/PartitionedCallPartitionedCall8batch_normalization_140/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_105_layer_call_and_return_conditional_losses_3119242#
!max_pooling2d_105/PartitionedCall?
"conv2d_106/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_105/PartitionedCall:output:0conv2d_106_313072conv2d_106_313074*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_106_layer_call_and_return_conditional_losses_3124292$
"conv2d_106/StatefulPartitionedCall?
activation_176/PartitionedCallPartitionedCall+conv2d_106/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_176_layer_call_and_return_conditional_losses_3124502 
activation_176/PartitionedCall?
/batch_normalization_141/StatefulPartitionedCallStatefulPartitionedCall'activation_176/PartitionedCall:output:0batch_normalization_141_313078batch_normalization_141_313080batch_normalization_141_313082batch_normalization_141_313084*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_31249521
/batch_normalization_141/StatefulPartitionedCall?
!max_pooling2d_106/PartitionedCallPartitionedCall8batch_normalization_141/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_106_layer_call_and_return_conditional_losses_3120402#
!max_pooling2d_106/PartitionedCall?
"conv2d_107/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_106/PartitionedCall:output:0conv2d_107_313088conv2d_107_313090*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_107_layer_call_and_return_conditional_losses_3125422$
"conv2d_107/StatefulPartitionedCall?
activation_177/PartitionedCallPartitionedCall+conv2d_107/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_177_layer_call_and_return_conditional_losses_3125632 
activation_177/PartitionedCall?
/batch_normalization_142/StatefulPartitionedCallStatefulPartitionedCall'activation_177/PartitionedCall:output:0batch_normalization_142_313094batch_normalization_142_313096batch_normalization_142_313098batch_normalization_142_313100*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_31260821
/batch_normalization_142/StatefulPartitionedCall?
!max_pooling2d_107/PartitionedCallPartitionedCall8batch_normalization_142/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_3121562#
!max_pooling2d_107/PartitionedCall?
flatten_35/PartitionedCallPartitionedCall*max_pooling2d_107/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_35_layer_call_and_return_conditional_losses_3126512
flatten_35/PartitionedCall?
!dense_105/StatefulPartitionedCallStatefulPartitionedCall#flatten_35/PartitionedCall:output:0dense_105_313105dense_105_313107*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_105_layer_call_and_return_conditional_losses_3126692#
!dense_105/StatefulPartitionedCall?
activation_178/PartitionedCallPartitionedCall*dense_105/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_178_layer_call_and_return_conditional_losses_3126902 
activation_178/PartitionedCall?
/batch_normalization_143/StatefulPartitionedCallStatefulPartitionedCall'activation_178/PartitionedCall:output:0batch_normalization_143_313111batch_normalization_143_313113batch_normalization_143_313115batch_normalization_143_313117*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_31229121
/batch_normalization_143/StatefulPartitionedCall?
dropout_35/PartitionedCallPartitionedCall8batch_normalization_143/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *O
fJRH
F__inference_dropout_35_layer_call_and_return_conditional_losses_3127502
dropout_35/PartitionedCall?
!dense_106/StatefulPartitionedCallStatefulPartitionedCall#dropout_35/PartitionedCall:output:0dense_106_313121dense_106_313123*
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
GPU 2J 8? *N
fIRG
E__inference_dense_106_layer_call_and_return_conditional_losses_3127732#
!dense_106/StatefulPartitionedCall?
activation_179/PartitionedCallPartitionedCall*dense_106/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_179_layer_call_and_return_conditional_losses_3127942 
activation_179/PartitionedCall?
!dense_107/StatefulPartitionedCallStatefulPartitionedCall'activation_179/PartitionedCall:output:0dense_107_313127dense_107_313129*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_107_layer_call_and_return_conditional_losses_3128122#
!dense_107/StatefulPartitionedCall?
IdentityIdentity*dense_107/StatefulPartitionedCall:output:00^batch_normalization_140/StatefulPartitionedCall0^batch_normalization_141/StatefulPartitionedCall0^batch_normalization_142/StatefulPartitionedCall0^batch_normalization_143/StatefulPartitionedCall#^conv2d_105/StatefulPartitionedCall#^conv2d_106/StatefulPartitionedCall#^conv2d_107/StatefulPartitionedCall"^dense_105/StatefulPartitionedCall"^dense_106/StatefulPartitionedCall"^dense_107/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2b
/batch_normalization_140/StatefulPartitionedCall/batch_normalization_140/StatefulPartitionedCall2b
/batch_normalization_141/StatefulPartitionedCall/batch_normalization_141/StatefulPartitionedCall2b
/batch_normalization_142/StatefulPartitionedCall/batch_normalization_142/StatefulPartitionedCall2b
/batch_normalization_143/StatefulPartitionedCall/batch_normalization_143/StatefulPartitionedCall2H
"conv2d_105/StatefulPartitionedCall"conv2d_105/StatefulPartitionedCall2H
"conv2d_106/StatefulPartitionedCall"conv2d_106/StatefulPartitionedCall2H
"conv2d_107/StatefulPartitionedCall"conv2d_107/StatefulPartitionedCall2F
!dense_105/StatefulPartitionedCall!dense_105/StatefulPartitionedCall2F
!dense_106/StatefulPartitionedCall!dense_106/StatefulPartitionedCall2F
!dense_107/StatefulPartitionedCall!dense_107/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_141_layer_call_fn_313925

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_3124772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_312108

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_314005

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
K
/__inference_activation_179_layer_call_fn_314273

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
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_179_layer_call_and_return_conditional_losses_3127942
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_105_layer_call_and_return_conditional_losses_311924

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
?
?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_313830

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
e
F__inference_dropout_35_layer_call_and_return_conditional_losses_312745

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
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
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
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_107_layer_call_and_return_conditional_losses_312812

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_140_layer_call_fn_313781

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_3123822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????  ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
F__inference_conv2d_106_layer_call_and_return_conditional_losses_312429

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_313737

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????  ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
f
J__inference_activation_177_layer_call_and_return_conditional_losses_312563

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
d
F__inference_dropout_35_layer_call_and_return_conditional_losses_314234

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_107_layer_call_fn_312162

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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_3121562
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
f
J__inference_activation_175_layer_call_and_return_conditional_losses_313648

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????  2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
)__inference_model_35_layer_call_fn_313624

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_35_layer_call_and_return_conditional_losses_3131332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
f
J__inference_activation_178_layer_call_and_return_conditional_losses_314130

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:?????????2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
f
J__inference_activation_179_layer_call_and_return_conditional_losses_314268

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:?????????2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_140_layer_call_fn_313704

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_3118762
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_313894

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
F__inference_conv2d_106_layer_call_and_return_conditional_losses_313791

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
K
/__inference_activation_178_layer_call_fn_314135

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
GPU 2J 8? *S
fNRL
J__inference_activation_178_layer_call_and_return_conditional_losses_3126902
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_141_layer_call_fn_313874

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_3120232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_312495

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?^
?

D__inference_model_35_layer_call_and_return_conditional_losses_312909
input_36
conv2d_105_312832
conv2d_105_312834"
batch_normalization_140_312838"
batch_normalization_140_312840"
batch_normalization_140_312842"
batch_normalization_140_312844
conv2d_106_312848
conv2d_106_312850"
batch_normalization_141_312854"
batch_normalization_141_312856"
batch_normalization_141_312858"
batch_normalization_141_312860
conv2d_107_312864
conv2d_107_312866"
batch_normalization_142_312870"
batch_normalization_142_312872"
batch_normalization_142_312874"
batch_normalization_142_312876
dense_105_312881
dense_105_312883"
batch_normalization_143_312887"
batch_normalization_143_312889"
batch_normalization_143_312891"
batch_normalization_143_312893
dense_106_312897
dense_106_312899
dense_107_312903
dense_107_312905
identity??/batch_normalization_140/StatefulPartitionedCall?/batch_normalization_141/StatefulPartitionedCall?/batch_normalization_142/StatefulPartitionedCall?/batch_normalization_143/StatefulPartitionedCall?"conv2d_105/StatefulPartitionedCall?"conv2d_106/StatefulPartitionedCall?"conv2d_107/StatefulPartitionedCall?!dense_105/StatefulPartitionedCall?!dense_106/StatefulPartitionedCall?!dense_107/StatefulPartitionedCall?
"conv2d_105/StatefulPartitionedCallStatefulPartitionedCallinput_36conv2d_105_312832conv2d_105_312834*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_105_layer_call_and_return_conditional_losses_3123162$
"conv2d_105/StatefulPartitionedCall?
activation_175/PartitionedCallPartitionedCall+conv2d_105/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_175_layer_call_and_return_conditional_losses_3123372 
activation_175/PartitionedCall?
/batch_normalization_140/StatefulPartitionedCallStatefulPartitionedCall'activation_175/PartitionedCall:output:0batch_normalization_140_312838batch_normalization_140_312840batch_normalization_140_312842batch_normalization_140_312844*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_31238221
/batch_normalization_140/StatefulPartitionedCall?
!max_pooling2d_105/PartitionedCallPartitionedCall8batch_normalization_140/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_105_layer_call_and_return_conditional_losses_3119242#
!max_pooling2d_105/PartitionedCall?
"conv2d_106/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_105/PartitionedCall:output:0conv2d_106_312848conv2d_106_312850*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_106_layer_call_and_return_conditional_losses_3124292$
"conv2d_106/StatefulPartitionedCall?
activation_176/PartitionedCallPartitionedCall+conv2d_106/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_176_layer_call_and_return_conditional_losses_3124502 
activation_176/PartitionedCall?
/batch_normalization_141/StatefulPartitionedCallStatefulPartitionedCall'activation_176/PartitionedCall:output:0batch_normalization_141_312854batch_normalization_141_312856batch_normalization_141_312858batch_normalization_141_312860*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_31249521
/batch_normalization_141/StatefulPartitionedCall?
!max_pooling2d_106/PartitionedCallPartitionedCall8batch_normalization_141/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_106_layer_call_and_return_conditional_losses_3120402#
!max_pooling2d_106/PartitionedCall?
"conv2d_107/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_106/PartitionedCall:output:0conv2d_107_312864conv2d_107_312866*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_107_layer_call_and_return_conditional_losses_3125422$
"conv2d_107/StatefulPartitionedCall?
activation_177/PartitionedCallPartitionedCall+conv2d_107/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_177_layer_call_and_return_conditional_losses_3125632 
activation_177/PartitionedCall?
/batch_normalization_142/StatefulPartitionedCallStatefulPartitionedCall'activation_177/PartitionedCall:output:0batch_normalization_142_312870batch_normalization_142_312872batch_normalization_142_312874batch_normalization_142_312876*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_31260821
/batch_normalization_142/StatefulPartitionedCall?
!max_pooling2d_107/PartitionedCallPartitionedCall8batch_normalization_142/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_3121562#
!max_pooling2d_107/PartitionedCall?
flatten_35/PartitionedCallPartitionedCall*max_pooling2d_107/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_35_layer_call_and_return_conditional_losses_3126512
flatten_35/PartitionedCall?
!dense_105/StatefulPartitionedCallStatefulPartitionedCall#flatten_35/PartitionedCall:output:0dense_105_312881dense_105_312883*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_105_layer_call_and_return_conditional_losses_3126692#
!dense_105/StatefulPartitionedCall?
activation_178/PartitionedCallPartitionedCall*dense_105/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_178_layer_call_and_return_conditional_losses_3126902 
activation_178/PartitionedCall?
/batch_normalization_143/StatefulPartitionedCallStatefulPartitionedCall'activation_178/PartitionedCall:output:0batch_normalization_143_312887batch_normalization_143_312889batch_normalization_143_312891batch_normalization_143_312893*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_31229121
/batch_normalization_143/StatefulPartitionedCall?
dropout_35/PartitionedCallPartitionedCall8batch_normalization_143/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *O
fJRH
F__inference_dropout_35_layer_call_and_return_conditional_losses_3127502
dropout_35/PartitionedCall?
!dense_106/StatefulPartitionedCallStatefulPartitionedCall#dropout_35/PartitionedCall:output:0dense_106_312897dense_106_312899*
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
GPU 2J 8? *N
fIRG
E__inference_dense_106_layer_call_and_return_conditional_losses_3127732#
!dense_106/StatefulPartitionedCall?
activation_179/PartitionedCallPartitionedCall*dense_106/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_179_layer_call_and_return_conditional_losses_3127942 
activation_179/PartitionedCall?
!dense_107/StatefulPartitionedCallStatefulPartitionedCall'activation_179/PartitionedCall:output:0dense_107_312903dense_107_312905*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_107_layer_call_and_return_conditional_losses_3128122#
!dense_107/StatefulPartitionedCall?
IdentityIdentity*dense_107/StatefulPartitionedCall:output:00^batch_normalization_140/StatefulPartitionedCall0^batch_normalization_141/StatefulPartitionedCall0^batch_normalization_142/StatefulPartitionedCall0^batch_normalization_143/StatefulPartitionedCall#^conv2d_105/StatefulPartitionedCall#^conv2d_106/StatefulPartitionedCall#^conv2d_107/StatefulPartitionedCall"^dense_105/StatefulPartitionedCall"^dense_106/StatefulPartitionedCall"^dense_107/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2b
/batch_normalization_140/StatefulPartitionedCall/batch_normalization_140/StatefulPartitionedCall2b
/batch_normalization_141/StatefulPartitionedCall/batch_normalization_141/StatefulPartitionedCall2b
/batch_normalization_142/StatefulPartitionedCall/batch_normalization_142/StatefulPartitionedCall2b
/batch_normalization_143/StatefulPartitionedCall/batch_normalization_143/StatefulPartitionedCall2H
"conv2d_105/StatefulPartitionedCall"conv2d_105/StatefulPartitionedCall2H
"conv2d_106/StatefulPartitionedCall"conv2d_106/StatefulPartitionedCall2H
"conv2d_107/StatefulPartitionedCall"conv2d_107/StatefulPartitionedCall2F
!dense_105/StatefulPartitionedCall!dense_105/StatefulPartitionedCall2F
!dense_106/StatefulPartitionedCall!dense_106/StatefulPartitionedCall2F
!dense_107/StatefulPartitionedCall!dense_107/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_36
?
f
J__inference_activation_175_layer_call_and_return_conditional_losses_312337

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????  2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_312477

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
ޛ
?
D__inference_model_35_layer_call_and_return_conditional_losses_313502

inputs-
)conv2d_105_conv2d_readvariableop_resource.
*conv2d_105_biasadd_readvariableop_resource3
/batch_normalization_140_readvariableop_resource5
1batch_normalization_140_readvariableop_1_resourceD
@batch_normalization_140_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_140_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_106_conv2d_readvariableop_resource.
*conv2d_106_biasadd_readvariableop_resource3
/batch_normalization_141_readvariableop_resource5
1batch_normalization_141_readvariableop_1_resourceD
@batch_normalization_141_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_141_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_107_conv2d_readvariableop_resource.
*conv2d_107_biasadd_readvariableop_resource3
/batch_normalization_142_readvariableop_resource5
1batch_normalization_142_readvariableop_1_resourceD
@batch_normalization_142_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_142_fusedbatchnormv3_readvariableop_1_resource,
(dense_105_matmul_readvariableop_resource-
)dense_105_biasadd_readvariableop_resource=
9batch_normalization_143_batchnorm_readvariableop_resourceA
=batch_normalization_143_batchnorm_mul_readvariableop_resource?
;batch_normalization_143_batchnorm_readvariableop_1_resource?
;batch_normalization_143_batchnorm_readvariableop_2_resource,
(dense_106_matmul_readvariableop_resource-
)dense_106_biasadd_readvariableop_resource,
(dense_107_matmul_readvariableop_resource-
)dense_107_biasadd_readvariableop_resource
identity??7batch_normalization_140/FusedBatchNormV3/ReadVariableOp?9batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_140/ReadVariableOp?(batch_normalization_140/ReadVariableOp_1?7batch_normalization_141/FusedBatchNormV3/ReadVariableOp?9batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_141/ReadVariableOp?(batch_normalization_141/ReadVariableOp_1?7batch_normalization_142/FusedBatchNormV3/ReadVariableOp?9batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_142/ReadVariableOp?(batch_normalization_142/ReadVariableOp_1?0batch_normalization_143/batchnorm/ReadVariableOp?2batch_normalization_143/batchnorm/ReadVariableOp_1?2batch_normalization_143/batchnorm/ReadVariableOp_2?4batch_normalization_143/batchnorm/mul/ReadVariableOp?!conv2d_105/BiasAdd/ReadVariableOp? conv2d_105/Conv2D/ReadVariableOp?!conv2d_106/BiasAdd/ReadVariableOp? conv2d_106/Conv2D/ReadVariableOp?!conv2d_107/BiasAdd/ReadVariableOp? conv2d_107/Conv2D/ReadVariableOp? dense_105/BiasAdd/ReadVariableOp?dense_105/MatMul/ReadVariableOp? dense_106/BiasAdd/ReadVariableOp?dense_106/MatMul/ReadVariableOp? dense_107/BiasAdd/ReadVariableOp?dense_107/MatMul/ReadVariableOp?
 conv2d_105/Conv2D/ReadVariableOpReadVariableOp)conv2d_105_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_105/Conv2D/ReadVariableOp?
conv2d_105/Conv2DConv2Dinputs(conv2d_105/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2
conv2d_105/Conv2D?
!conv2d_105/BiasAdd/ReadVariableOpReadVariableOp*conv2d_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_105/BiasAdd/ReadVariableOp?
conv2d_105/BiasAddBiasAddconv2d_105/Conv2D:output:0)conv2d_105/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  2
conv2d_105/BiasAdd?
activation_175/ReluReluconv2d_105/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  2
activation_175/Relu?
&batch_normalization_140/ReadVariableOpReadVariableOp/batch_normalization_140_readvariableop_resource*
_output_shapes
:*
dtype02(
&batch_normalization_140/ReadVariableOp?
(batch_normalization_140/ReadVariableOp_1ReadVariableOp1batch_normalization_140_readvariableop_1_resource*
_output_shapes
:*
dtype02*
(batch_normalization_140/ReadVariableOp_1?
7batch_normalization_140/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_140_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype029
7batch_normalization_140/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_140_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02;
9batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_140/FusedBatchNormV3FusedBatchNormV3!activation_175/Relu:activations:0.batch_normalization_140/ReadVariableOp:value:00batch_normalization_140/ReadVariableOp_1:value:0?batch_normalization_140/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_140/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
is_training( 2*
(batch_normalization_140/FusedBatchNormV3?
max_pooling2d_105/MaxPoolMaxPool,batch_normalization_140/FusedBatchNormV3:y:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_105/MaxPool?
 conv2d_106/Conv2D/ReadVariableOpReadVariableOp)conv2d_106_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_106/Conv2D/ReadVariableOp?
conv2d_106/Conv2DConv2D"max_pooling2d_105/MaxPool:output:0(conv2d_106/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_106/Conv2D?
!conv2d_106/BiasAdd/ReadVariableOpReadVariableOp*conv2d_106_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_106/BiasAdd/ReadVariableOp?
conv2d_106/BiasAddBiasAddconv2d_106/Conv2D:output:0)conv2d_106/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_106/BiasAdd?
activation_176/ReluReluconv2d_106/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
activation_176/Relu?
&batch_normalization_141/ReadVariableOpReadVariableOp/batch_normalization_141_readvariableop_resource*
_output_shapes
: *
dtype02(
&batch_normalization_141/ReadVariableOp?
(batch_normalization_141/ReadVariableOp_1ReadVariableOp1batch_normalization_141_readvariableop_1_resource*
_output_shapes
: *
dtype02*
(batch_normalization_141/ReadVariableOp_1?
7batch_normalization_141/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_141_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype029
7batch_normalization_141/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_141_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02;
9batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_141/FusedBatchNormV3FusedBatchNormV3!activation_176/Relu:activations:0.batch_normalization_141/ReadVariableOp:value:00batch_normalization_141/ReadVariableOp_1:value:0?batch_normalization_141/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_141/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2*
(batch_normalization_141/FusedBatchNormV3?
max_pooling2d_106/MaxPoolMaxPool,batch_normalization_141/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_106/MaxPool?
 conv2d_107/Conv2D/ReadVariableOpReadVariableOp)conv2d_107_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_107/Conv2D/ReadVariableOp?
conv2d_107/Conv2DConv2D"max_pooling2d_106/MaxPool:output:0(conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_107/Conv2D?
!conv2d_107/BiasAdd/ReadVariableOpReadVariableOp*conv2d_107_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_107/BiasAdd/ReadVariableOp?
conv2d_107/BiasAddBiasAddconv2d_107/Conv2D:output:0)conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_107/BiasAdd?
activation_177/ReluReluconv2d_107/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_177/Relu?
&batch_normalization_142/ReadVariableOpReadVariableOp/batch_normalization_142_readvariableop_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_142/ReadVariableOp?
(batch_normalization_142/ReadVariableOp_1ReadVariableOp1batch_normalization_142_readvariableop_1_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_142/ReadVariableOp_1?
7batch_normalization_142/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_142_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype029
7batch_normalization_142/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_142_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_142/FusedBatchNormV3FusedBatchNormV3!activation_177/Relu:activations:0.batch_normalization_142/ReadVariableOp:value:00batch_normalization_142/ReadVariableOp_1:value:0?batch_normalization_142/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_142/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2*
(batch_normalization_142/FusedBatchNormV3?
max_pooling2d_107/MaxPoolMaxPool,batch_normalization_142/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_107/MaxPoolu
flatten_35/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_35/Const?
flatten_35/ReshapeReshape"max_pooling2d_107/MaxPool:output:0flatten_35/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_35/Reshape?
dense_105/MatMul/ReadVariableOpReadVariableOp(dense_105_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
dense_105/MatMul/ReadVariableOp?
dense_105/MatMulMatMulflatten_35/Reshape:output:0'dense_105/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_105/MatMul?
 dense_105/BiasAdd/ReadVariableOpReadVariableOp)dense_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_105/BiasAdd/ReadVariableOp?
dense_105/BiasAddBiasAdddense_105/MatMul:product:0(dense_105/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_105/BiasAdd?
activation_178/ReluReludense_105/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_178/Relu?
0batch_normalization_143/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_143_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype022
0batch_normalization_143/batchnorm/ReadVariableOp?
'batch_normalization_143/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2)
'batch_normalization_143/batchnorm/add/y?
%batch_normalization_143/batchnorm/addAddV28batch_normalization_143/batchnorm/ReadVariableOp:value:00batch_normalization_143/batchnorm/add/y:output:0*
T0*
_output_shapes
:2'
%batch_normalization_143/batchnorm/add?
'batch_normalization_143/batchnorm/RsqrtRsqrt)batch_normalization_143/batchnorm/add:z:0*
T0*
_output_shapes
:2)
'batch_normalization_143/batchnorm/Rsqrt?
4batch_normalization_143/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_143_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization_143/batchnorm/mul/ReadVariableOp?
%batch_normalization_143/batchnorm/mulMul+batch_normalization_143/batchnorm/Rsqrt:y:0<batch_normalization_143/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2'
%batch_normalization_143/batchnorm/mul?
'batch_normalization_143/batchnorm/mul_1Mul!activation_178/Relu:activations:0)batch_normalization_143/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2)
'batch_normalization_143/batchnorm/mul_1?
2batch_normalization_143/batchnorm/ReadVariableOp_1ReadVariableOp;batch_normalization_143_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype024
2batch_normalization_143/batchnorm/ReadVariableOp_1?
'batch_normalization_143/batchnorm/mul_2Mul:batch_normalization_143/batchnorm/ReadVariableOp_1:value:0)batch_normalization_143/batchnorm/mul:z:0*
T0*
_output_shapes
:2)
'batch_normalization_143/batchnorm/mul_2?
2batch_normalization_143/batchnorm/ReadVariableOp_2ReadVariableOp;batch_normalization_143_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype024
2batch_normalization_143/batchnorm/ReadVariableOp_2?
%batch_normalization_143/batchnorm/subSub:batch_normalization_143/batchnorm/ReadVariableOp_2:value:0+batch_normalization_143/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2'
%batch_normalization_143/batchnorm/sub?
'batch_normalization_143/batchnorm/add_1AddV2+batch_normalization_143/batchnorm/mul_1:z:0)batch_normalization_143/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2)
'batch_normalization_143/batchnorm/add_1?
dropout_35/IdentityIdentity+batch_normalization_143/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????2
dropout_35/Identity?
dense_106/MatMul/ReadVariableOpReadVariableOp(dense_106_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_106/MatMul/ReadVariableOp?
dense_106/MatMulMatMuldropout_35/Identity:output:0'dense_106/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_106/MatMul?
 dense_106/BiasAdd/ReadVariableOpReadVariableOp)dense_106_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_106/BiasAdd/ReadVariableOp?
dense_106/BiasAddBiasAdddense_106/MatMul:product:0(dense_106/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_106/BiasAdd?
activation_179/ReluReludense_106/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_179/Relu?
dense_107/MatMul/ReadVariableOpReadVariableOp(dense_107_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_107/MatMul/ReadVariableOp?
dense_107/MatMulMatMul!activation_179/Relu:activations:0'dense_107/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_107/MatMul?
 dense_107/BiasAdd/ReadVariableOpReadVariableOp)dense_107_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_107/BiasAdd/ReadVariableOp?
dense_107/BiasAddBiasAdddense_107/MatMul:product:0(dense_107/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_107/BiasAdd?

IdentityIdentitydense_107/BiasAdd:output:08^batch_normalization_140/FusedBatchNormV3/ReadVariableOp:^batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_140/ReadVariableOp)^batch_normalization_140/ReadVariableOp_18^batch_normalization_141/FusedBatchNormV3/ReadVariableOp:^batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_141/ReadVariableOp)^batch_normalization_141/ReadVariableOp_18^batch_normalization_142/FusedBatchNormV3/ReadVariableOp:^batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_142/ReadVariableOp)^batch_normalization_142/ReadVariableOp_11^batch_normalization_143/batchnorm/ReadVariableOp3^batch_normalization_143/batchnorm/ReadVariableOp_13^batch_normalization_143/batchnorm/ReadVariableOp_25^batch_normalization_143/batchnorm/mul/ReadVariableOp"^conv2d_105/BiasAdd/ReadVariableOp!^conv2d_105/Conv2D/ReadVariableOp"^conv2d_106/BiasAdd/ReadVariableOp!^conv2d_106/Conv2D/ReadVariableOp"^conv2d_107/BiasAdd/ReadVariableOp!^conv2d_107/Conv2D/ReadVariableOp!^dense_105/BiasAdd/ReadVariableOp ^dense_105/MatMul/ReadVariableOp!^dense_106/BiasAdd/ReadVariableOp ^dense_106/MatMul/ReadVariableOp!^dense_107/BiasAdd/ReadVariableOp ^dense_107/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2r
7batch_normalization_140/FusedBatchNormV3/ReadVariableOp7batch_normalization_140/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_140/FusedBatchNormV3/ReadVariableOp_19batch_normalization_140/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_140/ReadVariableOp&batch_normalization_140/ReadVariableOp2T
(batch_normalization_140/ReadVariableOp_1(batch_normalization_140/ReadVariableOp_12r
7batch_normalization_141/FusedBatchNormV3/ReadVariableOp7batch_normalization_141/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_141/FusedBatchNormV3/ReadVariableOp_19batch_normalization_141/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_141/ReadVariableOp&batch_normalization_141/ReadVariableOp2T
(batch_normalization_141/ReadVariableOp_1(batch_normalization_141/ReadVariableOp_12r
7batch_normalization_142/FusedBatchNormV3/ReadVariableOp7batch_normalization_142/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_142/FusedBatchNormV3/ReadVariableOp_19batch_normalization_142/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_142/ReadVariableOp&batch_normalization_142/ReadVariableOp2T
(batch_normalization_142/ReadVariableOp_1(batch_normalization_142/ReadVariableOp_12d
0batch_normalization_143/batchnorm/ReadVariableOp0batch_normalization_143/batchnorm/ReadVariableOp2h
2batch_normalization_143/batchnorm/ReadVariableOp_12batch_normalization_143/batchnorm/ReadVariableOp_12h
2batch_normalization_143/batchnorm/ReadVariableOp_22batch_normalization_143/batchnorm/ReadVariableOp_22l
4batch_normalization_143/batchnorm/mul/ReadVariableOp4batch_normalization_143/batchnorm/mul/ReadVariableOp2F
!conv2d_105/BiasAdd/ReadVariableOp!conv2d_105/BiasAdd/ReadVariableOp2D
 conv2d_105/Conv2D/ReadVariableOp conv2d_105/Conv2D/ReadVariableOp2F
!conv2d_106/BiasAdd/ReadVariableOp!conv2d_106/BiasAdd/ReadVariableOp2D
 conv2d_106/Conv2D/ReadVariableOp conv2d_106/Conv2D/ReadVariableOp2F
!conv2d_107/BiasAdd/ReadVariableOp!conv2d_107/BiasAdd/ReadVariableOp2D
 conv2d_107/Conv2D/ReadVariableOp conv2d_107/Conv2D/ReadVariableOp2D
 dense_105/BiasAdd/ReadVariableOp dense_105/BiasAdd/ReadVariableOp2B
dense_105/MatMul/ReadVariableOpdense_105/MatMul/ReadVariableOp2D
 dense_106/BiasAdd/ReadVariableOp dense_106/BiasAdd/ReadVariableOp2B
dense_106/MatMul/ReadVariableOpdense_106/MatMul/ReadVariableOp2D
 dense_107/BiasAdd/ReadVariableOp dense_107/BiasAdd/ReadVariableOp2B
dense_107/MatMul/ReadVariableOpdense_107/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_311876

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_140_layer_call_fn_313717

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_3119072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_35_layer_call_fn_314244

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
GPU 2J 8? *O
fJRH
F__inference_dropout_35_layer_call_and_return_conditional_losses_3127502
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_140_layer_call_fn_313768

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_3123642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????  ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_313673

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_312139

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?	
?
E__inference_dense_106_layer_call_and_return_conditional_losses_314254

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

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
?
b
F__inference_flatten_35_layer_call_and_return_conditional_losses_314101

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
f
J__inference_activation_179_layer_call_and_return_conditional_losses_312794

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:?????????2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_141_layer_call_fn_313861

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_3119922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_143_layer_call_fn_314217

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_3122912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_141_layer_call_fn_313938

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_3124952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_312156

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
?
?
$__inference_signature_wrapper_313255
input_36
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_36unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_3118142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_36
?

*__inference_dense_105_layer_call_fn_314125

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_105_layer_call_and_return_conditional_losses_3126692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_model_35_layer_call_fn_313051
input_36
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_36unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_35_layer_call_and_return_conditional_losses_3129922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_36
?	
?
F__inference_conv2d_107_layer_call_and_return_conditional_losses_312542

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_311907

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_106_layer_call_fn_312046

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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_106_layer_call_and_return_conditional_losses_3120402
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
?
K
/__inference_activation_176_layer_call_fn_313810

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
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_176_layer_call_and_return_conditional_losses_3124502
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
E__inference_dense_106_layer_call_and_return_conditional_losses_312773

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

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
?
)__inference_model_35_layer_call_fn_313192
input_36
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_36unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_35_layer_call_and_return_conditional_losses_3131332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_36
?`
?

D__inference_model_35_layer_call_and_return_conditional_losses_312829
input_36
conv2d_105_312327
conv2d_105_312329"
batch_normalization_140_312409"
batch_normalization_140_312411"
batch_normalization_140_312413"
batch_normalization_140_312415
conv2d_106_312440
conv2d_106_312442"
batch_normalization_141_312522"
batch_normalization_141_312524"
batch_normalization_141_312526"
batch_normalization_141_312528
conv2d_107_312553
conv2d_107_312555"
batch_normalization_142_312635"
batch_normalization_142_312637"
batch_normalization_142_312639"
batch_normalization_142_312641
dense_105_312680
dense_105_312682"
batch_normalization_143_312724"
batch_normalization_143_312726"
batch_normalization_143_312728"
batch_normalization_143_312730
dense_106_312784
dense_106_312786
dense_107_312823
dense_107_312825
identity??/batch_normalization_140/StatefulPartitionedCall?/batch_normalization_141/StatefulPartitionedCall?/batch_normalization_142/StatefulPartitionedCall?/batch_normalization_143/StatefulPartitionedCall?"conv2d_105/StatefulPartitionedCall?"conv2d_106/StatefulPartitionedCall?"conv2d_107/StatefulPartitionedCall?!dense_105/StatefulPartitionedCall?!dense_106/StatefulPartitionedCall?!dense_107/StatefulPartitionedCall?"dropout_35/StatefulPartitionedCall?
"conv2d_105/StatefulPartitionedCallStatefulPartitionedCallinput_36conv2d_105_312327conv2d_105_312329*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_105_layer_call_and_return_conditional_losses_3123162$
"conv2d_105/StatefulPartitionedCall?
activation_175/PartitionedCallPartitionedCall+conv2d_105/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_175_layer_call_and_return_conditional_losses_3123372 
activation_175/PartitionedCall?
/batch_normalization_140/StatefulPartitionedCallStatefulPartitionedCall'activation_175/PartitionedCall:output:0batch_normalization_140_312409batch_normalization_140_312411batch_normalization_140_312413batch_normalization_140_312415*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_31236421
/batch_normalization_140/StatefulPartitionedCall?
!max_pooling2d_105/PartitionedCallPartitionedCall8batch_normalization_140/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_105_layer_call_and_return_conditional_losses_3119242#
!max_pooling2d_105/PartitionedCall?
"conv2d_106/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_105/PartitionedCall:output:0conv2d_106_312440conv2d_106_312442*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_106_layer_call_and_return_conditional_losses_3124292$
"conv2d_106/StatefulPartitionedCall?
activation_176/PartitionedCallPartitionedCall+conv2d_106/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_176_layer_call_and_return_conditional_losses_3124502 
activation_176/PartitionedCall?
/batch_normalization_141/StatefulPartitionedCallStatefulPartitionedCall'activation_176/PartitionedCall:output:0batch_normalization_141_312522batch_normalization_141_312524batch_normalization_141_312526batch_normalization_141_312528*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_31247721
/batch_normalization_141/StatefulPartitionedCall?
!max_pooling2d_106/PartitionedCallPartitionedCall8batch_normalization_141/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_106_layer_call_and_return_conditional_losses_3120402#
!max_pooling2d_106/PartitionedCall?
"conv2d_107/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_106/PartitionedCall:output:0conv2d_107_312553conv2d_107_312555*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_107_layer_call_and_return_conditional_losses_3125422$
"conv2d_107/StatefulPartitionedCall?
activation_177/PartitionedCallPartitionedCall+conv2d_107/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_177_layer_call_and_return_conditional_losses_3125632 
activation_177/PartitionedCall?
/batch_normalization_142/StatefulPartitionedCallStatefulPartitionedCall'activation_177/PartitionedCall:output:0batch_normalization_142_312635batch_normalization_142_312637batch_normalization_142_312639batch_normalization_142_312641*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_31259021
/batch_normalization_142/StatefulPartitionedCall?
!max_pooling2d_107/PartitionedCallPartitionedCall8batch_normalization_142/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_3121562#
!max_pooling2d_107/PartitionedCall?
flatten_35/PartitionedCallPartitionedCall*max_pooling2d_107/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_35_layer_call_and_return_conditional_losses_3126512
flatten_35/PartitionedCall?
!dense_105/StatefulPartitionedCallStatefulPartitionedCall#flatten_35/PartitionedCall:output:0dense_105_312680dense_105_312682*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_105_layer_call_and_return_conditional_losses_3126692#
!dense_105/StatefulPartitionedCall?
activation_178/PartitionedCallPartitionedCall*dense_105/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_178_layer_call_and_return_conditional_losses_3126902 
activation_178/PartitionedCall?
/batch_normalization_143/StatefulPartitionedCallStatefulPartitionedCall'activation_178/PartitionedCall:output:0batch_normalization_143_312724batch_normalization_143_312726batch_normalization_143_312728batch_normalization_143_312730*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_31225821
/batch_normalization_143/StatefulPartitionedCall?
"dropout_35/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_143/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *O
fJRH
F__inference_dropout_35_layer_call_and_return_conditional_losses_3127452$
"dropout_35/StatefulPartitionedCall?
!dense_106/StatefulPartitionedCallStatefulPartitionedCall+dropout_35/StatefulPartitionedCall:output:0dense_106_312784dense_106_312786*
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
GPU 2J 8? *N
fIRG
E__inference_dense_106_layer_call_and_return_conditional_losses_3127732#
!dense_106/StatefulPartitionedCall?
activation_179/PartitionedCallPartitionedCall*dense_106/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_179_layer_call_and_return_conditional_losses_3127942 
activation_179/PartitionedCall?
!dense_107/StatefulPartitionedCallStatefulPartitionedCall'activation_179/PartitionedCall:output:0dense_107_312823dense_107_312825*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_107_layer_call_and_return_conditional_losses_3128122#
!dense_107/StatefulPartitionedCall?
IdentityIdentity*dense_107/StatefulPartitionedCall:output:00^batch_normalization_140/StatefulPartitionedCall0^batch_normalization_141/StatefulPartitionedCall0^batch_normalization_142/StatefulPartitionedCall0^batch_normalization_143/StatefulPartitionedCall#^conv2d_105/StatefulPartitionedCall#^conv2d_106/StatefulPartitionedCall#^conv2d_107/StatefulPartitionedCall"^dense_105/StatefulPartitionedCall"^dense_106/StatefulPartitionedCall"^dense_107/StatefulPartitionedCall#^dropout_35/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2b
/batch_normalization_140/StatefulPartitionedCall/batch_normalization_140/StatefulPartitionedCall2b
/batch_normalization_141/StatefulPartitionedCall/batch_normalization_141/StatefulPartitionedCall2b
/batch_normalization_142/StatefulPartitionedCall/batch_normalization_142/StatefulPartitionedCall2b
/batch_normalization_143/StatefulPartitionedCall/batch_normalization_143/StatefulPartitionedCall2H
"conv2d_105/StatefulPartitionedCall"conv2d_105/StatefulPartitionedCall2H
"conv2d_106/StatefulPartitionedCall"conv2d_106/StatefulPartitionedCall2H
"conv2d_107/StatefulPartitionedCall"conv2d_107/StatefulPartitionedCall2F
!dense_105/StatefulPartitionedCall!dense_105/StatefulPartitionedCall2F
!dense_106/StatefulPartitionedCall!dense_106/StatefulPartitionedCall2F
!dense_107/StatefulPartitionedCall!dense_107/StatefulPartitionedCall2H
"dropout_35/StatefulPartitionedCall"dropout_35/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_36
?
?
8__inference_batch_normalization_142_layer_call_fn_314082

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_3125902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_312364

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????  ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
E__inference_dense_105_layer_call_and_return_conditional_losses_314116

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_312382

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????  ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_312023

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?	
?
F__inference_conv2d_107_layer_call_and_return_conditional_losses_313948

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_312590

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_314191

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
K
/__inference_activation_175_layer_call_fn_313653

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
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_175_layer_call_and_return_conditional_losses_3123372
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
+__inference_conv2d_106_layer_call_fn_313800

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_106_layer_call_and_return_conditional_losses_3124292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_35_layer_call_fn_314106

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_35_layer_call_and_return_conditional_losses_3126512
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
F__inference_conv2d_105_layer_call_and_return_conditional_losses_312316

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????  ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
E__inference_dense_105_layer_call_and_return_conditional_losses_312669

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_314069

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_314505
file_prefix&
"assignvariableop_conv2d_105_kernel&
"assignvariableop_1_conv2d_105_bias4
0assignvariableop_2_batch_normalization_140_gamma3
/assignvariableop_3_batch_normalization_140_beta:
6assignvariableop_4_batch_normalization_140_moving_mean>
:assignvariableop_5_batch_normalization_140_moving_variance(
$assignvariableop_6_conv2d_106_kernel&
"assignvariableop_7_conv2d_106_bias4
0assignvariableop_8_batch_normalization_141_gamma3
/assignvariableop_9_batch_normalization_141_beta;
7assignvariableop_10_batch_normalization_141_moving_mean?
;assignvariableop_11_batch_normalization_141_moving_variance)
%assignvariableop_12_conv2d_107_kernel'
#assignvariableop_13_conv2d_107_bias5
1assignvariableop_14_batch_normalization_142_gamma4
0assignvariableop_15_batch_normalization_142_beta;
7assignvariableop_16_batch_normalization_142_moving_mean?
;assignvariableop_17_batch_normalization_142_moving_variance(
$assignvariableop_18_dense_105_kernel&
"assignvariableop_19_dense_105_bias5
1assignvariableop_20_batch_normalization_143_gamma4
0assignvariableop_21_batch_normalization_143_beta;
7assignvariableop_22_batch_normalization_143_moving_mean?
;assignvariableop_23_batch_normalization_143_moving_variance(
$assignvariableop_24_dense_106_kernel&
"assignvariableop_25_dense_106_bias(
$assignvariableop_26_dense_107_kernel&
"assignvariableop_27_dense_107_bias
assignvariableop_28_total
assignvariableop_29_count
identity_31??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_105_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_105_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_140_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_140_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_140_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_140_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_106_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_106_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_141_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_141_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_141_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_141_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_107_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_107_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_142_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_142_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_142_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_142_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp$assignvariableop_18_dense_105_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_dense_105_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_143_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_143_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_143_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_143_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp$assignvariableop_24_dense_106_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp"assignvariableop_25_dense_106_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp$assignvariableop_26_dense_107_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp"assignvariableop_27_dense_107_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpassignvariableop_29_countIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_299
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_30?
Identity_31IdentityIdentity_30:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_31"#
identity_31Identity_31:output:0*?
_input_shapes|
z: ::::::::::::::::::::::::::::::2$
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
AssignVariableOp_3AssignVariableOp_32(
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
?
?
8__inference_batch_normalization_142_layer_call_fn_314031

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_3121392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?	
?
E__inference_dense_107_layer_call_and_return_conditional_losses_314283

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?D
?
__inference__traced_save_314405
file_prefix0
,savev2_conv2d_105_kernel_read_readvariableop.
*savev2_conv2d_105_bias_read_readvariableop<
8savev2_batch_normalization_140_gamma_read_readvariableop;
7savev2_batch_normalization_140_beta_read_readvariableopB
>savev2_batch_normalization_140_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_140_moving_variance_read_readvariableop0
,savev2_conv2d_106_kernel_read_readvariableop.
*savev2_conv2d_106_bias_read_readvariableop<
8savev2_batch_normalization_141_gamma_read_readvariableop;
7savev2_batch_normalization_141_beta_read_readvariableopB
>savev2_batch_normalization_141_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_141_moving_variance_read_readvariableop0
,savev2_conv2d_107_kernel_read_readvariableop.
*savev2_conv2d_107_bias_read_readvariableop<
8savev2_batch_normalization_142_gamma_read_readvariableop;
7savev2_batch_normalization_142_beta_read_readvariableopB
>savev2_batch_normalization_142_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_142_moving_variance_read_readvariableop/
+savev2_dense_105_kernel_read_readvariableop-
)savev2_dense_105_bias_read_readvariableop<
8savev2_batch_normalization_143_gamma_read_readvariableop;
7savev2_batch_normalization_143_beta_read_readvariableopB
>savev2_batch_normalization_143_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_143_moving_variance_read_readvariableop/
+savev2_dense_106_kernel_read_readvariableop-
)savev2_dense_106_bias_read_readvariableop/
+savev2_dense_107_kernel_read_readvariableop-
)savev2_dense_107_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_105_kernel_read_readvariableop*savev2_conv2d_105_bias_read_readvariableop8savev2_batch_normalization_140_gamma_read_readvariableop7savev2_batch_normalization_140_beta_read_readvariableop>savev2_batch_normalization_140_moving_mean_read_readvariableopBsavev2_batch_normalization_140_moving_variance_read_readvariableop,savev2_conv2d_106_kernel_read_readvariableop*savev2_conv2d_106_bias_read_readvariableop8savev2_batch_normalization_141_gamma_read_readvariableop7savev2_batch_normalization_141_beta_read_readvariableop>savev2_batch_normalization_141_moving_mean_read_readvariableopBsavev2_batch_normalization_141_moving_variance_read_readvariableop,savev2_conv2d_107_kernel_read_readvariableop*savev2_conv2d_107_bias_read_readvariableop8savev2_batch_normalization_142_gamma_read_readvariableop7savev2_batch_normalization_142_beta_read_readvariableop>savev2_batch_normalization_142_moving_mean_read_readvariableopBsavev2_batch_normalization_142_moving_variance_read_readvariableop+savev2_dense_105_kernel_read_readvariableop)savev2_dense_105_bias_read_readvariableop8savev2_batch_normalization_143_gamma_read_readvariableop7savev2_batch_normalization_143_beta_read_readvariableop>savev2_batch_normalization_143_moving_mean_read_readvariableopBsavev2_batch_normalization_143_moving_variance_read_readvariableop+savev2_dense_106_kernel_read_readvariableop)savev2_dense_106_bias_read_readvariableop+savev2_dense_107_kernel_read_readvariableop)savev2_dense_107_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *-
dtypes#
!22
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

identity_1Identity_1:output:0*?
_input_shapes?
?: ::::::: : : : : : : @:@:@:@:@:@:	?:::::::::: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:%!

_output_shapes
:	?: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
D__inference_model_35_layer_call_and_return_conditional_losses_313393

inputs-
)conv2d_105_conv2d_readvariableop_resource.
*conv2d_105_biasadd_readvariableop_resource3
/batch_normalization_140_readvariableop_resource5
1batch_normalization_140_readvariableop_1_resourceD
@batch_normalization_140_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_140_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_106_conv2d_readvariableop_resource.
*conv2d_106_biasadd_readvariableop_resource3
/batch_normalization_141_readvariableop_resource5
1batch_normalization_141_readvariableop_1_resourceD
@batch_normalization_141_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_141_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_107_conv2d_readvariableop_resource.
*conv2d_107_biasadd_readvariableop_resource3
/batch_normalization_142_readvariableop_resource5
1batch_normalization_142_readvariableop_1_resourceD
@batch_normalization_142_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_142_fusedbatchnormv3_readvariableop_1_resource,
(dense_105_matmul_readvariableop_resource-
)dense_105_biasadd_readvariableop_resource2
.batch_normalization_143_assignmovingavg_3133474
0batch_normalization_143_assignmovingavg_1_313353A
=batch_normalization_143_batchnorm_mul_readvariableop_resource=
9batch_normalization_143_batchnorm_readvariableop_resource,
(dense_106_matmul_readvariableop_resource-
)dense_106_biasadd_readvariableop_resource,
(dense_107_matmul_readvariableop_resource-
)dense_107_biasadd_readvariableop_resource
identity??&batch_normalization_140/AssignNewValue?(batch_normalization_140/AssignNewValue_1?7batch_normalization_140/FusedBatchNormV3/ReadVariableOp?9batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_140/ReadVariableOp?(batch_normalization_140/ReadVariableOp_1?&batch_normalization_141/AssignNewValue?(batch_normalization_141/AssignNewValue_1?7batch_normalization_141/FusedBatchNormV3/ReadVariableOp?9batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_141/ReadVariableOp?(batch_normalization_141/ReadVariableOp_1?&batch_normalization_142/AssignNewValue?(batch_normalization_142/AssignNewValue_1?7batch_normalization_142/FusedBatchNormV3/ReadVariableOp?9batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_142/ReadVariableOp?(batch_normalization_142/ReadVariableOp_1?;batch_normalization_143/AssignMovingAvg/AssignSubVariableOp?6batch_normalization_143/AssignMovingAvg/ReadVariableOp?=batch_normalization_143/AssignMovingAvg_1/AssignSubVariableOp?8batch_normalization_143/AssignMovingAvg_1/ReadVariableOp?0batch_normalization_143/batchnorm/ReadVariableOp?4batch_normalization_143/batchnorm/mul/ReadVariableOp?!conv2d_105/BiasAdd/ReadVariableOp? conv2d_105/Conv2D/ReadVariableOp?!conv2d_106/BiasAdd/ReadVariableOp? conv2d_106/Conv2D/ReadVariableOp?!conv2d_107/BiasAdd/ReadVariableOp? conv2d_107/Conv2D/ReadVariableOp? dense_105/BiasAdd/ReadVariableOp?dense_105/MatMul/ReadVariableOp? dense_106/BiasAdd/ReadVariableOp?dense_106/MatMul/ReadVariableOp? dense_107/BiasAdd/ReadVariableOp?dense_107/MatMul/ReadVariableOp?
 conv2d_105/Conv2D/ReadVariableOpReadVariableOp)conv2d_105_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_105/Conv2D/ReadVariableOp?
conv2d_105/Conv2DConv2Dinputs(conv2d_105/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2
conv2d_105/Conv2D?
!conv2d_105/BiasAdd/ReadVariableOpReadVariableOp*conv2d_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_105/BiasAdd/ReadVariableOp?
conv2d_105/BiasAddBiasAddconv2d_105/Conv2D:output:0)conv2d_105/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  2
conv2d_105/BiasAdd?
activation_175/ReluReluconv2d_105/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  2
activation_175/Relu?
&batch_normalization_140/ReadVariableOpReadVariableOp/batch_normalization_140_readvariableop_resource*
_output_shapes
:*
dtype02(
&batch_normalization_140/ReadVariableOp?
(batch_normalization_140/ReadVariableOp_1ReadVariableOp1batch_normalization_140_readvariableop_1_resource*
_output_shapes
:*
dtype02*
(batch_normalization_140/ReadVariableOp_1?
7batch_normalization_140/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_140_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype029
7batch_normalization_140/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_140_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02;
9batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_140/FusedBatchNormV3FusedBatchNormV3!activation_175/Relu:activations:0.batch_normalization_140/ReadVariableOp:value:00batch_normalization_140/ReadVariableOp_1:value:0?batch_normalization_140/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_140/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_140/FusedBatchNormV3?
&batch_normalization_140/AssignNewValueAssignVariableOp@batch_normalization_140_fusedbatchnormv3_readvariableop_resource5batch_normalization_140/FusedBatchNormV3:batch_mean:08^batch_normalization_140/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*S
_classI
GEloc:@batch_normalization_140/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_140/AssignNewValue?
(batch_normalization_140/AssignNewValue_1AssignVariableOpBbatch_normalization_140_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_140/FusedBatchNormV3:batch_variance:0:^batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*U
_classK
IGloc:@batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_140/AssignNewValue_1?
max_pooling2d_105/MaxPoolMaxPool,batch_normalization_140/FusedBatchNormV3:y:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_105/MaxPool?
 conv2d_106/Conv2D/ReadVariableOpReadVariableOp)conv2d_106_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_106/Conv2D/ReadVariableOp?
conv2d_106/Conv2DConv2D"max_pooling2d_105/MaxPool:output:0(conv2d_106/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_106/Conv2D?
!conv2d_106/BiasAdd/ReadVariableOpReadVariableOp*conv2d_106_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_106/BiasAdd/ReadVariableOp?
conv2d_106/BiasAddBiasAddconv2d_106/Conv2D:output:0)conv2d_106/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_106/BiasAdd?
activation_176/ReluReluconv2d_106/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
activation_176/Relu?
&batch_normalization_141/ReadVariableOpReadVariableOp/batch_normalization_141_readvariableop_resource*
_output_shapes
: *
dtype02(
&batch_normalization_141/ReadVariableOp?
(batch_normalization_141/ReadVariableOp_1ReadVariableOp1batch_normalization_141_readvariableop_1_resource*
_output_shapes
: *
dtype02*
(batch_normalization_141/ReadVariableOp_1?
7batch_normalization_141/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_141_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype029
7batch_normalization_141/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_141_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02;
9batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_141/FusedBatchNormV3FusedBatchNormV3!activation_176/Relu:activations:0.batch_normalization_141/ReadVariableOp:value:00batch_normalization_141/ReadVariableOp_1:value:0?batch_normalization_141/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_141/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_141/FusedBatchNormV3?
&batch_normalization_141/AssignNewValueAssignVariableOp@batch_normalization_141_fusedbatchnormv3_readvariableop_resource5batch_normalization_141/FusedBatchNormV3:batch_mean:08^batch_normalization_141/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*S
_classI
GEloc:@batch_normalization_141/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_141/AssignNewValue?
(batch_normalization_141/AssignNewValue_1AssignVariableOpBbatch_normalization_141_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_141/FusedBatchNormV3:batch_variance:0:^batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*U
_classK
IGloc:@batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_141/AssignNewValue_1?
max_pooling2d_106/MaxPoolMaxPool,batch_normalization_141/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_106/MaxPool?
 conv2d_107/Conv2D/ReadVariableOpReadVariableOp)conv2d_107_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_107/Conv2D/ReadVariableOp?
conv2d_107/Conv2DConv2D"max_pooling2d_106/MaxPool:output:0(conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_107/Conv2D?
!conv2d_107/BiasAdd/ReadVariableOpReadVariableOp*conv2d_107_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_107/BiasAdd/ReadVariableOp?
conv2d_107/BiasAddBiasAddconv2d_107/Conv2D:output:0)conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_107/BiasAdd?
activation_177/ReluReluconv2d_107/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_177/Relu?
&batch_normalization_142/ReadVariableOpReadVariableOp/batch_normalization_142_readvariableop_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_142/ReadVariableOp?
(batch_normalization_142/ReadVariableOp_1ReadVariableOp1batch_normalization_142_readvariableop_1_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_142/ReadVariableOp_1?
7batch_normalization_142/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_142_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype029
7batch_normalization_142/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_142_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_142/FusedBatchNormV3FusedBatchNormV3!activation_177/Relu:activations:0.batch_normalization_142/ReadVariableOp:value:00batch_normalization_142/ReadVariableOp_1:value:0?batch_normalization_142/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_142/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_142/FusedBatchNormV3?
&batch_normalization_142/AssignNewValueAssignVariableOp@batch_normalization_142_fusedbatchnormv3_readvariableop_resource5batch_normalization_142/FusedBatchNormV3:batch_mean:08^batch_normalization_142/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*S
_classI
GEloc:@batch_normalization_142/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_142/AssignNewValue?
(batch_normalization_142/AssignNewValue_1AssignVariableOpBbatch_normalization_142_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_142/FusedBatchNormV3:batch_variance:0:^batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*U
_classK
IGloc:@batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_142/AssignNewValue_1?
max_pooling2d_107/MaxPoolMaxPool,batch_normalization_142/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_107/MaxPoolu
flatten_35/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_35/Const?
flatten_35/ReshapeReshape"max_pooling2d_107/MaxPool:output:0flatten_35/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_35/Reshape?
dense_105/MatMul/ReadVariableOpReadVariableOp(dense_105_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
dense_105/MatMul/ReadVariableOp?
dense_105/MatMulMatMulflatten_35/Reshape:output:0'dense_105/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_105/MatMul?
 dense_105/BiasAdd/ReadVariableOpReadVariableOp)dense_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_105/BiasAdd/ReadVariableOp?
dense_105/BiasAddBiasAdddense_105/MatMul:product:0(dense_105/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_105/BiasAdd?
activation_178/ReluReludense_105/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_178/Relu?
6batch_normalization_143/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 28
6batch_normalization_143/moments/mean/reduction_indices?
$batch_normalization_143/moments/meanMean!activation_178/Relu:activations:0?batch_normalization_143/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2&
$batch_normalization_143/moments/mean?
,batch_normalization_143/moments/StopGradientStopGradient-batch_normalization_143/moments/mean:output:0*
T0*
_output_shapes

:2.
,batch_normalization_143/moments/StopGradient?
1batch_normalization_143/moments/SquaredDifferenceSquaredDifference!activation_178/Relu:activations:05batch_normalization_143/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????23
1batch_normalization_143/moments/SquaredDifference?
:batch_normalization_143/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2<
:batch_normalization_143/moments/variance/reduction_indices?
(batch_normalization_143/moments/varianceMean5batch_normalization_143/moments/SquaredDifference:z:0Cbatch_normalization_143/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2*
(batch_normalization_143/moments/variance?
'batch_normalization_143/moments/SqueezeSqueeze-batch_normalization_143/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2)
'batch_normalization_143/moments/Squeeze?
)batch_normalization_143/moments/Squeeze_1Squeeze1batch_normalization_143/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2+
)batch_normalization_143/moments/Squeeze_1?
-batch_normalization_143/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_143/AssignMovingAvg/313347*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_143/AssignMovingAvg/decay?
6batch_normalization_143/AssignMovingAvg/ReadVariableOpReadVariableOp.batch_normalization_143_assignmovingavg_313347*
_output_shapes
:*
dtype028
6batch_normalization_143/AssignMovingAvg/ReadVariableOp?
+batch_normalization_143/AssignMovingAvg/subSub>batch_normalization_143/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_143/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_143/AssignMovingAvg/313347*
_output_shapes
:2-
+batch_normalization_143/AssignMovingAvg/sub?
+batch_normalization_143/AssignMovingAvg/mulMul/batch_normalization_143/AssignMovingAvg/sub:z:06batch_normalization_143/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_143/AssignMovingAvg/313347*
_output_shapes
:2-
+batch_normalization_143/AssignMovingAvg/mul?
;batch_normalization_143/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp.batch_normalization_143_assignmovingavg_313347/batch_normalization_143/AssignMovingAvg/mul:z:07^batch_normalization_143/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_143/AssignMovingAvg/313347*
_output_shapes
 *
dtype02=
;batch_normalization_143/AssignMovingAvg/AssignSubVariableOp?
/batch_normalization_143/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_143/AssignMovingAvg_1/313353*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/batch_normalization_143/AssignMovingAvg_1/decay?
8batch_normalization_143/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch_normalization_143_assignmovingavg_1_313353*
_output_shapes
:*
dtype02:
8batch_normalization_143/AssignMovingAvg_1/ReadVariableOp?
-batch_normalization_143/AssignMovingAvg_1/subSub@batch_normalization_143/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_143/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_143/AssignMovingAvg_1/313353*
_output_shapes
:2/
-batch_normalization_143/AssignMovingAvg_1/sub?
-batch_normalization_143/AssignMovingAvg_1/mulMul1batch_normalization_143/AssignMovingAvg_1/sub:z:08batch_normalization_143/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_143/AssignMovingAvg_1/313353*
_output_shapes
:2/
-batch_normalization_143/AssignMovingAvg_1/mul?
=batch_normalization_143/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp0batch_normalization_143_assignmovingavg_1_3133531batch_normalization_143/AssignMovingAvg_1/mul:z:09^batch_normalization_143/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_143/AssignMovingAvg_1/313353*
_output_shapes
 *
dtype02?
=batch_normalization_143/AssignMovingAvg_1/AssignSubVariableOp?
'batch_normalization_143/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2)
'batch_normalization_143/batchnorm/add/y?
%batch_normalization_143/batchnorm/addAddV22batch_normalization_143/moments/Squeeze_1:output:00batch_normalization_143/batchnorm/add/y:output:0*
T0*
_output_shapes
:2'
%batch_normalization_143/batchnorm/add?
'batch_normalization_143/batchnorm/RsqrtRsqrt)batch_normalization_143/batchnorm/add:z:0*
T0*
_output_shapes
:2)
'batch_normalization_143/batchnorm/Rsqrt?
4batch_normalization_143/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_143_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization_143/batchnorm/mul/ReadVariableOp?
%batch_normalization_143/batchnorm/mulMul+batch_normalization_143/batchnorm/Rsqrt:y:0<batch_normalization_143/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2'
%batch_normalization_143/batchnorm/mul?
'batch_normalization_143/batchnorm/mul_1Mul!activation_178/Relu:activations:0)batch_normalization_143/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2)
'batch_normalization_143/batchnorm/mul_1?
'batch_normalization_143/batchnorm/mul_2Mul0batch_normalization_143/moments/Squeeze:output:0)batch_normalization_143/batchnorm/mul:z:0*
T0*
_output_shapes
:2)
'batch_normalization_143/batchnorm/mul_2?
0batch_normalization_143/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_143_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype022
0batch_normalization_143/batchnorm/ReadVariableOp?
%batch_normalization_143/batchnorm/subSub8batch_normalization_143/batchnorm/ReadVariableOp:value:0+batch_normalization_143/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2'
%batch_normalization_143/batchnorm/sub?
'batch_normalization_143/batchnorm/add_1AddV2+batch_normalization_143/batchnorm/mul_1:z:0)batch_normalization_143/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2)
'batch_normalization_143/batchnorm/add_1y
dropout_35/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_35/dropout/Const?
dropout_35/dropout/MulMul+batch_normalization_143/batchnorm/add_1:z:0!dropout_35/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_35/dropout/Mul?
dropout_35/dropout/ShapeShape+batch_normalization_143/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_35/dropout/Shape?
/dropout_35/dropout/random_uniform/RandomUniformRandomUniform!dropout_35/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype021
/dropout_35/dropout/random_uniform/RandomUniform?
!dropout_35/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_35/dropout/GreaterEqual/y?
dropout_35/dropout/GreaterEqualGreaterEqual8dropout_35/dropout/random_uniform/RandomUniform:output:0*dropout_35/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2!
dropout_35/dropout/GreaterEqual?
dropout_35/dropout/CastCast#dropout_35/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_35/dropout/Cast?
dropout_35/dropout/Mul_1Muldropout_35/dropout/Mul:z:0dropout_35/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_35/dropout/Mul_1?
dense_106/MatMul/ReadVariableOpReadVariableOp(dense_106_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_106/MatMul/ReadVariableOp?
dense_106/MatMulMatMuldropout_35/dropout/Mul_1:z:0'dense_106/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_106/MatMul?
 dense_106/BiasAdd/ReadVariableOpReadVariableOp)dense_106_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_106/BiasAdd/ReadVariableOp?
dense_106/BiasAddBiasAdddense_106/MatMul:product:0(dense_106/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_106/BiasAdd?
activation_179/ReluReludense_106/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_179/Relu?
dense_107/MatMul/ReadVariableOpReadVariableOp(dense_107_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_107/MatMul/ReadVariableOp?
dense_107/MatMulMatMul!activation_179/Relu:activations:0'dense_107/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_107/MatMul?
 dense_107/BiasAdd/ReadVariableOpReadVariableOp)dense_107_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_107/BiasAdd/ReadVariableOp?
dense_107/BiasAddBiasAdddense_107/MatMul:product:0(dense_107/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_107/BiasAdd?
IdentityIdentitydense_107/BiasAdd:output:0'^batch_normalization_140/AssignNewValue)^batch_normalization_140/AssignNewValue_18^batch_normalization_140/FusedBatchNormV3/ReadVariableOp:^batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_140/ReadVariableOp)^batch_normalization_140/ReadVariableOp_1'^batch_normalization_141/AssignNewValue)^batch_normalization_141/AssignNewValue_18^batch_normalization_141/FusedBatchNormV3/ReadVariableOp:^batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_141/ReadVariableOp)^batch_normalization_141/ReadVariableOp_1'^batch_normalization_142/AssignNewValue)^batch_normalization_142/AssignNewValue_18^batch_normalization_142/FusedBatchNormV3/ReadVariableOp:^batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_142/ReadVariableOp)^batch_normalization_142/ReadVariableOp_1<^batch_normalization_143/AssignMovingAvg/AssignSubVariableOp7^batch_normalization_143/AssignMovingAvg/ReadVariableOp>^batch_normalization_143/AssignMovingAvg_1/AssignSubVariableOp9^batch_normalization_143/AssignMovingAvg_1/ReadVariableOp1^batch_normalization_143/batchnorm/ReadVariableOp5^batch_normalization_143/batchnorm/mul/ReadVariableOp"^conv2d_105/BiasAdd/ReadVariableOp!^conv2d_105/Conv2D/ReadVariableOp"^conv2d_106/BiasAdd/ReadVariableOp!^conv2d_106/Conv2D/ReadVariableOp"^conv2d_107/BiasAdd/ReadVariableOp!^conv2d_107/Conv2D/ReadVariableOp!^dense_105/BiasAdd/ReadVariableOp ^dense_105/MatMul/ReadVariableOp!^dense_106/BiasAdd/ReadVariableOp ^dense_106/MatMul/ReadVariableOp!^dense_107/BiasAdd/ReadVariableOp ^dense_107/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2P
&batch_normalization_140/AssignNewValue&batch_normalization_140/AssignNewValue2T
(batch_normalization_140/AssignNewValue_1(batch_normalization_140/AssignNewValue_12r
7batch_normalization_140/FusedBatchNormV3/ReadVariableOp7batch_normalization_140/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_140/FusedBatchNormV3/ReadVariableOp_19batch_normalization_140/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_140/ReadVariableOp&batch_normalization_140/ReadVariableOp2T
(batch_normalization_140/ReadVariableOp_1(batch_normalization_140/ReadVariableOp_12P
&batch_normalization_141/AssignNewValue&batch_normalization_141/AssignNewValue2T
(batch_normalization_141/AssignNewValue_1(batch_normalization_141/AssignNewValue_12r
7batch_normalization_141/FusedBatchNormV3/ReadVariableOp7batch_normalization_141/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_141/FusedBatchNormV3/ReadVariableOp_19batch_normalization_141/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_141/ReadVariableOp&batch_normalization_141/ReadVariableOp2T
(batch_normalization_141/ReadVariableOp_1(batch_normalization_141/ReadVariableOp_12P
&batch_normalization_142/AssignNewValue&batch_normalization_142/AssignNewValue2T
(batch_normalization_142/AssignNewValue_1(batch_normalization_142/AssignNewValue_12r
7batch_normalization_142/FusedBatchNormV3/ReadVariableOp7batch_normalization_142/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_142/FusedBatchNormV3/ReadVariableOp_19batch_normalization_142/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_142/ReadVariableOp&batch_normalization_142/ReadVariableOp2T
(batch_normalization_142/ReadVariableOp_1(batch_normalization_142/ReadVariableOp_12z
;batch_normalization_143/AssignMovingAvg/AssignSubVariableOp;batch_normalization_143/AssignMovingAvg/AssignSubVariableOp2p
6batch_normalization_143/AssignMovingAvg/ReadVariableOp6batch_normalization_143/AssignMovingAvg/ReadVariableOp2~
=batch_normalization_143/AssignMovingAvg_1/AssignSubVariableOp=batch_normalization_143/AssignMovingAvg_1/AssignSubVariableOp2t
8batch_normalization_143/AssignMovingAvg_1/ReadVariableOp8batch_normalization_143/AssignMovingAvg_1/ReadVariableOp2d
0batch_normalization_143/batchnorm/ReadVariableOp0batch_normalization_143/batchnorm/ReadVariableOp2l
4batch_normalization_143/batchnorm/mul/ReadVariableOp4batch_normalization_143/batchnorm/mul/ReadVariableOp2F
!conv2d_105/BiasAdd/ReadVariableOp!conv2d_105/BiasAdd/ReadVariableOp2D
 conv2d_105/Conv2D/ReadVariableOp conv2d_105/Conv2D/ReadVariableOp2F
!conv2d_106/BiasAdd/ReadVariableOp!conv2d_106/BiasAdd/ReadVariableOp2D
 conv2d_106/Conv2D/ReadVariableOp conv2d_106/Conv2D/ReadVariableOp2F
!conv2d_107/BiasAdd/ReadVariableOp!conv2d_107/BiasAdd/ReadVariableOp2D
 conv2d_107/Conv2D/ReadVariableOp conv2d_107/Conv2D/ReadVariableOp2D
 dense_105/BiasAdd/ReadVariableOp dense_105/BiasAdd/ReadVariableOp2B
dense_105/MatMul/ReadVariableOpdense_105/MatMul/ReadVariableOp2D
 dense_106/BiasAdd/ReadVariableOp dense_106/BiasAdd/ReadVariableOp2B
dense_106/MatMul/ReadVariableOpdense_106/MatMul/ReadVariableOp2D
 dense_107/BiasAdd/ReadVariableOp dense_107/BiasAdd/ReadVariableOp2B
dense_107/MatMul/ReadVariableOpdense_107/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
d
F__inference_dropout_35_layer_call_and_return_conditional_losses_312750

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

*__inference_dense_107_layer_call_fn_314292

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_107_layer_call_and_return_conditional_losses_3128122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_model_35_layer_call_fn_313563

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_35_layer_call_and_return_conditional_losses_3129922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_313987

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
d
+__inference_dropout_35_layer_call_fn_314239

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
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_35_layer_call_and_return_conditional_losses_3127452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_312258

inputs
assignmovingavg_312233
assignmovingavg_1_312239)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/312233*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_312233*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/312233*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/312233*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_312233AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/312233*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/312239*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_312239*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/312239*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/312239*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_312239AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/312239*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
f
J__inference_activation_176_layer_call_and_return_conditional_losses_313805

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:????????? 2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
+__inference_conv2d_107_layer_call_fn_313957

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_107_layer_call_and_return_conditional_losses_3125422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

*__inference_dense_106_layer_call_fn_314263

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
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
GPU 2J 8? *N
fIRG
E__inference_dense_106_layer_call_and_return_conditional_losses_3127732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
K
/__inference_activation_177_layer_call_fn_313967

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
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_177_layer_call_and_return_conditional_losses_3125632
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_313755

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????  ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_312608

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_105_layer_call_fn_311930

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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_105_layer_call_and_return_conditional_losses_3119242
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
?
?
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_312291

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
ô
?
!__inference__wrapped_model_311814
input_366
2model_35_conv2d_105_conv2d_readvariableop_resource7
3model_35_conv2d_105_biasadd_readvariableop_resource<
8model_35_batch_normalization_140_readvariableop_resource>
:model_35_batch_normalization_140_readvariableop_1_resourceM
Imodel_35_batch_normalization_140_fusedbatchnormv3_readvariableop_resourceO
Kmodel_35_batch_normalization_140_fusedbatchnormv3_readvariableop_1_resource6
2model_35_conv2d_106_conv2d_readvariableop_resource7
3model_35_conv2d_106_biasadd_readvariableop_resource<
8model_35_batch_normalization_141_readvariableop_resource>
:model_35_batch_normalization_141_readvariableop_1_resourceM
Imodel_35_batch_normalization_141_fusedbatchnormv3_readvariableop_resourceO
Kmodel_35_batch_normalization_141_fusedbatchnormv3_readvariableop_1_resource6
2model_35_conv2d_107_conv2d_readvariableop_resource7
3model_35_conv2d_107_biasadd_readvariableop_resource<
8model_35_batch_normalization_142_readvariableop_resource>
:model_35_batch_normalization_142_readvariableop_1_resourceM
Imodel_35_batch_normalization_142_fusedbatchnormv3_readvariableop_resourceO
Kmodel_35_batch_normalization_142_fusedbatchnormv3_readvariableop_1_resource5
1model_35_dense_105_matmul_readvariableop_resource6
2model_35_dense_105_biasadd_readvariableop_resourceF
Bmodel_35_batch_normalization_143_batchnorm_readvariableop_resourceJ
Fmodel_35_batch_normalization_143_batchnorm_mul_readvariableop_resourceH
Dmodel_35_batch_normalization_143_batchnorm_readvariableop_1_resourceH
Dmodel_35_batch_normalization_143_batchnorm_readvariableop_2_resource5
1model_35_dense_106_matmul_readvariableop_resource6
2model_35_dense_106_biasadd_readvariableop_resource5
1model_35_dense_107_matmul_readvariableop_resource6
2model_35_dense_107_biasadd_readvariableop_resource
identity??@model_35/batch_normalization_140/FusedBatchNormV3/ReadVariableOp?Bmodel_35/batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1?/model_35/batch_normalization_140/ReadVariableOp?1model_35/batch_normalization_140/ReadVariableOp_1?@model_35/batch_normalization_141/FusedBatchNormV3/ReadVariableOp?Bmodel_35/batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1?/model_35/batch_normalization_141/ReadVariableOp?1model_35/batch_normalization_141/ReadVariableOp_1?@model_35/batch_normalization_142/FusedBatchNormV3/ReadVariableOp?Bmodel_35/batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1?/model_35/batch_normalization_142/ReadVariableOp?1model_35/batch_normalization_142/ReadVariableOp_1?9model_35/batch_normalization_143/batchnorm/ReadVariableOp?;model_35/batch_normalization_143/batchnorm/ReadVariableOp_1?;model_35/batch_normalization_143/batchnorm/ReadVariableOp_2?=model_35/batch_normalization_143/batchnorm/mul/ReadVariableOp?*model_35/conv2d_105/BiasAdd/ReadVariableOp?)model_35/conv2d_105/Conv2D/ReadVariableOp?*model_35/conv2d_106/BiasAdd/ReadVariableOp?)model_35/conv2d_106/Conv2D/ReadVariableOp?*model_35/conv2d_107/BiasAdd/ReadVariableOp?)model_35/conv2d_107/Conv2D/ReadVariableOp?)model_35/dense_105/BiasAdd/ReadVariableOp?(model_35/dense_105/MatMul/ReadVariableOp?)model_35/dense_106/BiasAdd/ReadVariableOp?(model_35/dense_106/MatMul/ReadVariableOp?)model_35/dense_107/BiasAdd/ReadVariableOp?(model_35/dense_107/MatMul/ReadVariableOp?
)model_35/conv2d_105/Conv2D/ReadVariableOpReadVariableOp2model_35_conv2d_105_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02+
)model_35/conv2d_105/Conv2D/ReadVariableOp?
model_35/conv2d_105/Conv2DConv2Dinput_361model_35/conv2d_105/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2
model_35/conv2d_105/Conv2D?
*model_35/conv2d_105/BiasAdd/ReadVariableOpReadVariableOp3model_35_conv2d_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_35/conv2d_105/BiasAdd/ReadVariableOp?
model_35/conv2d_105/BiasAddBiasAdd#model_35/conv2d_105/Conv2D:output:02model_35/conv2d_105/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  2
model_35/conv2d_105/BiasAdd?
model_35/activation_175/ReluRelu$model_35/conv2d_105/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  2
model_35/activation_175/Relu?
/model_35/batch_normalization_140/ReadVariableOpReadVariableOp8model_35_batch_normalization_140_readvariableop_resource*
_output_shapes
:*
dtype021
/model_35/batch_normalization_140/ReadVariableOp?
1model_35/batch_normalization_140/ReadVariableOp_1ReadVariableOp:model_35_batch_normalization_140_readvariableop_1_resource*
_output_shapes
:*
dtype023
1model_35/batch_normalization_140/ReadVariableOp_1?
@model_35/batch_normalization_140/FusedBatchNormV3/ReadVariableOpReadVariableOpImodel_35_batch_normalization_140_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02B
@model_35/batch_normalization_140/FusedBatchNormV3/ReadVariableOp?
Bmodel_35/batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKmodel_35_batch_normalization_140_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02D
Bmodel_35/batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1?
1model_35/batch_normalization_140/FusedBatchNormV3FusedBatchNormV3*model_35/activation_175/Relu:activations:07model_35/batch_normalization_140/ReadVariableOp:value:09model_35/batch_normalization_140/ReadVariableOp_1:value:0Hmodel_35/batch_normalization_140/FusedBatchNormV3/ReadVariableOp:value:0Jmodel_35/batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
is_training( 23
1model_35/batch_normalization_140/FusedBatchNormV3?
"model_35/max_pooling2d_105/MaxPoolMaxPool5model_35/batch_normalization_140/FusedBatchNormV3:y:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2$
"model_35/max_pooling2d_105/MaxPool?
)model_35/conv2d_106/Conv2D/ReadVariableOpReadVariableOp2model_35_conv2d_106_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02+
)model_35/conv2d_106/Conv2D/ReadVariableOp?
model_35/conv2d_106/Conv2DConv2D+model_35/max_pooling2d_105/MaxPool:output:01model_35/conv2d_106/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
model_35/conv2d_106/Conv2D?
*model_35/conv2d_106/BiasAdd/ReadVariableOpReadVariableOp3model_35_conv2d_106_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_35/conv2d_106/BiasAdd/ReadVariableOp?
model_35/conv2d_106/BiasAddBiasAdd#model_35/conv2d_106/Conv2D:output:02model_35/conv2d_106/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
model_35/conv2d_106/BiasAdd?
model_35/activation_176/ReluRelu$model_35/conv2d_106/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
model_35/activation_176/Relu?
/model_35/batch_normalization_141/ReadVariableOpReadVariableOp8model_35_batch_normalization_141_readvariableop_resource*
_output_shapes
: *
dtype021
/model_35/batch_normalization_141/ReadVariableOp?
1model_35/batch_normalization_141/ReadVariableOp_1ReadVariableOp:model_35_batch_normalization_141_readvariableop_1_resource*
_output_shapes
: *
dtype023
1model_35/batch_normalization_141/ReadVariableOp_1?
@model_35/batch_normalization_141/FusedBatchNormV3/ReadVariableOpReadVariableOpImodel_35_batch_normalization_141_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02B
@model_35/batch_normalization_141/FusedBatchNormV3/ReadVariableOp?
Bmodel_35/batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKmodel_35_batch_normalization_141_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02D
Bmodel_35/batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1?
1model_35/batch_normalization_141/FusedBatchNormV3FusedBatchNormV3*model_35/activation_176/Relu:activations:07model_35/batch_normalization_141/ReadVariableOp:value:09model_35/batch_normalization_141/ReadVariableOp_1:value:0Hmodel_35/batch_normalization_141/FusedBatchNormV3/ReadVariableOp:value:0Jmodel_35/batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 23
1model_35/batch_normalization_141/FusedBatchNormV3?
"model_35/max_pooling2d_106/MaxPoolMaxPool5model_35/batch_normalization_141/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2$
"model_35/max_pooling2d_106/MaxPool?
)model_35/conv2d_107/Conv2D/ReadVariableOpReadVariableOp2model_35_conv2d_107_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02+
)model_35/conv2d_107/Conv2D/ReadVariableOp?
model_35/conv2d_107/Conv2DConv2D+model_35/max_pooling2d_106/MaxPool:output:01model_35/conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
model_35/conv2d_107/Conv2D?
*model_35/conv2d_107/BiasAdd/ReadVariableOpReadVariableOp3model_35_conv2d_107_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model_35/conv2d_107/BiasAdd/ReadVariableOp?
model_35/conv2d_107/BiasAddBiasAdd#model_35/conv2d_107/Conv2D:output:02model_35/conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
model_35/conv2d_107/BiasAdd?
model_35/activation_177/ReluRelu$model_35/conv2d_107/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
model_35/activation_177/Relu?
/model_35/batch_normalization_142/ReadVariableOpReadVariableOp8model_35_batch_normalization_142_readvariableop_resource*
_output_shapes
:@*
dtype021
/model_35/batch_normalization_142/ReadVariableOp?
1model_35/batch_normalization_142/ReadVariableOp_1ReadVariableOp:model_35_batch_normalization_142_readvariableop_1_resource*
_output_shapes
:@*
dtype023
1model_35/batch_normalization_142/ReadVariableOp_1?
@model_35/batch_normalization_142/FusedBatchNormV3/ReadVariableOpReadVariableOpImodel_35_batch_normalization_142_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02B
@model_35/batch_normalization_142/FusedBatchNormV3/ReadVariableOp?
Bmodel_35/batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKmodel_35_batch_normalization_142_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02D
Bmodel_35/batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1?
1model_35/batch_normalization_142/FusedBatchNormV3FusedBatchNormV3*model_35/activation_177/Relu:activations:07model_35/batch_normalization_142/ReadVariableOp:value:09model_35/batch_normalization_142/ReadVariableOp_1:value:0Hmodel_35/batch_normalization_142/FusedBatchNormV3/ReadVariableOp:value:0Jmodel_35/batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 23
1model_35/batch_normalization_142/FusedBatchNormV3?
"model_35/max_pooling2d_107/MaxPoolMaxPool5model_35/batch_normalization_142/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2$
"model_35/max_pooling2d_107/MaxPool?
model_35/flatten_35/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
model_35/flatten_35/Const?
model_35/flatten_35/ReshapeReshape+model_35/max_pooling2d_107/MaxPool:output:0"model_35/flatten_35/Const:output:0*
T0*(
_output_shapes
:??????????2
model_35/flatten_35/Reshape?
(model_35/dense_105/MatMul/ReadVariableOpReadVariableOp1model_35_dense_105_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(model_35/dense_105/MatMul/ReadVariableOp?
model_35/dense_105/MatMulMatMul$model_35/flatten_35/Reshape:output:00model_35/dense_105/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_35/dense_105/MatMul?
)model_35/dense_105/BiasAdd/ReadVariableOpReadVariableOp2model_35_dense_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_35/dense_105/BiasAdd/ReadVariableOp?
model_35/dense_105/BiasAddBiasAdd#model_35/dense_105/MatMul:product:01model_35/dense_105/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_35/dense_105/BiasAdd?
model_35/activation_178/ReluRelu#model_35/dense_105/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_35/activation_178/Relu?
9model_35/batch_normalization_143/batchnorm/ReadVariableOpReadVariableOpBmodel_35_batch_normalization_143_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02;
9model_35/batch_normalization_143/batchnorm/ReadVariableOp?
0model_35/batch_normalization_143/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:22
0model_35/batch_normalization_143/batchnorm/add/y?
.model_35/batch_normalization_143/batchnorm/addAddV2Amodel_35/batch_normalization_143/batchnorm/ReadVariableOp:value:09model_35/batch_normalization_143/batchnorm/add/y:output:0*
T0*
_output_shapes
:20
.model_35/batch_normalization_143/batchnorm/add?
0model_35/batch_normalization_143/batchnorm/RsqrtRsqrt2model_35/batch_normalization_143/batchnorm/add:z:0*
T0*
_output_shapes
:22
0model_35/batch_normalization_143/batchnorm/Rsqrt?
=model_35/batch_normalization_143/batchnorm/mul/ReadVariableOpReadVariableOpFmodel_35_batch_normalization_143_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02?
=model_35/batch_normalization_143/batchnorm/mul/ReadVariableOp?
.model_35/batch_normalization_143/batchnorm/mulMul4model_35/batch_normalization_143/batchnorm/Rsqrt:y:0Emodel_35/batch_normalization_143/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:20
.model_35/batch_normalization_143/batchnorm/mul?
0model_35/batch_normalization_143/batchnorm/mul_1Mul*model_35/activation_178/Relu:activations:02model_35/batch_normalization_143/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????22
0model_35/batch_normalization_143/batchnorm/mul_1?
;model_35/batch_normalization_143/batchnorm/ReadVariableOp_1ReadVariableOpDmodel_35_batch_normalization_143_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02=
;model_35/batch_normalization_143/batchnorm/ReadVariableOp_1?
0model_35/batch_normalization_143/batchnorm/mul_2MulCmodel_35/batch_normalization_143/batchnorm/ReadVariableOp_1:value:02model_35/batch_normalization_143/batchnorm/mul:z:0*
T0*
_output_shapes
:22
0model_35/batch_normalization_143/batchnorm/mul_2?
;model_35/batch_normalization_143/batchnorm/ReadVariableOp_2ReadVariableOpDmodel_35_batch_normalization_143_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02=
;model_35/batch_normalization_143/batchnorm/ReadVariableOp_2?
.model_35/batch_normalization_143/batchnorm/subSubCmodel_35/batch_normalization_143/batchnorm/ReadVariableOp_2:value:04model_35/batch_normalization_143/batchnorm/mul_2:z:0*
T0*
_output_shapes
:20
.model_35/batch_normalization_143/batchnorm/sub?
0model_35/batch_normalization_143/batchnorm/add_1AddV24model_35/batch_normalization_143/batchnorm/mul_1:z:02model_35/batch_normalization_143/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????22
0model_35/batch_normalization_143/batchnorm/add_1?
model_35/dropout_35/IdentityIdentity4model_35/batch_normalization_143/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????2
model_35/dropout_35/Identity?
(model_35/dense_106/MatMul/ReadVariableOpReadVariableOp1model_35_dense_106_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(model_35/dense_106/MatMul/ReadVariableOp?
model_35/dense_106/MatMulMatMul%model_35/dropout_35/Identity:output:00model_35/dense_106/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_35/dense_106/MatMul?
)model_35/dense_106/BiasAdd/ReadVariableOpReadVariableOp2model_35_dense_106_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_35/dense_106/BiasAdd/ReadVariableOp?
model_35/dense_106/BiasAddBiasAdd#model_35/dense_106/MatMul:product:01model_35/dense_106/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_35/dense_106/BiasAdd?
model_35/activation_179/ReluRelu#model_35/dense_106/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_35/activation_179/Relu?
(model_35/dense_107/MatMul/ReadVariableOpReadVariableOp1model_35_dense_107_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(model_35/dense_107/MatMul/ReadVariableOp?
model_35/dense_107/MatMulMatMul*model_35/activation_179/Relu:activations:00model_35/dense_107/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_35/dense_107/MatMul?
)model_35/dense_107/BiasAdd/ReadVariableOpReadVariableOp2model_35_dense_107_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_35/dense_107/BiasAdd/ReadVariableOp?
model_35/dense_107/BiasAddBiasAdd#model_35/dense_107/MatMul:product:01model_35/dense_107/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_35/dense_107/BiasAdd?
IdentityIdentity#model_35/dense_107/BiasAdd:output:0A^model_35/batch_normalization_140/FusedBatchNormV3/ReadVariableOpC^model_35/batch_normalization_140/FusedBatchNormV3/ReadVariableOp_10^model_35/batch_normalization_140/ReadVariableOp2^model_35/batch_normalization_140/ReadVariableOp_1A^model_35/batch_normalization_141/FusedBatchNormV3/ReadVariableOpC^model_35/batch_normalization_141/FusedBatchNormV3/ReadVariableOp_10^model_35/batch_normalization_141/ReadVariableOp2^model_35/batch_normalization_141/ReadVariableOp_1A^model_35/batch_normalization_142/FusedBatchNormV3/ReadVariableOpC^model_35/batch_normalization_142/FusedBatchNormV3/ReadVariableOp_10^model_35/batch_normalization_142/ReadVariableOp2^model_35/batch_normalization_142/ReadVariableOp_1:^model_35/batch_normalization_143/batchnorm/ReadVariableOp<^model_35/batch_normalization_143/batchnorm/ReadVariableOp_1<^model_35/batch_normalization_143/batchnorm/ReadVariableOp_2>^model_35/batch_normalization_143/batchnorm/mul/ReadVariableOp+^model_35/conv2d_105/BiasAdd/ReadVariableOp*^model_35/conv2d_105/Conv2D/ReadVariableOp+^model_35/conv2d_106/BiasAdd/ReadVariableOp*^model_35/conv2d_106/Conv2D/ReadVariableOp+^model_35/conv2d_107/BiasAdd/ReadVariableOp*^model_35/conv2d_107/Conv2D/ReadVariableOp*^model_35/dense_105/BiasAdd/ReadVariableOp)^model_35/dense_105/MatMul/ReadVariableOp*^model_35/dense_106/BiasAdd/ReadVariableOp)^model_35/dense_106/MatMul/ReadVariableOp*^model_35/dense_107/BiasAdd/ReadVariableOp)^model_35/dense_107/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2?
@model_35/batch_normalization_140/FusedBatchNormV3/ReadVariableOp@model_35/batch_normalization_140/FusedBatchNormV3/ReadVariableOp2?
Bmodel_35/batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1Bmodel_35/batch_normalization_140/FusedBatchNormV3/ReadVariableOp_12b
/model_35/batch_normalization_140/ReadVariableOp/model_35/batch_normalization_140/ReadVariableOp2f
1model_35/batch_normalization_140/ReadVariableOp_11model_35/batch_normalization_140/ReadVariableOp_12?
@model_35/batch_normalization_141/FusedBatchNormV3/ReadVariableOp@model_35/batch_normalization_141/FusedBatchNormV3/ReadVariableOp2?
Bmodel_35/batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1Bmodel_35/batch_normalization_141/FusedBatchNormV3/ReadVariableOp_12b
/model_35/batch_normalization_141/ReadVariableOp/model_35/batch_normalization_141/ReadVariableOp2f
1model_35/batch_normalization_141/ReadVariableOp_11model_35/batch_normalization_141/ReadVariableOp_12?
@model_35/batch_normalization_142/FusedBatchNormV3/ReadVariableOp@model_35/batch_normalization_142/FusedBatchNormV3/ReadVariableOp2?
Bmodel_35/batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1Bmodel_35/batch_normalization_142/FusedBatchNormV3/ReadVariableOp_12b
/model_35/batch_normalization_142/ReadVariableOp/model_35/batch_normalization_142/ReadVariableOp2f
1model_35/batch_normalization_142/ReadVariableOp_11model_35/batch_normalization_142/ReadVariableOp_12v
9model_35/batch_normalization_143/batchnorm/ReadVariableOp9model_35/batch_normalization_143/batchnorm/ReadVariableOp2z
;model_35/batch_normalization_143/batchnorm/ReadVariableOp_1;model_35/batch_normalization_143/batchnorm/ReadVariableOp_12z
;model_35/batch_normalization_143/batchnorm/ReadVariableOp_2;model_35/batch_normalization_143/batchnorm/ReadVariableOp_22~
=model_35/batch_normalization_143/batchnorm/mul/ReadVariableOp=model_35/batch_normalization_143/batchnorm/mul/ReadVariableOp2X
*model_35/conv2d_105/BiasAdd/ReadVariableOp*model_35/conv2d_105/BiasAdd/ReadVariableOp2V
)model_35/conv2d_105/Conv2D/ReadVariableOp)model_35/conv2d_105/Conv2D/ReadVariableOp2X
*model_35/conv2d_106/BiasAdd/ReadVariableOp*model_35/conv2d_106/BiasAdd/ReadVariableOp2V
)model_35/conv2d_106/Conv2D/ReadVariableOp)model_35/conv2d_106/Conv2D/ReadVariableOp2X
*model_35/conv2d_107/BiasAdd/ReadVariableOp*model_35/conv2d_107/BiasAdd/ReadVariableOp2V
)model_35/conv2d_107/Conv2D/ReadVariableOp)model_35/conv2d_107/Conv2D/ReadVariableOp2V
)model_35/dense_105/BiasAdd/ReadVariableOp)model_35/dense_105/BiasAdd/ReadVariableOp2T
(model_35/dense_105/MatMul/ReadVariableOp(model_35/dense_105/MatMul/ReadVariableOp2V
)model_35/dense_106/BiasAdd/ReadVariableOp)model_35/dense_106/BiasAdd/ReadVariableOp2T
(model_35/dense_106/MatMul/ReadVariableOp(model_35/dense_106/MatMul/ReadVariableOp2V
)model_35/dense_107/BiasAdd/ReadVariableOp)model_35/dense_107/BiasAdd/ReadVariableOp2T
(model_35/dense_107/MatMul/ReadVariableOp(model_35/dense_107/MatMul/ReadVariableOp:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_36
?0
?
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_314171

inputs
assignmovingavg_314146
assignmovingavg_1_314152)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/314146*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_314146*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/314146*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/314146*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_314146AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/314146*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/314152*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_314152*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/314152*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/314152*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_314152AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/314152*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_143_layer_call_fn_314204

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_3122582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
f
J__inference_activation_178_layer_call_and_return_conditional_losses_312690

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:?????????2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_314051

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
f
J__inference_activation_176_layer_call_and_return_conditional_losses_312450

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:????????? 2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
F__inference_conv2d_105_layer_call_and_return_conditional_losses_313634

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????  ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?`
?

D__inference_model_35_layer_call_and_return_conditional_losses_312992

inputs
conv2d_105_312915
conv2d_105_312917"
batch_normalization_140_312921"
batch_normalization_140_312923"
batch_normalization_140_312925"
batch_normalization_140_312927
conv2d_106_312931
conv2d_106_312933"
batch_normalization_141_312937"
batch_normalization_141_312939"
batch_normalization_141_312941"
batch_normalization_141_312943
conv2d_107_312947
conv2d_107_312949"
batch_normalization_142_312953"
batch_normalization_142_312955"
batch_normalization_142_312957"
batch_normalization_142_312959
dense_105_312964
dense_105_312966"
batch_normalization_143_312970"
batch_normalization_143_312972"
batch_normalization_143_312974"
batch_normalization_143_312976
dense_106_312980
dense_106_312982
dense_107_312986
dense_107_312988
identity??/batch_normalization_140/StatefulPartitionedCall?/batch_normalization_141/StatefulPartitionedCall?/batch_normalization_142/StatefulPartitionedCall?/batch_normalization_143/StatefulPartitionedCall?"conv2d_105/StatefulPartitionedCall?"conv2d_106/StatefulPartitionedCall?"conv2d_107/StatefulPartitionedCall?!dense_105/StatefulPartitionedCall?!dense_106/StatefulPartitionedCall?!dense_107/StatefulPartitionedCall?"dropout_35/StatefulPartitionedCall?
"conv2d_105/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_105_312915conv2d_105_312917*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_105_layer_call_and_return_conditional_losses_3123162$
"conv2d_105/StatefulPartitionedCall?
activation_175/PartitionedCallPartitionedCall+conv2d_105/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_175_layer_call_and_return_conditional_losses_3123372 
activation_175/PartitionedCall?
/batch_normalization_140/StatefulPartitionedCallStatefulPartitionedCall'activation_175/PartitionedCall:output:0batch_normalization_140_312921batch_normalization_140_312923batch_normalization_140_312925batch_normalization_140_312927*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_31236421
/batch_normalization_140/StatefulPartitionedCall?
!max_pooling2d_105/PartitionedCallPartitionedCall8batch_normalization_140/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_105_layer_call_and_return_conditional_losses_3119242#
!max_pooling2d_105/PartitionedCall?
"conv2d_106/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_105/PartitionedCall:output:0conv2d_106_312931conv2d_106_312933*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_106_layer_call_and_return_conditional_losses_3124292$
"conv2d_106/StatefulPartitionedCall?
activation_176/PartitionedCallPartitionedCall+conv2d_106/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_176_layer_call_and_return_conditional_losses_3124502 
activation_176/PartitionedCall?
/batch_normalization_141/StatefulPartitionedCallStatefulPartitionedCall'activation_176/PartitionedCall:output:0batch_normalization_141_312937batch_normalization_141_312939batch_normalization_141_312941batch_normalization_141_312943*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_31247721
/batch_normalization_141/StatefulPartitionedCall?
!max_pooling2d_106/PartitionedCallPartitionedCall8batch_normalization_141/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_106_layer_call_and_return_conditional_losses_3120402#
!max_pooling2d_106/PartitionedCall?
"conv2d_107/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_106/PartitionedCall:output:0conv2d_107_312947conv2d_107_312949*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_107_layer_call_and_return_conditional_losses_3125422$
"conv2d_107/StatefulPartitionedCall?
activation_177/PartitionedCallPartitionedCall+conv2d_107/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_177_layer_call_and_return_conditional_losses_3125632 
activation_177/PartitionedCall?
/batch_normalization_142/StatefulPartitionedCallStatefulPartitionedCall'activation_177/PartitionedCall:output:0batch_normalization_142_312953batch_normalization_142_312955batch_normalization_142_312957batch_normalization_142_312959*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_31259021
/batch_normalization_142/StatefulPartitionedCall?
!max_pooling2d_107/PartitionedCallPartitionedCall8batch_normalization_142/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_3121562#
!max_pooling2d_107/PartitionedCall?
flatten_35/PartitionedCallPartitionedCall*max_pooling2d_107/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_35_layer_call_and_return_conditional_losses_3126512
flatten_35/PartitionedCall?
!dense_105/StatefulPartitionedCallStatefulPartitionedCall#flatten_35/PartitionedCall:output:0dense_105_312964dense_105_312966*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_105_layer_call_and_return_conditional_losses_3126692#
!dense_105/StatefulPartitionedCall?
activation_178/PartitionedCallPartitionedCall*dense_105/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_178_layer_call_and_return_conditional_losses_3126902 
activation_178/PartitionedCall?
/batch_normalization_143/StatefulPartitionedCallStatefulPartitionedCall'activation_178/PartitionedCall:output:0batch_normalization_143_312970batch_normalization_143_312972batch_normalization_143_312974batch_normalization_143_312976*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_31225821
/batch_normalization_143/StatefulPartitionedCall?
"dropout_35/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_143/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *O
fJRH
F__inference_dropout_35_layer_call_and_return_conditional_losses_3127452$
"dropout_35/StatefulPartitionedCall?
!dense_106/StatefulPartitionedCallStatefulPartitionedCall+dropout_35/StatefulPartitionedCall:output:0dense_106_312980dense_106_312982*
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
GPU 2J 8? *N
fIRG
E__inference_dense_106_layer_call_and_return_conditional_losses_3127732#
!dense_106/StatefulPartitionedCall?
activation_179/PartitionedCallPartitionedCall*dense_106/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_179_layer_call_and_return_conditional_losses_3127942 
activation_179/PartitionedCall?
!dense_107/StatefulPartitionedCallStatefulPartitionedCall'activation_179/PartitionedCall:output:0dense_107_312986dense_107_312988*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_107_layer_call_and_return_conditional_losses_3128122#
!dense_107/StatefulPartitionedCall?
IdentityIdentity*dense_107/StatefulPartitionedCall:output:00^batch_normalization_140/StatefulPartitionedCall0^batch_normalization_141/StatefulPartitionedCall0^batch_normalization_142/StatefulPartitionedCall0^batch_normalization_143/StatefulPartitionedCall#^conv2d_105/StatefulPartitionedCall#^conv2d_106/StatefulPartitionedCall#^conv2d_107/StatefulPartitionedCall"^dense_105/StatefulPartitionedCall"^dense_106/StatefulPartitionedCall"^dense_107/StatefulPartitionedCall#^dropout_35/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2b
/batch_normalization_140/StatefulPartitionedCall/batch_normalization_140/StatefulPartitionedCall2b
/batch_normalization_141/StatefulPartitionedCall/batch_normalization_141/StatefulPartitionedCall2b
/batch_normalization_142/StatefulPartitionedCall/batch_normalization_142/StatefulPartitionedCall2b
/batch_normalization_143/StatefulPartitionedCall/batch_normalization_143/StatefulPartitionedCall2H
"conv2d_105/StatefulPartitionedCall"conv2d_105/StatefulPartitionedCall2H
"conv2d_106/StatefulPartitionedCall"conv2d_106/StatefulPartitionedCall2H
"conv2d_107/StatefulPartitionedCall"conv2d_107/StatefulPartitionedCall2F
!dense_105/StatefulPartitionedCall!dense_105/StatefulPartitionedCall2F
!dense_106/StatefulPartitionedCall!dense_106/StatefulPartitionedCall2F
!dense_107/StatefulPartitionedCall!dense_107/StatefulPartitionedCall2H
"dropout_35/StatefulPartitionedCall"dropout_35/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
+__inference_conv2d_105_layer_call_fn_313643

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_105_layer_call_and_return_conditional_losses_3123162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????  ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_142_layer_call_fn_314018

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_3121082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_311992

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_142_layer_call_fn_314095

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_3126082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
f
J__inference_activation_177_layer_call_and_return_conditional_losses_313962

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
F__inference_dropout_35_layer_call_and_return_conditional_losses_314229

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
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
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
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_106_layer_call_and_return_conditional_losses_312040

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
?
?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_313691

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_313912

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
input_369
serving_default_input_36:0?????????  =
	dense_1070
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
??
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer_with_weights-6
layer-14
layer-15
layer_with_weights-7
layer-16
layer-17
layer_with_weights-8
layer-18
layer-19
layer_with_weights-9
layer-20
	optimizer

signatures
#_self_saveable_object_factories
regularization_losses
trainable_variables
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"??
_tf_keras_networkߗ{"class_name": "Functional", "name": "model_35", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_35", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_36"}, "name": "input_36", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_105", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_105", "inbound_nodes": [[["input_36", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_175", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_175", "inbound_nodes": [[["conv2d_105", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_140", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_140", "inbound_nodes": [[["activation_175", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_105", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_105", "inbound_nodes": [[["batch_normalization_140", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_106", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_106", "inbound_nodes": [[["max_pooling2d_105", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_176", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_176", "inbound_nodes": [[["conv2d_106", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_141", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_141", "inbound_nodes": [[["activation_176", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_106", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_106", "inbound_nodes": [[["batch_normalization_141", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_107", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_107", "inbound_nodes": [[["max_pooling2d_106", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_177", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_177", "inbound_nodes": [[["conv2d_107", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_142", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_142", "inbound_nodes": [[["activation_177", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_107", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_107", "inbound_nodes": [[["batch_normalization_142", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_35", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_35", "inbound_nodes": [[["max_pooling2d_107", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_105", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_105", "inbound_nodes": [[["flatten_35", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_178", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_178", "inbound_nodes": [[["dense_105", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_143", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_143", "inbound_nodes": [[["activation_178", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_35", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_35", "inbound_nodes": [[["batch_normalization_143", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_106", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_106", "inbound_nodes": [[["dropout_35", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_179", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_179", "inbound_nodes": [[["dense_106", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_107", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_107", "inbound_nodes": [[["activation_179", 0, 0, {}]]]}], "input_layers": [["input_36", 0, 0]], "output_layers": [["dense_107", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_35", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_36"}, "name": "input_36", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_105", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_105", "inbound_nodes": [[["input_36", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_175", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_175", "inbound_nodes": [[["conv2d_105", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_140", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_140", "inbound_nodes": [[["activation_175", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_105", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_105", "inbound_nodes": [[["batch_normalization_140", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_106", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_106", "inbound_nodes": [[["max_pooling2d_105", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_176", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_176", "inbound_nodes": [[["conv2d_106", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_141", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_141", "inbound_nodes": [[["activation_176", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_106", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_106", "inbound_nodes": [[["batch_normalization_141", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_107", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_107", "inbound_nodes": [[["max_pooling2d_106", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_177", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_177", "inbound_nodes": [[["conv2d_107", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_142", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_142", "inbound_nodes": [[["activation_177", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_107", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_107", "inbound_nodes": [[["batch_normalization_142", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_35", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_35", "inbound_nodes": [[["max_pooling2d_107", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_105", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_105", "inbound_nodes": [[["flatten_35", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_178", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_178", "inbound_nodes": [[["dense_105", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_143", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_143", "inbound_nodes": [[["activation_178", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_35", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_35", "inbound_nodes": [[["batch_normalization_143", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_106", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_106", "inbound_nodes": [[["dropout_35", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_179", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_179", "inbound_nodes": [[["dense_106", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_107", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_107", "inbound_nodes": [[["activation_179", 0, 0, {}]]]}], "input_layers": [["input_36", 0, 0]], "output_layers": [["dense_107", 0, 0]]}}, "training_config": {"loss": "mean_absolute_percentage_error", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 4.999999873689376e-06, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
#_self_saveable_object_factories"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_36", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_36"}}
?


kernel
bias
# _self_saveable_object_factories
!regularization_losses
"trainable_variables
#	variables
$	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_105", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_105", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
?
#%_self_saveable_object_factories
&regularization_losses
'trainable_variables
(	variables
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_175", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_175", "trainable": true, "dtype": "float32", "activation": "relu"}}
?	
*axis
	+gamma
,beta
-moving_mean
.moving_variance
#/_self_saveable_object_factories
0regularization_losses
1trainable_variables
2	variables
3	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_140", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_140", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 16]}}
?
#4_self_saveable_object_factories
5regularization_losses
6trainable_variables
7	variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_105", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_105", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?


9kernel
:bias
#;_self_saveable_object_factories
<regularization_losses
=trainable_variables
>	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_106", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_106", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 16]}}
?
#@_self_saveable_object_factories
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_176", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_176", "trainable": true, "dtype": "float32", "activation": "relu"}}
?	
Eaxis
	Fgamma
Gbeta
Hmoving_mean
Imoving_variance
#J_self_saveable_object_factories
Kregularization_losses
Ltrainable_variables
M	variables
N	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_141", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_141", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
?
#O_self_saveable_object_factories
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_106", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_106", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?


Tkernel
Ubias
#V_self_saveable_object_factories
Wregularization_losses
Xtrainable_variables
Y	variables
Z	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_107", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_107", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 32]}}
?
#[_self_saveable_object_factories
\regularization_losses
]trainable_variables
^	variables
_	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_177", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_177", "trainable": true, "dtype": "float32", "activation": "relu"}}
?	
`axis
	agamma
bbeta
cmoving_mean
dmoving_variance
#e_self_saveable_object_factories
fregularization_losses
gtrainable_variables
h	variables
i	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_142", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_142", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
?
#j_self_saveable_object_factories
kregularization_losses
ltrainable_variables
m	variables
n	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_107", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_107", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
#o_self_saveable_object_factories
pregularization_losses
qtrainable_variables
r	variables
s	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_35", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

tkernel
ubias
#v_self_saveable_object_factories
wregularization_losses
xtrainable_variables
y	variables
z	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_105", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_105", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?
#{_self_saveable_object_factories
|regularization_losses
}trainable_variables
~	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_178", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_178", "trainable": true, "dtype": "float32", "activation": "relu"}}
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
$?_self_saveable_object_factories
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_143", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_143", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
?
$?_self_saveable_object_factories
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_35", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_35", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_106", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_106", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
?
$?_self_saveable_object_factories
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_179", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_179", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
?kernel
	?bias
$?_self_saveable_object_factories
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_107", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_107", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4]}}
"
	optimizer
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?
0
1
+2
,3
94
:5
F6
G7
T8
U9
a10
b11
t12
u13
?14
?15
?16
?17
?18
?19"
trackable_list_wrapper
?
0
1
+2
,3
-4
.5
96
:7
F8
G9
H10
I11
T12
U13
a14
b15
c16
d17
t18
u19
?20
?21
?22
?23
?24
?25
?26
?27"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
regularization_losses
trainable_variables
?layers
	variables
?non_trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
+:)2conv2d_105/kernel
:2conv2d_105/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
!regularization_losses
"trainable_variables
?layers
#	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
&regularization_losses
'trainable_variables
?layers
(	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)2batch_normalization_140/gamma
*:(2batch_normalization_140/beta
3:1 (2#batch_normalization_140/moving_mean
7:5 (2'batch_normalization_140/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
<
+0
,1
-2
.3"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
0regularization_losses
1trainable_variables
?layers
2	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
5regularization_losses
6trainable_variables
?layers
7	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:) 2conv2d_106/kernel
: 2conv2d_106/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
<regularization_losses
=trainable_variables
?layers
>	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
Aregularization_losses
Btrainable_variables
?layers
C	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:) 2batch_normalization_141/gamma
*:( 2batch_normalization_141/beta
3:1  (2#batch_normalization_141/moving_mean
7:5  (2'batch_normalization_141/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
<
F0
G1
H2
I3"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
Kregularization_losses
Ltrainable_variables
?layers
M	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
Pregularization_losses
Qtrainable_variables
?layers
R	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:) @2conv2d_107/kernel
:@2conv2d_107/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
Wregularization_losses
Xtrainable_variables
?layers
Y	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
\regularization_losses
]trainable_variables
?layers
^	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)@2batch_normalization_142/gamma
*:(@2batch_normalization_142/beta
3:1@ (2#batch_normalization_142/moving_mean
7:5@ (2'batch_normalization_142/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
<
a0
b1
c2
d3"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
fregularization_losses
gtrainable_variables
?layers
h	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
kregularization_losses
ltrainable_variables
?layers
m	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
pregularization_losses
qtrainable_variables
?layers
r	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!	?2dense_105/kernel
:2dense_105/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
wregularization_losses
xtrainable_variables
?layers
y	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
|regularization_losses
}trainable_variables
?layers
~	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)2batch_normalization_143/gamma
*:(2batch_normalization_143/beta
3:1 (2#batch_normalization_143/moving_mean
7:5 (2'batch_normalization_143/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
?regularization_losses
?trainable_variables
?layers
?	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
?regularization_losses
?trainable_variables
?layers
?	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 2dense_106/kernel
:2dense_106/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
?regularization_losses
?trainable_variables
?layers
?	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
?regularization_losses
?trainable_variables
?layers
?	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 2dense_107/kernel
:2dense_107/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
?regularization_losses
?trainable_variables
?layers
?	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
?
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
11
12
13
14
15
16
17
18
19
20"
trackable_list_wrapper
Z
-0
.1
H2
I3
c4
d5
?6
?7"
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
.
-0
.1"
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
.
H0
I1"
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
.
c0
d1"
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
0
?0
?1"
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
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
?2?
)__inference_model_35_layer_call_fn_313051
)__inference_model_35_layer_call_fn_313624
)__inference_model_35_layer_call_fn_313192
)__inference_model_35_layer_call_fn_313563?
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
D__inference_model_35_layer_call_and_return_conditional_losses_313502
D__inference_model_35_layer_call_and_return_conditional_losses_312829
D__inference_model_35_layer_call_and_return_conditional_losses_312909
D__inference_model_35_layer_call_and_return_conditional_losses_313393?
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
!__inference__wrapped_model_311814?
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
annotations? */?,
*?'
input_36?????????  
?2?
+__inference_conv2d_105_layer_call_fn_313643?
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
F__inference_conv2d_105_layer_call_and_return_conditional_losses_313634?
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
/__inference_activation_175_layer_call_fn_313653?
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
J__inference_activation_175_layer_call_and_return_conditional_losses_313648?
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
?2?
8__inference_batch_normalization_140_layer_call_fn_313704
8__inference_batch_normalization_140_layer_call_fn_313781
8__inference_batch_normalization_140_layer_call_fn_313768
8__inference_batch_normalization_140_layer_call_fn_313717?
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
?2?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_313691
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_313673
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_313755
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_313737?
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
2__inference_max_pooling2d_105_layer_call_fn_311930?
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
M__inference_max_pooling2d_105_layer_call_and_return_conditional_losses_311924?
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
+__inference_conv2d_106_layer_call_fn_313800?
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
F__inference_conv2d_106_layer_call_and_return_conditional_losses_313791?
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
/__inference_activation_176_layer_call_fn_313810?
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
J__inference_activation_176_layer_call_and_return_conditional_losses_313805?
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
?2?
8__inference_batch_normalization_141_layer_call_fn_313874
8__inference_batch_normalization_141_layer_call_fn_313925
8__inference_batch_normalization_141_layer_call_fn_313861
8__inference_batch_normalization_141_layer_call_fn_313938?
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
?2?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_313912
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_313848
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_313830
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_313894?
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
2__inference_max_pooling2d_106_layer_call_fn_312046?
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
M__inference_max_pooling2d_106_layer_call_and_return_conditional_losses_312040?
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
+__inference_conv2d_107_layer_call_fn_313957?
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
F__inference_conv2d_107_layer_call_and_return_conditional_losses_313948?
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
/__inference_activation_177_layer_call_fn_313967?
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
J__inference_activation_177_layer_call_and_return_conditional_losses_313962?
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
?2?
8__inference_batch_normalization_142_layer_call_fn_314031
8__inference_batch_normalization_142_layer_call_fn_314018
8__inference_batch_normalization_142_layer_call_fn_314095
8__inference_batch_normalization_142_layer_call_fn_314082?
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
?2?
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_313987
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_314005
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_314069
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_314051?
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
2__inference_max_pooling2d_107_layer_call_fn_312162?
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
M__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_312156?
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
+__inference_flatten_35_layer_call_fn_314106?
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
F__inference_flatten_35_layer_call_and_return_conditional_losses_314101?
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
*__inference_dense_105_layer_call_fn_314125?
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
E__inference_dense_105_layer_call_and_return_conditional_losses_314116?
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
/__inference_activation_178_layer_call_fn_314135?
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
J__inference_activation_178_layer_call_and_return_conditional_losses_314130?
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
8__inference_batch_normalization_143_layer_call_fn_314217
8__inference_batch_normalization_143_layer_call_fn_314204?
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
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_314171
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_314191?
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
+__inference_dropout_35_layer_call_fn_314244
+__inference_dropout_35_layer_call_fn_314239?
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
F__inference_dropout_35_layer_call_and_return_conditional_losses_314234
F__inference_dropout_35_layer_call_and_return_conditional_losses_314229?
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
*__inference_dense_106_layer_call_fn_314263?
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
E__inference_dense_106_layer_call_and_return_conditional_losses_314254?
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
/__inference_activation_179_layer_call_fn_314273?
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
J__inference_activation_179_layer_call_and_return_conditional_losses_314268?
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
*__inference_dense_107_layer_call_fn_314292?
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
E__inference_dense_107_layer_call_and_return_conditional_losses_314283?
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
$__inference_signature_wrapper_313255input_36"?
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
!__inference__wrapped_model_311814?$+,-.9:FGHITUabcdtu????????9?6
/?,
*?'
input_36?????????  
? "5?2
0
	dense_107#? 
	dense_107??????????
J__inference_activation_175_layer_call_and_return_conditional_losses_313648h7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????  
? ?
/__inference_activation_175_layer_call_fn_313653[7?4
-?*
(?%
inputs?????????  
? " ??????????  ?
J__inference_activation_176_layer_call_and_return_conditional_losses_313805h7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
/__inference_activation_176_layer_call_fn_313810[7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
J__inference_activation_177_layer_call_and_return_conditional_losses_313962h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
/__inference_activation_177_layer_call_fn_313967[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
J__inference_activation_178_layer_call_and_return_conditional_losses_314130X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
/__inference_activation_178_layer_call_fn_314135K/?,
%?"
 ?
inputs?????????
? "???????????
J__inference_activation_179_layer_call_and_return_conditional_losses_314268X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
/__inference_activation_179_layer_call_fn_314273K/?,
%?"
 ?
inputs?????????
? "???????????
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_313673?+,-.M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_313691?+,-.M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_313737r+,-.;?8
1?.
(?%
inputs?????????  
p
? "-?*
#? 
0?????????  
? ?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_313755r+,-.;?8
1?.
(?%
inputs?????????  
p 
? "-?*
#? 
0?????????  
? ?
8__inference_batch_normalization_140_layer_call_fn_313704?+,-.M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
8__inference_batch_normalization_140_layer_call_fn_313717?+,-.M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
8__inference_batch_normalization_140_layer_call_fn_313768e+,-.;?8
1?.
(?%
inputs?????????  
p
? " ??????????  ?
8__inference_batch_normalization_140_layer_call_fn_313781e+,-.;?8
1?.
(?%
inputs?????????  
p 
? " ??????????  ?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_313830?FGHIM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_313848?FGHIM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_313894rFGHI;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_313912rFGHI;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
8__inference_batch_normalization_141_layer_call_fn_313861?FGHIM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
8__inference_batch_normalization_141_layer_call_fn_313874?FGHIM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
8__inference_batch_normalization_141_layer_call_fn_313925eFGHI;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
8__inference_batch_normalization_141_layer_call_fn_313938eFGHI;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_313987?abcdM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_314005?abcdM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_314051rabcd;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_314069rabcd;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
8__inference_batch_normalization_142_layer_call_fn_314018?abcdM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
8__inference_batch_normalization_142_layer_call_fn_314031?abcdM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
8__inference_batch_normalization_142_layer_call_fn_314082eabcd;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
8__inference_batch_normalization_142_layer_call_fn_314095eabcd;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_314171f????3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_314191f????3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
8__inference_batch_normalization_143_layer_call_fn_314204Y????3?0
)?&
 ?
inputs?????????
p
? "???????????
8__inference_batch_normalization_143_layer_call_fn_314217Y????3?0
)?&
 ?
inputs?????????
p 
? "???????????
F__inference_conv2d_105_layer_call_and_return_conditional_losses_313634l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????  
? ?
+__inference_conv2d_105_layer_call_fn_313643_7?4
-?*
(?%
inputs?????????  
? " ??????????  ?
F__inference_conv2d_106_layer_call_and_return_conditional_losses_313791l9:7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0????????? 
? ?
+__inference_conv2d_106_layer_call_fn_313800_9:7?4
-?*
(?%
inputs?????????
? " ?????????? ?
F__inference_conv2d_107_layer_call_and_return_conditional_losses_313948lTU7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
+__inference_conv2d_107_layer_call_fn_313957_TU7?4
-?*
(?%
inputs????????? 
? " ??????????@?
E__inference_dense_105_layer_call_and_return_conditional_losses_314116]tu0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ~
*__inference_dense_105_layer_call_fn_314125Ptu0?-
&?#
!?
inputs??????????
? "???????????
E__inference_dense_106_layer_call_and_return_conditional_losses_314254^??/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? 
*__inference_dense_106_layer_call_fn_314263Q??/?,
%?"
 ?
inputs?????????
? "???????????
E__inference_dense_107_layer_call_and_return_conditional_losses_314283^??/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? 
*__inference_dense_107_layer_call_fn_314292Q??/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_dropout_35_layer_call_and_return_conditional_losses_314229\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
F__inference_dropout_35_layer_call_and_return_conditional_losses_314234\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ~
+__inference_dropout_35_layer_call_fn_314239O3?0
)?&
 ?
inputs?????????
p
? "??????????~
+__inference_dropout_35_layer_call_fn_314244O3?0
)?&
 ?
inputs?????????
p 
? "???????????
F__inference_flatten_35_layer_call_and_return_conditional_losses_314101a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????
? ?
+__inference_flatten_35_layer_call_fn_314106T7?4
-?*
(?%
inputs?????????@
? "????????????
M__inference_max_pooling2d_105_layer_call_and_return_conditional_losses_311924?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_105_layer_call_fn_311930?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_106_layer_call_and_return_conditional_losses_312040?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_106_layer_call_fn_312046?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_312156?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_107_layer_call_fn_312162?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
D__inference_model_35_layer_call_and_return_conditional_losses_312829?$+,-.9:FGHITUabcdtu????????A?>
7?4
*?'
input_36?????????  
p

 
? "%?"
?
0?????????
? ?
D__inference_model_35_layer_call_and_return_conditional_losses_312909?$+,-.9:FGHITUabcdtu????????A?>
7?4
*?'
input_36?????????  
p 

 
? "%?"
?
0?????????
? ?
D__inference_model_35_layer_call_and_return_conditional_losses_313393?$+,-.9:FGHITUabcdtu??????????<
5?2
(?%
inputs?????????  
p

 
? "%?"
?
0?????????
? ?
D__inference_model_35_layer_call_and_return_conditional_losses_313502?$+,-.9:FGHITUabcdtu??????????<
5?2
(?%
inputs?????????  
p 

 
? "%?"
?
0?????????
? ?
)__inference_model_35_layer_call_fn_313051?$+,-.9:FGHITUabcdtu????????A?>
7?4
*?'
input_36?????????  
p

 
? "???????????
)__inference_model_35_layer_call_fn_313192?$+,-.9:FGHITUabcdtu????????A?>
7?4
*?'
input_36?????????  
p 

 
? "???????????
)__inference_model_35_layer_call_fn_313563?$+,-.9:FGHITUabcdtu??????????<
5?2
(?%
inputs?????????  
p

 
? "???????????
)__inference_model_35_layer_call_fn_313624?$+,-.9:FGHITUabcdtu??????????<
5?2
(?%
inputs?????????  
p 

 
? "???????????
$__inference_signature_wrapper_313255?$+,-.9:FGHITUabcdtu????????E?B
? 
;?8
6
input_36*?'
input_36?????????  "5?2
0
	dense_107#? 
	dense_107?????????