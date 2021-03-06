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
conv2d_123/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_123/kernel

%conv2d_123/kernel/Read/ReadVariableOpReadVariableOpconv2d_123/kernel*&
_output_shapes
:*
dtype0
v
conv2d_123/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_123/bias
o
#conv2d_123/bias/Read/ReadVariableOpReadVariableOpconv2d_123/bias*
_output_shapes
:*
dtype0
?
batch_normalization_164/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_164/gamma
?
1batch_normalization_164/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_164/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_164/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_164/beta
?
0batch_normalization_164/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_164/beta*
_output_shapes
:*
dtype0
?
#batch_normalization_164/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_164/moving_mean
?
7batch_normalization_164/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_164/moving_mean*
_output_shapes
:*
dtype0
?
'batch_normalization_164/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_164/moving_variance
?
;batch_normalization_164/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_164/moving_variance*
_output_shapes
:*
dtype0
?
conv2d_124/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_124/kernel

%conv2d_124/kernel/Read/ReadVariableOpReadVariableOpconv2d_124/kernel*&
_output_shapes
: *
dtype0
v
conv2d_124/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_124/bias
o
#conv2d_124/bias/Read/ReadVariableOpReadVariableOpconv2d_124/bias*
_output_shapes
: *
dtype0
?
batch_normalization_165/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namebatch_normalization_165/gamma
?
1batch_normalization_165/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_165/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_165/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_165/beta
?
0batch_normalization_165/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_165/beta*
_output_shapes
: *
dtype0
?
#batch_normalization_165/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#batch_normalization_165/moving_mean
?
7batch_normalization_165/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_165/moving_mean*
_output_shapes
: *
dtype0
?
'batch_normalization_165/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'batch_normalization_165/moving_variance
?
;batch_normalization_165/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_165/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_125/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_125/kernel

%conv2d_125/kernel/Read/ReadVariableOpReadVariableOpconv2d_125/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_125/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_125/bias
o
#conv2d_125/bias/Read/ReadVariableOpReadVariableOpconv2d_125/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_166/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namebatch_normalization_166/gamma
?
1batch_normalization_166/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_166/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_166/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_166/beta
?
0batch_normalization_166/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_166/beta*
_output_shapes
:@*
dtype0
?
#batch_normalization_166/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization_166/moving_mean
?
7batch_normalization_166/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_166/moving_mean*
_output_shapes
:@*
dtype0
?
'batch_normalization_166/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'batch_normalization_166/moving_variance
?
;batch_normalization_166/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_166/moving_variance*
_output_shapes
:@*
dtype0
}
dense_123/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*!
shared_namedense_123/kernel
v
$dense_123/kernel/Read/ReadVariableOpReadVariableOpdense_123/kernel*
_output_shapes
:	?*
dtype0
t
dense_123/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_123/bias
m
"dense_123/bias/Read/ReadVariableOpReadVariableOpdense_123/bias*
_output_shapes
:*
dtype0
?
batch_normalization_167/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_167/gamma
?
1batch_normalization_167/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_167/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_167/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_167/beta
?
0batch_normalization_167/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_167/beta*
_output_shapes
:*
dtype0
?
#batch_normalization_167/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_167/moving_mean
?
7batch_normalization_167/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_167/moving_mean*
_output_shapes
:*
dtype0
?
'batch_normalization_167/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_167/moving_variance
?
;batch_normalization_167/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_167/moving_variance*
_output_shapes
:*
dtype0
|
dense_124/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_124/kernel
u
$dense_124/kernel/Read/ReadVariableOpReadVariableOpdense_124/kernel*
_output_shapes

:*
dtype0
t
dense_124/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_124/bias
m
"dense_124/bias/Read/ReadVariableOpReadVariableOpdense_124/bias*
_output_shapes
:*
dtype0
|
dense_125/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_125/kernel
u
$dense_125/kernel/Read/ReadVariableOpReadVariableOpdense_125/kernel*
_output_shapes

:*
dtype0
t
dense_125/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_125/bias
m
"dense_125/bias/Read/ReadVariableOpReadVariableOpdense_125/bias*
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
VARIABLE_VALUEconv2d_123/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_123/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_164/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_164/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_164/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_164/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_124/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_124/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_165/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_165/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_165/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_165/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_125/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_125/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_166/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_166/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_166/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_166/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_123/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_123/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_167/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_167/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_167/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_167/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_124/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_124/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_125/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_125/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
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
serving_default_input_42Placeholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_42conv2d_123/kernelconv2d_123/biasbatch_normalization_164/gammabatch_normalization_164/beta#batch_normalization_164/moving_mean'batch_normalization_164/moving_varianceconv2d_124/kernelconv2d_124/biasbatch_normalization_165/gammabatch_normalization_165/beta#batch_normalization_165/moving_mean'batch_normalization_165/moving_varianceconv2d_125/kernelconv2d_125/biasbatch_normalization_166/gammabatch_normalization_166/beta#batch_normalization_166/moving_mean'batch_normalization_166/moving_variancedense_123/kerneldense_123/bias'batch_normalization_167/moving_variancebatch_normalization_167/gamma#batch_normalization_167/moving_meanbatch_normalization_167/betadense_124/kerneldense_124/biasdense_125/kerneldense_125/bias*(
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
$__inference_signature_wrapper_352189
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_123/kernel/Read/ReadVariableOp#conv2d_123/bias/Read/ReadVariableOp1batch_normalization_164/gamma/Read/ReadVariableOp0batch_normalization_164/beta/Read/ReadVariableOp7batch_normalization_164/moving_mean/Read/ReadVariableOp;batch_normalization_164/moving_variance/Read/ReadVariableOp%conv2d_124/kernel/Read/ReadVariableOp#conv2d_124/bias/Read/ReadVariableOp1batch_normalization_165/gamma/Read/ReadVariableOp0batch_normalization_165/beta/Read/ReadVariableOp7batch_normalization_165/moving_mean/Read/ReadVariableOp;batch_normalization_165/moving_variance/Read/ReadVariableOp%conv2d_125/kernel/Read/ReadVariableOp#conv2d_125/bias/Read/ReadVariableOp1batch_normalization_166/gamma/Read/ReadVariableOp0batch_normalization_166/beta/Read/ReadVariableOp7batch_normalization_166/moving_mean/Read/ReadVariableOp;batch_normalization_166/moving_variance/Read/ReadVariableOp$dense_123/kernel/Read/ReadVariableOp"dense_123/bias/Read/ReadVariableOp1batch_normalization_167/gamma/Read/ReadVariableOp0batch_normalization_167/beta/Read/ReadVariableOp7batch_normalization_167/moving_mean/Read/ReadVariableOp;batch_normalization_167/moving_variance/Read/ReadVariableOp$dense_124/kernel/Read/ReadVariableOp"dense_124/bias/Read/ReadVariableOp$dense_125/kernel/Read/ReadVariableOp"dense_125/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*+
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
__inference__traced_save_353339
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_123/kernelconv2d_123/biasbatch_normalization_164/gammabatch_normalization_164/beta#batch_normalization_164/moving_mean'batch_normalization_164/moving_varianceconv2d_124/kernelconv2d_124/biasbatch_normalization_165/gammabatch_normalization_165/beta#batch_normalization_165/moving_mean'batch_normalization_165/moving_varianceconv2d_125/kernelconv2d_125/biasbatch_normalization_166/gammabatch_normalization_166/beta#batch_normalization_166/moving_mean'batch_normalization_166/moving_variancedense_123/kerneldense_123/biasbatch_normalization_167/gammabatch_normalization_167/beta#batch_normalization_167/moving_mean'batch_normalization_167/moving_variancedense_124/kerneldense_124/biasdense_125/kerneldense_125/biastotalcount**
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
"__inference__traced_restore_353439??
?
N
2__inference_max_pooling2d_125_layer_call_fn_351096

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
M__inference_max_pooling2d_125_layer_call_and_return_conditional_losses_3510902
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
?
b
F__inference_flatten_41_layer_call_and_return_conditional_losses_353035

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
?
?
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_351542

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
?
d
F__inference_dropout_41_layer_call_and_return_conditional_losses_351684

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
?
f
J__inference_activation_207_layer_call_and_return_conditional_losses_352896

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
?
?
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_351524

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
?
?
8__inference_batch_normalization_166_layer_call_fn_353016

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
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_3515242
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
?	
?
F__inference_conv2d_123_layer_call_and_return_conditional_losses_351250

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
?
?
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_352689

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
?
?
8__inference_batch_normalization_167_layer_call_fn_353138

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
S__inference_batch_normalization_167_layer_call_and_return_conditional_losses_3511922
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
?

*__inference_dense_124_layer_call_fn_353197

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
E__inference_dense_124_layer_call_and_return_conditional_losses_3517072
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
?
?
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_352764

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
?
?
8__inference_batch_normalization_165_layer_call_fn_352795

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
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_3509262
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
?
b
F__inference_flatten_41_layer_call_and_return_conditional_losses_351585

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
?
?
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_352921

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
?
?
8__inference_batch_normalization_164_layer_call_fn_352715

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
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_3508412
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
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_351298

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
?
?
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_352828

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
?
)__inference_model_41_layer_call_fn_352497

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
D__inference_model_41_layer_call_and_return_conditional_losses_3519262
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
?
?
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_353003

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
?
K
/__inference_activation_208_layer_call_fn_353069

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
J__inference_activation_208_layer_call_and_return_conditional_losses_3516242
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
?
?
S__inference_batch_normalization_167_layer_call_and_return_conditional_losses_353125

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
?
d
+__inference_dropout_41_layer_call_fn_353173

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
F__inference_dropout_41_layer_call_and_return_conditional_losses_3516792
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
?	
?
E__inference_dense_125_layer_call_and_return_conditional_losses_353217

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
?	
?
F__inference_conv2d_124_layer_call_and_return_conditional_losses_351363

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
?
?
)__inference_model_41_layer_call_fn_352126
input_42
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
StatefulPartitionedCallStatefulPartitionedCallinput_42unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
D__inference_model_41_layer_call_and_return_conditional_losses_3520672
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
input_42
ޛ
?
D__inference_model_41_layer_call_and_return_conditional_losses_352436

inputs-
)conv2d_123_conv2d_readvariableop_resource.
*conv2d_123_biasadd_readvariableop_resource3
/batch_normalization_164_readvariableop_resource5
1batch_normalization_164_readvariableop_1_resourceD
@batch_normalization_164_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_164_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_124_conv2d_readvariableop_resource.
*conv2d_124_biasadd_readvariableop_resource3
/batch_normalization_165_readvariableop_resource5
1batch_normalization_165_readvariableop_1_resourceD
@batch_normalization_165_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_165_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_125_conv2d_readvariableop_resource.
*conv2d_125_biasadd_readvariableop_resource3
/batch_normalization_166_readvariableop_resource5
1batch_normalization_166_readvariableop_1_resourceD
@batch_normalization_166_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_166_fusedbatchnormv3_readvariableop_1_resource,
(dense_123_matmul_readvariableop_resource-
)dense_123_biasadd_readvariableop_resource=
9batch_normalization_167_batchnorm_readvariableop_resourceA
=batch_normalization_167_batchnorm_mul_readvariableop_resource?
;batch_normalization_167_batchnorm_readvariableop_1_resource?
;batch_normalization_167_batchnorm_readvariableop_2_resource,
(dense_124_matmul_readvariableop_resource-
)dense_124_biasadd_readvariableop_resource,
(dense_125_matmul_readvariableop_resource-
)dense_125_biasadd_readvariableop_resource
identity??7batch_normalization_164/FusedBatchNormV3/ReadVariableOp?9batch_normalization_164/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_164/ReadVariableOp?(batch_normalization_164/ReadVariableOp_1?7batch_normalization_165/FusedBatchNormV3/ReadVariableOp?9batch_normalization_165/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_165/ReadVariableOp?(batch_normalization_165/ReadVariableOp_1?7batch_normalization_166/FusedBatchNormV3/ReadVariableOp?9batch_normalization_166/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_166/ReadVariableOp?(batch_normalization_166/ReadVariableOp_1?0batch_normalization_167/batchnorm/ReadVariableOp?2batch_normalization_167/batchnorm/ReadVariableOp_1?2batch_normalization_167/batchnorm/ReadVariableOp_2?4batch_normalization_167/batchnorm/mul/ReadVariableOp?!conv2d_123/BiasAdd/ReadVariableOp? conv2d_123/Conv2D/ReadVariableOp?!conv2d_124/BiasAdd/ReadVariableOp? conv2d_124/Conv2D/ReadVariableOp?!conv2d_125/BiasAdd/ReadVariableOp? conv2d_125/Conv2D/ReadVariableOp? dense_123/BiasAdd/ReadVariableOp?dense_123/MatMul/ReadVariableOp? dense_124/BiasAdd/ReadVariableOp?dense_124/MatMul/ReadVariableOp? dense_125/BiasAdd/ReadVariableOp?dense_125/MatMul/ReadVariableOp?
 conv2d_123/Conv2D/ReadVariableOpReadVariableOp)conv2d_123_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_123/Conv2D/ReadVariableOp?
conv2d_123/Conv2DConv2Dinputs(conv2d_123/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2
conv2d_123/Conv2D?
!conv2d_123/BiasAdd/ReadVariableOpReadVariableOp*conv2d_123_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_123/BiasAdd/ReadVariableOp?
conv2d_123/BiasAddBiasAddconv2d_123/Conv2D:output:0)conv2d_123/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  2
conv2d_123/BiasAdd?
activation_205/ReluReluconv2d_123/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  2
activation_205/Relu?
&batch_normalization_164/ReadVariableOpReadVariableOp/batch_normalization_164_readvariableop_resource*
_output_shapes
:*
dtype02(
&batch_normalization_164/ReadVariableOp?
(batch_normalization_164/ReadVariableOp_1ReadVariableOp1batch_normalization_164_readvariableop_1_resource*
_output_shapes
:*
dtype02*
(batch_normalization_164/ReadVariableOp_1?
7batch_normalization_164/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_164_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype029
7batch_normalization_164/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_164/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_164_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02;
9batch_normalization_164/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_164/FusedBatchNormV3FusedBatchNormV3!activation_205/Relu:activations:0.batch_normalization_164/ReadVariableOp:value:00batch_normalization_164/ReadVariableOp_1:value:0?batch_normalization_164/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_164/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
is_training( 2*
(batch_normalization_164/FusedBatchNormV3?
max_pooling2d_123/MaxPoolMaxPool,batch_normalization_164/FusedBatchNormV3:y:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_123/MaxPool?
 conv2d_124/Conv2D/ReadVariableOpReadVariableOp)conv2d_124_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_124/Conv2D/ReadVariableOp?
conv2d_124/Conv2DConv2D"max_pooling2d_123/MaxPool:output:0(conv2d_124/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_124/Conv2D?
!conv2d_124/BiasAdd/ReadVariableOpReadVariableOp*conv2d_124_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_124/BiasAdd/ReadVariableOp?
conv2d_124/BiasAddBiasAddconv2d_124/Conv2D:output:0)conv2d_124/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_124/BiasAdd?
activation_206/ReluReluconv2d_124/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
activation_206/Relu?
&batch_normalization_165/ReadVariableOpReadVariableOp/batch_normalization_165_readvariableop_resource*
_output_shapes
: *
dtype02(
&batch_normalization_165/ReadVariableOp?
(batch_normalization_165/ReadVariableOp_1ReadVariableOp1batch_normalization_165_readvariableop_1_resource*
_output_shapes
: *
dtype02*
(batch_normalization_165/ReadVariableOp_1?
7batch_normalization_165/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_165_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype029
7batch_normalization_165/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_165/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_165_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02;
9batch_normalization_165/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_165/FusedBatchNormV3FusedBatchNormV3!activation_206/Relu:activations:0.batch_normalization_165/ReadVariableOp:value:00batch_normalization_165/ReadVariableOp_1:value:0?batch_normalization_165/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_165/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2*
(batch_normalization_165/FusedBatchNormV3?
max_pooling2d_124/MaxPoolMaxPool,batch_normalization_165/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_124/MaxPool?
 conv2d_125/Conv2D/ReadVariableOpReadVariableOp)conv2d_125_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_125/Conv2D/ReadVariableOp?
conv2d_125/Conv2DConv2D"max_pooling2d_124/MaxPool:output:0(conv2d_125/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_125/Conv2D?
!conv2d_125/BiasAdd/ReadVariableOpReadVariableOp*conv2d_125_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_125/BiasAdd/ReadVariableOp?
conv2d_125/BiasAddBiasAddconv2d_125/Conv2D:output:0)conv2d_125/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_125/BiasAdd?
activation_207/ReluReluconv2d_125/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_207/Relu?
&batch_normalization_166/ReadVariableOpReadVariableOp/batch_normalization_166_readvariableop_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_166/ReadVariableOp?
(batch_normalization_166/ReadVariableOp_1ReadVariableOp1batch_normalization_166_readvariableop_1_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_166/ReadVariableOp_1?
7batch_normalization_166/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_166_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype029
7batch_normalization_166/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_166/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_166_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9batch_normalization_166/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_166/FusedBatchNormV3FusedBatchNormV3!activation_207/Relu:activations:0.batch_normalization_166/ReadVariableOp:value:00batch_normalization_166/ReadVariableOp_1:value:0?batch_normalization_166/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_166/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2*
(batch_normalization_166/FusedBatchNormV3?
max_pooling2d_125/MaxPoolMaxPool,batch_normalization_166/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_125/MaxPoolu
flatten_41/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_41/Const?
flatten_41/ReshapeReshape"max_pooling2d_125/MaxPool:output:0flatten_41/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_41/Reshape?
dense_123/MatMul/ReadVariableOpReadVariableOp(dense_123_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
dense_123/MatMul/ReadVariableOp?
dense_123/MatMulMatMulflatten_41/Reshape:output:0'dense_123/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_123/MatMul?
 dense_123/BiasAdd/ReadVariableOpReadVariableOp)dense_123_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_123/BiasAdd/ReadVariableOp?
dense_123/BiasAddBiasAdddense_123/MatMul:product:0(dense_123/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_123/BiasAdd?
activation_208/ReluReludense_123/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_208/Relu?
0batch_normalization_167/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_167_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype022
0batch_normalization_167/batchnorm/ReadVariableOp?
'batch_normalization_167/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2)
'batch_normalization_167/batchnorm/add/y?
%batch_normalization_167/batchnorm/addAddV28batch_normalization_167/batchnorm/ReadVariableOp:value:00batch_normalization_167/batchnorm/add/y:output:0*
T0*
_output_shapes
:2'
%batch_normalization_167/batchnorm/add?
'batch_normalization_167/batchnorm/RsqrtRsqrt)batch_normalization_167/batchnorm/add:z:0*
T0*
_output_shapes
:2)
'batch_normalization_167/batchnorm/Rsqrt?
4batch_normalization_167/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_167_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization_167/batchnorm/mul/ReadVariableOp?
%batch_normalization_167/batchnorm/mulMul+batch_normalization_167/batchnorm/Rsqrt:y:0<batch_normalization_167/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2'
%batch_normalization_167/batchnorm/mul?
'batch_normalization_167/batchnorm/mul_1Mul!activation_208/Relu:activations:0)batch_normalization_167/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2)
'batch_normalization_167/batchnorm/mul_1?
2batch_normalization_167/batchnorm/ReadVariableOp_1ReadVariableOp;batch_normalization_167_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype024
2batch_normalization_167/batchnorm/ReadVariableOp_1?
'batch_normalization_167/batchnorm/mul_2Mul:batch_normalization_167/batchnorm/ReadVariableOp_1:value:0)batch_normalization_167/batchnorm/mul:z:0*
T0*
_output_shapes
:2)
'batch_normalization_167/batchnorm/mul_2?
2batch_normalization_167/batchnorm/ReadVariableOp_2ReadVariableOp;batch_normalization_167_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype024
2batch_normalization_167/batchnorm/ReadVariableOp_2?
%batch_normalization_167/batchnorm/subSub:batch_normalization_167/batchnorm/ReadVariableOp_2:value:0+batch_normalization_167/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2'
%batch_normalization_167/batchnorm/sub?
'batch_normalization_167/batchnorm/add_1AddV2+batch_normalization_167/batchnorm/mul_1:z:0)batch_normalization_167/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2)
'batch_normalization_167/batchnorm/add_1?
dropout_41/IdentityIdentity+batch_normalization_167/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????2
dropout_41/Identity?
dense_124/MatMul/ReadVariableOpReadVariableOp(dense_124_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_124/MatMul/ReadVariableOp?
dense_124/MatMulMatMuldropout_41/Identity:output:0'dense_124/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_124/MatMul?
 dense_124/BiasAdd/ReadVariableOpReadVariableOp)dense_124_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_124/BiasAdd/ReadVariableOp?
dense_124/BiasAddBiasAdddense_124/MatMul:product:0(dense_124/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_124/BiasAdd?
activation_209/ReluReludense_124/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_209/Relu?
dense_125/MatMul/ReadVariableOpReadVariableOp(dense_125_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_125/MatMul/ReadVariableOp?
dense_125/MatMulMatMul!activation_209/Relu:activations:0'dense_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_125/MatMul?
 dense_125/BiasAdd/ReadVariableOpReadVariableOp)dense_125_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_125/BiasAdd/ReadVariableOp?
dense_125/BiasAddBiasAdddense_125/MatMul:product:0(dense_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_125/BiasAdd?

IdentityIdentitydense_125/BiasAdd:output:08^batch_normalization_164/FusedBatchNormV3/ReadVariableOp:^batch_normalization_164/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_164/ReadVariableOp)^batch_normalization_164/ReadVariableOp_18^batch_normalization_165/FusedBatchNormV3/ReadVariableOp:^batch_normalization_165/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_165/ReadVariableOp)^batch_normalization_165/ReadVariableOp_18^batch_normalization_166/FusedBatchNormV3/ReadVariableOp:^batch_normalization_166/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_166/ReadVariableOp)^batch_normalization_166/ReadVariableOp_11^batch_normalization_167/batchnorm/ReadVariableOp3^batch_normalization_167/batchnorm/ReadVariableOp_13^batch_normalization_167/batchnorm/ReadVariableOp_25^batch_normalization_167/batchnorm/mul/ReadVariableOp"^conv2d_123/BiasAdd/ReadVariableOp!^conv2d_123/Conv2D/ReadVariableOp"^conv2d_124/BiasAdd/ReadVariableOp!^conv2d_124/Conv2D/ReadVariableOp"^conv2d_125/BiasAdd/ReadVariableOp!^conv2d_125/Conv2D/ReadVariableOp!^dense_123/BiasAdd/ReadVariableOp ^dense_123/MatMul/ReadVariableOp!^dense_124/BiasAdd/ReadVariableOp ^dense_124/MatMul/ReadVariableOp!^dense_125/BiasAdd/ReadVariableOp ^dense_125/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2r
7batch_normalization_164/FusedBatchNormV3/ReadVariableOp7batch_normalization_164/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_164/FusedBatchNormV3/ReadVariableOp_19batch_normalization_164/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_164/ReadVariableOp&batch_normalization_164/ReadVariableOp2T
(batch_normalization_164/ReadVariableOp_1(batch_normalization_164/ReadVariableOp_12r
7batch_normalization_165/FusedBatchNormV3/ReadVariableOp7batch_normalization_165/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_165/FusedBatchNormV3/ReadVariableOp_19batch_normalization_165/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_165/ReadVariableOp&batch_normalization_165/ReadVariableOp2T
(batch_normalization_165/ReadVariableOp_1(batch_normalization_165/ReadVariableOp_12r
7batch_normalization_166/FusedBatchNormV3/ReadVariableOp7batch_normalization_166/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_166/FusedBatchNormV3/ReadVariableOp_19batch_normalization_166/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_166/ReadVariableOp&batch_normalization_166/ReadVariableOp2T
(batch_normalization_166/ReadVariableOp_1(batch_normalization_166/ReadVariableOp_12d
0batch_normalization_167/batchnorm/ReadVariableOp0batch_normalization_167/batchnorm/ReadVariableOp2h
2batch_normalization_167/batchnorm/ReadVariableOp_12batch_normalization_167/batchnorm/ReadVariableOp_12h
2batch_normalization_167/batchnorm/ReadVariableOp_22batch_normalization_167/batchnorm/ReadVariableOp_22l
4batch_normalization_167/batchnorm/mul/ReadVariableOp4batch_normalization_167/batchnorm/mul/ReadVariableOp2F
!conv2d_123/BiasAdd/ReadVariableOp!conv2d_123/BiasAdd/ReadVariableOp2D
 conv2d_123/Conv2D/ReadVariableOp conv2d_123/Conv2D/ReadVariableOp2F
!conv2d_124/BiasAdd/ReadVariableOp!conv2d_124/BiasAdd/ReadVariableOp2D
 conv2d_124/Conv2D/ReadVariableOp conv2d_124/Conv2D/ReadVariableOp2F
!conv2d_125/BiasAdd/ReadVariableOp!conv2d_125/BiasAdd/ReadVariableOp2D
 conv2d_125/Conv2D/ReadVariableOp conv2d_125/Conv2D/ReadVariableOp2D
 dense_123/BiasAdd/ReadVariableOp dense_123/BiasAdd/ReadVariableOp2B
dense_123/MatMul/ReadVariableOpdense_123/MatMul/ReadVariableOp2D
 dense_124/BiasAdd/ReadVariableOp dense_124/BiasAdd/ReadVariableOp2B
dense_124/MatMul/ReadVariableOpdense_124/MatMul/ReadVariableOp2D
 dense_125/BiasAdd/ReadVariableOp dense_125/BiasAdd/ReadVariableOp2B
dense_125/MatMul/ReadVariableOpdense_125/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_165_layer_call_fn_352859

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
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_3514112
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
?
?
+__inference_conv2d_123_layer_call_fn_352577

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
F__inference_conv2d_123_layer_call_and_return_conditional_losses_3512502
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
?	
?
E__inference_dense_123_layer_call_and_return_conditional_losses_353050

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
?
f
J__inference_activation_206_layer_call_and_return_conditional_losses_352739

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
?
f
J__inference_activation_209_layer_call_and_return_conditional_losses_351728

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
?
f
J__inference_activation_209_layer_call_and_return_conditional_losses_353202

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
?	
?
E__inference_dense_124_layer_call_and_return_conditional_losses_353188

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
?

*__inference_dense_125_layer_call_fn_353226

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
E__inference_dense_125_layer_call_and_return_conditional_losses_3517462
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
e
F__inference_dropout_41_layer_call_and_return_conditional_losses_353163

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
?
d
F__inference_dropout_41_layer_call_and_return_conditional_losses_353168

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
?
?
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_350810

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
?
?
+__inference_conv2d_124_layer_call_fn_352734

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
F__inference_conv2d_124_layer_call_and_return_conditional_losses_3513632
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
?^
?

D__inference_model_41_layer_call_and_return_conditional_losses_352067

inputs
conv2d_123_351990
conv2d_123_351992"
batch_normalization_164_351996"
batch_normalization_164_351998"
batch_normalization_164_352000"
batch_normalization_164_352002
conv2d_124_352006
conv2d_124_352008"
batch_normalization_165_352012"
batch_normalization_165_352014"
batch_normalization_165_352016"
batch_normalization_165_352018
conv2d_125_352022
conv2d_125_352024"
batch_normalization_166_352028"
batch_normalization_166_352030"
batch_normalization_166_352032"
batch_normalization_166_352034
dense_123_352039
dense_123_352041"
batch_normalization_167_352045"
batch_normalization_167_352047"
batch_normalization_167_352049"
batch_normalization_167_352051
dense_124_352055
dense_124_352057
dense_125_352061
dense_125_352063
identity??/batch_normalization_164/StatefulPartitionedCall?/batch_normalization_165/StatefulPartitionedCall?/batch_normalization_166/StatefulPartitionedCall?/batch_normalization_167/StatefulPartitionedCall?"conv2d_123/StatefulPartitionedCall?"conv2d_124/StatefulPartitionedCall?"conv2d_125/StatefulPartitionedCall?!dense_123/StatefulPartitionedCall?!dense_124/StatefulPartitionedCall?!dense_125/StatefulPartitionedCall?
"conv2d_123/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_123_351990conv2d_123_351992*
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
F__inference_conv2d_123_layer_call_and_return_conditional_losses_3512502$
"conv2d_123/StatefulPartitionedCall?
activation_205/PartitionedCallPartitionedCall+conv2d_123/StatefulPartitionedCall:output:0*
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
J__inference_activation_205_layer_call_and_return_conditional_losses_3512712 
activation_205/PartitionedCall?
/batch_normalization_164/StatefulPartitionedCallStatefulPartitionedCall'activation_205/PartitionedCall:output:0batch_normalization_164_351996batch_normalization_164_351998batch_normalization_164_352000batch_normalization_164_352002*
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
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_35131621
/batch_normalization_164/StatefulPartitionedCall?
!max_pooling2d_123/PartitionedCallPartitionedCall8batch_normalization_164/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_123_layer_call_and_return_conditional_losses_3508582#
!max_pooling2d_123/PartitionedCall?
"conv2d_124/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_123/PartitionedCall:output:0conv2d_124_352006conv2d_124_352008*
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
F__inference_conv2d_124_layer_call_and_return_conditional_losses_3513632$
"conv2d_124/StatefulPartitionedCall?
activation_206/PartitionedCallPartitionedCall+conv2d_124/StatefulPartitionedCall:output:0*
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
J__inference_activation_206_layer_call_and_return_conditional_losses_3513842 
activation_206/PartitionedCall?
/batch_normalization_165/StatefulPartitionedCallStatefulPartitionedCall'activation_206/PartitionedCall:output:0batch_normalization_165_352012batch_normalization_165_352014batch_normalization_165_352016batch_normalization_165_352018*
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
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_35142921
/batch_normalization_165/StatefulPartitionedCall?
!max_pooling2d_124/PartitionedCallPartitionedCall8batch_normalization_165/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_124_layer_call_and_return_conditional_losses_3509742#
!max_pooling2d_124/PartitionedCall?
"conv2d_125/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_124/PartitionedCall:output:0conv2d_125_352022conv2d_125_352024*
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
F__inference_conv2d_125_layer_call_and_return_conditional_losses_3514762$
"conv2d_125/StatefulPartitionedCall?
activation_207/PartitionedCallPartitionedCall+conv2d_125/StatefulPartitionedCall:output:0*
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
J__inference_activation_207_layer_call_and_return_conditional_losses_3514972 
activation_207/PartitionedCall?
/batch_normalization_166/StatefulPartitionedCallStatefulPartitionedCall'activation_207/PartitionedCall:output:0batch_normalization_166_352028batch_normalization_166_352030batch_normalization_166_352032batch_normalization_166_352034*
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
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_35154221
/batch_normalization_166/StatefulPartitionedCall?
!max_pooling2d_125/PartitionedCallPartitionedCall8batch_normalization_166/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_125_layer_call_and_return_conditional_losses_3510902#
!max_pooling2d_125/PartitionedCall?
flatten_41/PartitionedCallPartitionedCall*max_pooling2d_125/PartitionedCall:output:0*
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
F__inference_flatten_41_layer_call_and_return_conditional_losses_3515852
flatten_41/PartitionedCall?
!dense_123/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_123_352039dense_123_352041*
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
E__inference_dense_123_layer_call_and_return_conditional_losses_3516032#
!dense_123/StatefulPartitionedCall?
activation_208/PartitionedCallPartitionedCall*dense_123/StatefulPartitionedCall:output:0*
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
J__inference_activation_208_layer_call_and_return_conditional_losses_3516242 
activation_208/PartitionedCall?
/batch_normalization_167/StatefulPartitionedCallStatefulPartitionedCall'activation_208/PartitionedCall:output:0batch_normalization_167_352045batch_normalization_167_352047batch_normalization_167_352049batch_normalization_167_352051*
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
S__inference_batch_normalization_167_layer_call_and_return_conditional_losses_35122521
/batch_normalization_167/StatefulPartitionedCall?
dropout_41/PartitionedCallPartitionedCall8batch_normalization_167/StatefulPartitionedCall:output:0*
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
F__inference_dropout_41_layer_call_and_return_conditional_losses_3516842
dropout_41/PartitionedCall?
!dense_124/StatefulPartitionedCallStatefulPartitionedCall#dropout_41/PartitionedCall:output:0dense_124_352055dense_124_352057*
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
E__inference_dense_124_layer_call_and_return_conditional_losses_3517072#
!dense_124/StatefulPartitionedCall?
activation_209/PartitionedCallPartitionedCall*dense_124/StatefulPartitionedCall:output:0*
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
J__inference_activation_209_layer_call_and_return_conditional_losses_3517282 
activation_209/PartitionedCall?
!dense_125/StatefulPartitionedCallStatefulPartitionedCall'activation_209/PartitionedCall:output:0dense_125_352061dense_125_352063*
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
E__inference_dense_125_layer_call_and_return_conditional_losses_3517462#
!dense_125/StatefulPartitionedCall?
IdentityIdentity*dense_125/StatefulPartitionedCall:output:00^batch_normalization_164/StatefulPartitionedCall0^batch_normalization_165/StatefulPartitionedCall0^batch_normalization_166/StatefulPartitionedCall0^batch_normalization_167/StatefulPartitionedCall#^conv2d_123/StatefulPartitionedCall#^conv2d_124/StatefulPartitionedCall#^conv2d_125/StatefulPartitionedCall"^dense_123/StatefulPartitionedCall"^dense_124/StatefulPartitionedCall"^dense_125/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2b
/batch_normalization_164/StatefulPartitionedCall/batch_normalization_164/StatefulPartitionedCall2b
/batch_normalization_165/StatefulPartitionedCall/batch_normalization_165/StatefulPartitionedCall2b
/batch_normalization_166/StatefulPartitionedCall/batch_normalization_166/StatefulPartitionedCall2b
/batch_normalization_167/StatefulPartitionedCall/batch_normalization_167/StatefulPartitionedCall2H
"conv2d_123/StatefulPartitionedCall"conv2d_123/StatefulPartitionedCall2H
"conv2d_124/StatefulPartitionedCall"conv2d_124/StatefulPartitionedCall2H
"conv2d_125/StatefulPartitionedCall"conv2d_125/StatefulPartitionedCall2F
!dense_123/StatefulPartitionedCall!dense_123/StatefulPartitionedCall2F
!dense_124/StatefulPartitionedCall!dense_124/StatefulPartitionedCall2F
!dense_125/StatefulPartitionedCall!dense_125/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_351411

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
?
?
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_350841

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
?
f
J__inference_activation_206_layer_call_and_return_conditional_losses_351384

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
?
i
M__inference_max_pooling2d_124_layer_call_and_return_conditional_losses_350974

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
?
?
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_352625

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
?
?
)__inference_model_41_layer_call_fn_351985
input_42
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
StatefulPartitionedCallStatefulPartitionedCallinput_42unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
D__inference_model_41_layer_call_and_return_conditional_losses_3519262
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
input_42
??
?
D__inference_model_41_layer_call_and_return_conditional_losses_352327

inputs-
)conv2d_123_conv2d_readvariableop_resource.
*conv2d_123_biasadd_readvariableop_resource3
/batch_normalization_164_readvariableop_resource5
1batch_normalization_164_readvariableop_1_resourceD
@batch_normalization_164_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_164_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_124_conv2d_readvariableop_resource.
*conv2d_124_biasadd_readvariableop_resource3
/batch_normalization_165_readvariableop_resource5
1batch_normalization_165_readvariableop_1_resourceD
@batch_normalization_165_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_165_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_125_conv2d_readvariableop_resource.
*conv2d_125_biasadd_readvariableop_resource3
/batch_normalization_166_readvariableop_resource5
1batch_normalization_166_readvariableop_1_resourceD
@batch_normalization_166_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_166_fusedbatchnormv3_readvariableop_1_resource,
(dense_123_matmul_readvariableop_resource-
)dense_123_biasadd_readvariableop_resource2
.batch_normalization_167_assignmovingavg_3522814
0batch_normalization_167_assignmovingavg_1_352287A
=batch_normalization_167_batchnorm_mul_readvariableop_resource=
9batch_normalization_167_batchnorm_readvariableop_resource,
(dense_124_matmul_readvariableop_resource-
)dense_124_biasadd_readvariableop_resource,
(dense_125_matmul_readvariableop_resource-
)dense_125_biasadd_readvariableop_resource
identity??&batch_normalization_164/AssignNewValue?(batch_normalization_164/AssignNewValue_1?7batch_normalization_164/FusedBatchNormV3/ReadVariableOp?9batch_normalization_164/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_164/ReadVariableOp?(batch_normalization_164/ReadVariableOp_1?&batch_normalization_165/AssignNewValue?(batch_normalization_165/AssignNewValue_1?7batch_normalization_165/FusedBatchNormV3/ReadVariableOp?9batch_normalization_165/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_165/ReadVariableOp?(batch_normalization_165/ReadVariableOp_1?&batch_normalization_166/AssignNewValue?(batch_normalization_166/AssignNewValue_1?7batch_normalization_166/FusedBatchNormV3/ReadVariableOp?9batch_normalization_166/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_166/ReadVariableOp?(batch_normalization_166/ReadVariableOp_1?;batch_normalization_167/AssignMovingAvg/AssignSubVariableOp?6batch_normalization_167/AssignMovingAvg/ReadVariableOp?=batch_normalization_167/AssignMovingAvg_1/AssignSubVariableOp?8batch_normalization_167/AssignMovingAvg_1/ReadVariableOp?0batch_normalization_167/batchnorm/ReadVariableOp?4batch_normalization_167/batchnorm/mul/ReadVariableOp?!conv2d_123/BiasAdd/ReadVariableOp? conv2d_123/Conv2D/ReadVariableOp?!conv2d_124/BiasAdd/ReadVariableOp? conv2d_124/Conv2D/ReadVariableOp?!conv2d_125/BiasAdd/ReadVariableOp? conv2d_125/Conv2D/ReadVariableOp? dense_123/BiasAdd/ReadVariableOp?dense_123/MatMul/ReadVariableOp? dense_124/BiasAdd/ReadVariableOp?dense_124/MatMul/ReadVariableOp? dense_125/BiasAdd/ReadVariableOp?dense_125/MatMul/ReadVariableOp?
 conv2d_123/Conv2D/ReadVariableOpReadVariableOp)conv2d_123_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_123/Conv2D/ReadVariableOp?
conv2d_123/Conv2DConv2Dinputs(conv2d_123/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2
conv2d_123/Conv2D?
!conv2d_123/BiasAdd/ReadVariableOpReadVariableOp*conv2d_123_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_123/BiasAdd/ReadVariableOp?
conv2d_123/BiasAddBiasAddconv2d_123/Conv2D:output:0)conv2d_123/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  2
conv2d_123/BiasAdd?
activation_205/ReluReluconv2d_123/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  2
activation_205/Relu?
&batch_normalization_164/ReadVariableOpReadVariableOp/batch_normalization_164_readvariableop_resource*
_output_shapes
:*
dtype02(
&batch_normalization_164/ReadVariableOp?
(batch_normalization_164/ReadVariableOp_1ReadVariableOp1batch_normalization_164_readvariableop_1_resource*
_output_shapes
:*
dtype02*
(batch_normalization_164/ReadVariableOp_1?
7batch_normalization_164/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_164_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype029
7batch_normalization_164/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_164/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_164_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02;
9batch_normalization_164/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_164/FusedBatchNormV3FusedBatchNormV3!activation_205/Relu:activations:0.batch_normalization_164/ReadVariableOp:value:00batch_normalization_164/ReadVariableOp_1:value:0?batch_normalization_164/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_164/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_164/FusedBatchNormV3?
&batch_normalization_164/AssignNewValueAssignVariableOp@batch_normalization_164_fusedbatchnormv3_readvariableop_resource5batch_normalization_164/FusedBatchNormV3:batch_mean:08^batch_normalization_164/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*S
_classI
GEloc:@batch_normalization_164/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_164/AssignNewValue?
(batch_normalization_164/AssignNewValue_1AssignVariableOpBbatch_normalization_164_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_164/FusedBatchNormV3:batch_variance:0:^batch_normalization_164/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*U
_classK
IGloc:@batch_normalization_164/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_164/AssignNewValue_1?
max_pooling2d_123/MaxPoolMaxPool,batch_normalization_164/FusedBatchNormV3:y:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_123/MaxPool?
 conv2d_124/Conv2D/ReadVariableOpReadVariableOp)conv2d_124_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_124/Conv2D/ReadVariableOp?
conv2d_124/Conv2DConv2D"max_pooling2d_123/MaxPool:output:0(conv2d_124/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_124/Conv2D?
!conv2d_124/BiasAdd/ReadVariableOpReadVariableOp*conv2d_124_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_124/BiasAdd/ReadVariableOp?
conv2d_124/BiasAddBiasAddconv2d_124/Conv2D:output:0)conv2d_124/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_124/BiasAdd?
activation_206/ReluReluconv2d_124/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
activation_206/Relu?
&batch_normalization_165/ReadVariableOpReadVariableOp/batch_normalization_165_readvariableop_resource*
_output_shapes
: *
dtype02(
&batch_normalization_165/ReadVariableOp?
(batch_normalization_165/ReadVariableOp_1ReadVariableOp1batch_normalization_165_readvariableop_1_resource*
_output_shapes
: *
dtype02*
(batch_normalization_165/ReadVariableOp_1?
7batch_normalization_165/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_165_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype029
7batch_normalization_165/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_165/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_165_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02;
9batch_normalization_165/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_165/FusedBatchNormV3FusedBatchNormV3!activation_206/Relu:activations:0.batch_normalization_165/ReadVariableOp:value:00batch_normalization_165/ReadVariableOp_1:value:0?batch_normalization_165/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_165/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_165/FusedBatchNormV3?
&batch_normalization_165/AssignNewValueAssignVariableOp@batch_normalization_165_fusedbatchnormv3_readvariableop_resource5batch_normalization_165/FusedBatchNormV3:batch_mean:08^batch_normalization_165/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*S
_classI
GEloc:@batch_normalization_165/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_165/AssignNewValue?
(batch_normalization_165/AssignNewValue_1AssignVariableOpBbatch_normalization_165_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_165/FusedBatchNormV3:batch_variance:0:^batch_normalization_165/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*U
_classK
IGloc:@batch_normalization_165/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_165/AssignNewValue_1?
max_pooling2d_124/MaxPoolMaxPool,batch_normalization_165/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_124/MaxPool?
 conv2d_125/Conv2D/ReadVariableOpReadVariableOp)conv2d_125_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_125/Conv2D/ReadVariableOp?
conv2d_125/Conv2DConv2D"max_pooling2d_124/MaxPool:output:0(conv2d_125/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_125/Conv2D?
!conv2d_125/BiasAdd/ReadVariableOpReadVariableOp*conv2d_125_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_125/BiasAdd/ReadVariableOp?
conv2d_125/BiasAddBiasAddconv2d_125/Conv2D:output:0)conv2d_125/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_125/BiasAdd?
activation_207/ReluReluconv2d_125/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_207/Relu?
&batch_normalization_166/ReadVariableOpReadVariableOp/batch_normalization_166_readvariableop_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_166/ReadVariableOp?
(batch_normalization_166/ReadVariableOp_1ReadVariableOp1batch_normalization_166_readvariableop_1_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_166/ReadVariableOp_1?
7batch_normalization_166/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_166_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype029
7batch_normalization_166/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_166/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_166_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9batch_normalization_166/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_166/FusedBatchNormV3FusedBatchNormV3!activation_207/Relu:activations:0.batch_normalization_166/ReadVariableOp:value:00batch_normalization_166/ReadVariableOp_1:value:0?batch_normalization_166/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_166/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_166/FusedBatchNormV3?
&batch_normalization_166/AssignNewValueAssignVariableOp@batch_normalization_166_fusedbatchnormv3_readvariableop_resource5batch_normalization_166/FusedBatchNormV3:batch_mean:08^batch_normalization_166/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*S
_classI
GEloc:@batch_normalization_166/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_166/AssignNewValue?
(batch_normalization_166/AssignNewValue_1AssignVariableOpBbatch_normalization_166_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_166/FusedBatchNormV3:batch_variance:0:^batch_normalization_166/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*U
_classK
IGloc:@batch_normalization_166/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_166/AssignNewValue_1?
max_pooling2d_125/MaxPoolMaxPool,batch_normalization_166/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_125/MaxPoolu
flatten_41/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_41/Const?
flatten_41/ReshapeReshape"max_pooling2d_125/MaxPool:output:0flatten_41/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_41/Reshape?
dense_123/MatMul/ReadVariableOpReadVariableOp(dense_123_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
dense_123/MatMul/ReadVariableOp?
dense_123/MatMulMatMulflatten_41/Reshape:output:0'dense_123/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_123/MatMul?
 dense_123/BiasAdd/ReadVariableOpReadVariableOp)dense_123_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_123/BiasAdd/ReadVariableOp?
dense_123/BiasAddBiasAdddense_123/MatMul:product:0(dense_123/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_123/BiasAdd?
activation_208/ReluReludense_123/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_208/Relu?
6batch_normalization_167/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 28
6batch_normalization_167/moments/mean/reduction_indices?
$batch_normalization_167/moments/meanMean!activation_208/Relu:activations:0?batch_normalization_167/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2&
$batch_normalization_167/moments/mean?
,batch_normalization_167/moments/StopGradientStopGradient-batch_normalization_167/moments/mean:output:0*
T0*
_output_shapes

:2.
,batch_normalization_167/moments/StopGradient?
1batch_normalization_167/moments/SquaredDifferenceSquaredDifference!activation_208/Relu:activations:05batch_normalization_167/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????23
1batch_normalization_167/moments/SquaredDifference?
:batch_normalization_167/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2<
:batch_normalization_167/moments/variance/reduction_indices?
(batch_normalization_167/moments/varianceMean5batch_normalization_167/moments/SquaredDifference:z:0Cbatch_normalization_167/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2*
(batch_normalization_167/moments/variance?
'batch_normalization_167/moments/SqueezeSqueeze-batch_normalization_167/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2)
'batch_normalization_167/moments/Squeeze?
)batch_normalization_167/moments/Squeeze_1Squeeze1batch_normalization_167/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2+
)batch_normalization_167/moments/Squeeze_1?
-batch_normalization_167/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_167/AssignMovingAvg/352281*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_167/AssignMovingAvg/decay?
6batch_normalization_167/AssignMovingAvg/ReadVariableOpReadVariableOp.batch_normalization_167_assignmovingavg_352281*
_output_shapes
:*
dtype028
6batch_normalization_167/AssignMovingAvg/ReadVariableOp?
+batch_normalization_167/AssignMovingAvg/subSub>batch_normalization_167/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_167/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_167/AssignMovingAvg/352281*
_output_shapes
:2-
+batch_normalization_167/AssignMovingAvg/sub?
+batch_normalization_167/AssignMovingAvg/mulMul/batch_normalization_167/AssignMovingAvg/sub:z:06batch_normalization_167/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_167/AssignMovingAvg/352281*
_output_shapes
:2-
+batch_normalization_167/AssignMovingAvg/mul?
;batch_normalization_167/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp.batch_normalization_167_assignmovingavg_352281/batch_normalization_167/AssignMovingAvg/mul:z:07^batch_normalization_167/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_167/AssignMovingAvg/352281*
_output_shapes
 *
dtype02=
;batch_normalization_167/AssignMovingAvg/AssignSubVariableOp?
/batch_normalization_167/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_167/AssignMovingAvg_1/352287*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/batch_normalization_167/AssignMovingAvg_1/decay?
8batch_normalization_167/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch_normalization_167_assignmovingavg_1_352287*
_output_shapes
:*
dtype02:
8batch_normalization_167/AssignMovingAvg_1/ReadVariableOp?
-batch_normalization_167/AssignMovingAvg_1/subSub@batch_normalization_167/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_167/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_167/AssignMovingAvg_1/352287*
_output_shapes
:2/
-batch_normalization_167/AssignMovingAvg_1/sub?
-batch_normalization_167/AssignMovingAvg_1/mulMul1batch_normalization_167/AssignMovingAvg_1/sub:z:08batch_normalization_167/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_167/AssignMovingAvg_1/352287*
_output_shapes
:2/
-batch_normalization_167/AssignMovingAvg_1/mul?
=batch_normalization_167/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp0batch_normalization_167_assignmovingavg_1_3522871batch_normalization_167/AssignMovingAvg_1/mul:z:09^batch_normalization_167/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_167/AssignMovingAvg_1/352287*
_output_shapes
 *
dtype02?
=batch_normalization_167/AssignMovingAvg_1/AssignSubVariableOp?
'batch_normalization_167/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2)
'batch_normalization_167/batchnorm/add/y?
%batch_normalization_167/batchnorm/addAddV22batch_normalization_167/moments/Squeeze_1:output:00batch_normalization_167/batchnorm/add/y:output:0*
T0*
_output_shapes
:2'
%batch_normalization_167/batchnorm/add?
'batch_normalization_167/batchnorm/RsqrtRsqrt)batch_normalization_167/batchnorm/add:z:0*
T0*
_output_shapes
:2)
'batch_normalization_167/batchnorm/Rsqrt?
4batch_normalization_167/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_167_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization_167/batchnorm/mul/ReadVariableOp?
%batch_normalization_167/batchnorm/mulMul+batch_normalization_167/batchnorm/Rsqrt:y:0<batch_normalization_167/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2'
%batch_normalization_167/batchnorm/mul?
'batch_normalization_167/batchnorm/mul_1Mul!activation_208/Relu:activations:0)batch_normalization_167/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2)
'batch_normalization_167/batchnorm/mul_1?
'batch_normalization_167/batchnorm/mul_2Mul0batch_normalization_167/moments/Squeeze:output:0)batch_normalization_167/batchnorm/mul:z:0*
T0*
_output_shapes
:2)
'batch_normalization_167/batchnorm/mul_2?
0batch_normalization_167/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_167_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype022
0batch_normalization_167/batchnorm/ReadVariableOp?
%batch_normalization_167/batchnorm/subSub8batch_normalization_167/batchnorm/ReadVariableOp:value:0+batch_normalization_167/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2'
%batch_normalization_167/batchnorm/sub?
'batch_normalization_167/batchnorm/add_1AddV2+batch_normalization_167/batchnorm/mul_1:z:0)batch_normalization_167/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2)
'batch_normalization_167/batchnorm/add_1y
dropout_41/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_41/dropout/Const?
dropout_41/dropout/MulMul+batch_normalization_167/batchnorm/add_1:z:0!dropout_41/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_41/dropout/Mul?
dropout_41/dropout/ShapeShape+batch_normalization_167/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_41/dropout/Shape?
/dropout_41/dropout/random_uniform/RandomUniformRandomUniform!dropout_41/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype021
/dropout_41/dropout/random_uniform/RandomUniform?
!dropout_41/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_41/dropout/GreaterEqual/y?
dropout_41/dropout/GreaterEqualGreaterEqual8dropout_41/dropout/random_uniform/RandomUniform:output:0*dropout_41/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2!
dropout_41/dropout/GreaterEqual?
dropout_41/dropout/CastCast#dropout_41/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_41/dropout/Cast?
dropout_41/dropout/Mul_1Muldropout_41/dropout/Mul:z:0dropout_41/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_41/dropout/Mul_1?
dense_124/MatMul/ReadVariableOpReadVariableOp(dense_124_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_124/MatMul/ReadVariableOp?
dense_124/MatMulMatMuldropout_41/dropout/Mul_1:z:0'dense_124/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_124/MatMul?
 dense_124/BiasAdd/ReadVariableOpReadVariableOp)dense_124_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_124/BiasAdd/ReadVariableOp?
dense_124/BiasAddBiasAdddense_124/MatMul:product:0(dense_124/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_124/BiasAdd?
activation_209/ReluReludense_124/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_209/Relu?
dense_125/MatMul/ReadVariableOpReadVariableOp(dense_125_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_125/MatMul/ReadVariableOp?
dense_125/MatMulMatMul!activation_209/Relu:activations:0'dense_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_125/MatMul?
 dense_125/BiasAdd/ReadVariableOpReadVariableOp)dense_125_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_125/BiasAdd/ReadVariableOp?
dense_125/BiasAddBiasAdddense_125/MatMul:product:0(dense_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_125/BiasAdd?
IdentityIdentitydense_125/BiasAdd:output:0'^batch_normalization_164/AssignNewValue)^batch_normalization_164/AssignNewValue_18^batch_normalization_164/FusedBatchNormV3/ReadVariableOp:^batch_normalization_164/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_164/ReadVariableOp)^batch_normalization_164/ReadVariableOp_1'^batch_normalization_165/AssignNewValue)^batch_normalization_165/AssignNewValue_18^batch_normalization_165/FusedBatchNormV3/ReadVariableOp:^batch_normalization_165/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_165/ReadVariableOp)^batch_normalization_165/ReadVariableOp_1'^batch_normalization_166/AssignNewValue)^batch_normalization_166/AssignNewValue_18^batch_normalization_166/FusedBatchNormV3/ReadVariableOp:^batch_normalization_166/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_166/ReadVariableOp)^batch_normalization_166/ReadVariableOp_1<^batch_normalization_167/AssignMovingAvg/AssignSubVariableOp7^batch_normalization_167/AssignMovingAvg/ReadVariableOp>^batch_normalization_167/AssignMovingAvg_1/AssignSubVariableOp9^batch_normalization_167/AssignMovingAvg_1/ReadVariableOp1^batch_normalization_167/batchnorm/ReadVariableOp5^batch_normalization_167/batchnorm/mul/ReadVariableOp"^conv2d_123/BiasAdd/ReadVariableOp!^conv2d_123/Conv2D/ReadVariableOp"^conv2d_124/BiasAdd/ReadVariableOp!^conv2d_124/Conv2D/ReadVariableOp"^conv2d_125/BiasAdd/ReadVariableOp!^conv2d_125/Conv2D/ReadVariableOp!^dense_123/BiasAdd/ReadVariableOp ^dense_123/MatMul/ReadVariableOp!^dense_124/BiasAdd/ReadVariableOp ^dense_124/MatMul/ReadVariableOp!^dense_125/BiasAdd/ReadVariableOp ^dense_125/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2P
&batch_normalization_164/AssignNewValue&batch_normalization_164/AssignNewValue2T
(batch_normalization_164/AssignNewValue_1(batch_normalization_164/AssignNewValue_12r
7batch_normalization_164/FusedBatchNormV3/ReadVariableOp7batch_normalization_164/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_164/FusedBatchNormV3/ReadVariableOp_19batch_normalization_164/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_164/ReadVariableOp&batch_normalization_164/ReadVariableOp2T
(batch_normalization_164/ReadVariableOp_1(batch_normalization_164/ReadVariableOp_12P
&batch_normalization_165/AssignNewValue&batch_normalization_165/AssignNewValue2T
(batch_normalization_165/AssignNewValue_1(batch_normalization_165/AssignNewValue_12r
7batch_normalization_165/FusedBatchNormV3/ReadVariableOp7batch_normalization_165/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_165/FusedBatchNormV3/ReadVariableOp_19batch_normalization_165/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_165/ReadVariableOp&batch_normalization_165/ReadVariableOp2T
(batch_normalization_165/ReadVariableOp_1(batch_normalization_165/ReadVariableOp_12P
&batch_normalization_166/AssignNewValue&batch_normalization_166/AssignNewValue2T
(batch_normalization_166/AssignNewValue_1(batch_normalization_166/AssignNewValue_12r
7batch_normalization_166/FusedBatchNormV3/ReadVariableOp7batch_normalization_166/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_166/FusedBatchNormV3/ReadVariableOp_19batch_normalization_166/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_166/ReadVariableOp&batch_normalization_166/ReadVariableOp2T
(batch_normalization_166/ReadVariableOp_1(batch_normalization_166/ReadVariableOp_12z
;batch_normalization_167/AssignMovingAvg/AssignSubVariableOp;batch_normalization_167/AssignMovingAvg/AssignSubVariableOp2p
6batch_normalization_167/AssignMovingAvg/ReadVariableOp6batch_normalization_167/AssignMovingAvg/ReadVariableOp2~
=batch_normalization_167/AssignMovingAvg_1/AssignSubVariableOp=batch_normalization_167/AssignMovingAvg_1/AssignSubVariableOp2t
8batch_normalization_167/AssignMovingAvg_1/ReadVariableOp8batch_normalization_167/AssignMovingAvg_1/ReadVariableOp2d
0batch_normalization_167/batchnorm/ReadVariableOp0batch_normalization_167/batchnorm/ReadVariableOp2l
4batch_normalization_167/batchnorm/mul/ReadVariableOp4batch_normalization_167/batchnorm/mul/ReadVariableOp2F
!conv2d_123/BiasAdd/ReadVariableOp!conv2d_123/BiasAdd/ReadVariableOp2D
 conv2d_123/Conv2D/ReadVariableOp conv2d_123/Conv2D/ReadVariableOp2F
!conv2d_124/BiasAdd/ReadVariableOp!conv2d_124/BiasAdd/ReadVariableOp2D
 conv2d_124/Conv2D/ReadVariableOp conv2d_124/Conv2D/ReadVariableOp2F
!conv2d_125/BiasAdd/ReadVariableOp!conv2d_125/BiasAdd/ReadVariableOp2D
 conv2d_125/Conv2D/ReadVariableOp conv2d_125/Conv2D/ReadVariableOp2D
 dense_123/BiasAdd/ReadVariableOp dense_123/BiasAdd/ReadVariableOp2B
dense_123/MatMul/ReadVariableOpdense_123/MatMul/ReadVariableOp2D
 dense_124/BiasAdd/ReadVariableOp dense_124/BiasAdd/ReadVariableOp2B
dense_124/MatMul/ReadVariableOpdense_124/MatMul/ReadVariableOp2D
 dense_125/BiasAdd/ReadVariableOp dense_125/BiasAdd/ReadVariableOp2B
dense_125/MatMul/ReadVariableOpdense_125/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
F__inference_conv2d_124_layer_call_and_return_conditional_losses_352725

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
?
?
8__inference_batch_normalization_164_layer_call_fn_352651

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
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_3513162
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
?0
?
S__inference_batch_normalization_167_layer_call_and_return_conditional_losses_351192

inputs
assignmovingavg_351167
assignmovingavg_1_351173)
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
loc:@AssignMovingAvg/351167*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_351167*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/351167*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/351167*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_351167AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/351167*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/351173*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_351173*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/351173*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/351173*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_351173AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/351173*
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
8__inference_batch_normalization_167_layer_call_fn_353151

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
S__inference_batch_normalization_167_layer_call_and_return_conditional_losses_3512252
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
?D
?
__inference__traced_save_353339
file_prefix0
,savev2_conv2d_123_kernel_read_readvariableop.
*savev2_conv2d_123_bias_read_readvariableop<
8savev2_batch_normalization_164_gamma_read_readvariableop;
7savev2_batch_normalization_164_beta_read_readvariableopB
>savev2_batch_normalization_164_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_164_moving_variance_read_readvariableop0
,savev2_conv2d_124_kernel_read_readvariableop.
*savev2_conv2d_124_bias_read_readvariableop<
8savev2_batch_normalization_165_gamma_read_readvariableop;
7savev2_batch_normalization_165_beta_read_readvariableopB
>savev2_batch_normalization_165_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_165_moving_variance_read_readvariableop0
,savev2_conv2d_125_kernel_read_readvariableop.
*savev2_conv2d_125_bias_read_readvariableop<
8savev2_batch_normalization_166_gamma_read_readvariableop;
7savev2_batch_normalization_166_beta_read_readvariableopB
>savev2_batch_normalization_166_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_166_moving_variance_read_readvariableop/
+savev2_dense_123_kernel_read_readvariableop-
)savev2_dense_123_bias_read_readvariableop<
8savev2_batch_normalization_167_gamma_read_readvariableop;
7savev2_batch_normalization_167_beta_read_readvariableopB
>savev2_batch_normalization_167_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_167_moving_variance_read_readvariableop/
+savev2_dense_124_kernel_read_readvariableop-
)savev2_dense_124_bias_read_readvariableop/
+savev2_dense_125_kernel_read_readvariableop-
)savev2_dense_125_bias_read_readvariableop$
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_123_kernel_read_readvariableop*savev2_conv2d_123_bias_read_readvariableop8savev2_batch_normalization_164_gamma_read_readvariableop7savev2_batch_normalization_164_beta_read_readvariableop>savev2_batch_normalization_164_moving_mean_read_readvariableopBsavev2_batch_normalization_164_moving_variance_read_readvariableop,savev2_conv2d_124_kernel_read_readvariableop*savev2_conv2d_124_bias_read_readvariableop8savev2_batch_normalization_165_gamma_read_readvariableop7savev2_batch_normalization_165_beta_read_readvariableop>savev2_batch_normalization_165_moving_mean_read_readvariableopBsavev2_batch_normalization_165_moving_variance_read_readvariableop,savev2_conv2d_125_kernel_read_readvariableop*savev2_conv2d_125_bias_read_readvariableop8savev2_batch_normalization_166_gamma_read_readvariableop7savev2_batch_normalization_166_beta_read_readvariableop>savev2_batch_normalization_166_moving_mean_read_readvariableopBsavev2_batch_normalization_166_moving_variance_read_readvariableop+savev2_dense_123_kernel_read_readvariableop)savev2_dense_123_bias_read_readvariableop8savev2_batch_normalization_167_gamma_read_readvariableop7savev2_batch_normalization_167_beta_read_readvariableop>savev2_batch_normalization_167_moving_mean_read_readvariableopBsavev2_batch_normalization_167_moving_variance_read_readvariableop+savev2_dense_124_kernel_read_readvariableop)savev2_dense_124_bias_read_readvariableop+savev2_dense_125_kernel_read_readvariableop)savev2_dense_125_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
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
?
f
J__inference_activation_208_layer_call_and_return_conditional_losses_351624

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
?
?
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_351316

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
?
?
8__inference_batch_normalization_165_layer_call_fn_352872

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
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_3514292
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
K
/__inference_activation_205_layer_call_fn_352587

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
J__inference_activation_205_layer_call_and_return_conditional_losses_3512712
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
?
?
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_352939

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
?
?
S__inference_batch_normalization_167_layer_call_and_return_conditional_losses_351225

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
G
+__inference_flatten_41_layer_call_fn_353040

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
F__inference_flatten_41_layer_call_and_return_conditional_losses_3515852
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
F__inference_conv2d_125_layer_call_and_return_conditional_losses_351476

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
?
i
M__inference_max_pooling2d_125_layer_call_and_return_conditional_losses_351090

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
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_352671

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
?
?
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_351429

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
?
?
+__inference_conv2d_125_layer_call_fn_352891

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
F__inference_conv2d_125_layer_call_and_return_conditional_losses_3514762
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
?
G
+__inference_dropout_41_layer_call_fn_353178

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
F__inference_dropout_41_layer_call_and_return_conditional_losses_3516842
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
?	
?
F__inference_conv2d_123_layer_call_and_return_conditional_losses_352568

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
?
K
/__inference_activation_207_layer_call_fn_352901

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
J__inference_activation_207_layer_call_and_return_conditional_losses_3514972
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
?
e
F__inference_dropout_41_layer_call_and_return_conditional_losses_351679

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
?
?
8__inference_batch_normalization_165_layer_call_fn_352808

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
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_3509572
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
?
N
2__inference_max_pooling2d_123_layer_call_fn_350864

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
M__inference_max_pooling2d_123_layer_call_and_return_conditional_losses_3508582
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
?
?
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_352782

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
??
?
"__inference__traced_restore_353439
file_prefix&
"assignvariableop_conv2d_123_kernel&
"assignvariableop_1_conv2d_123_bias4
0assignvariableop_2_batch_normalization_164_gamma3
/assignvariableop_3_batch_normalization_164_beta:
6assignvariableop_4_batch_normalization_164_moving_mean>
:assignvariableop_5_batch_normalization_164_moving_variance(
$assignvariableop_6_conv2d_124_kernel&
"assignvariableop_7_conv2d_124_bias4
0assignvariableop_8_batch_normalization_165_gamma3
/assignvariableop_9_batch_normalization_165_beta;
7assignvariableop_10_batch_normalization_165_moving_mean?
;assignvariableop_11_batch_normalization_165_moving_variance)
%assignvariableop_12_conv2d_125_kernel'
#assignvariableop_13_conv2d_125_bias5
1assignvariableop_14_batch_normalization_166_gamma4
0assignvariableop_15_batch_normalization_166_beta;
7assignvariableop_16_batch_normalization_166_moving_mean?
;assignvariableop_17_batch_normalization_166_moving_variance(
$assignvariableop_18_dense_123_kernel&
"assignvariableop_19_dense_123_bias5
1assignvariableop_20_batch_normalization_167_gamma4
0assignvariableop_21_batch_normalization_167_beta;
7assignvariableop_22_batch_normalization_167_moving_mean?
;assignvariableop_23_batch_normalization_167_moving_variance(
$assignvariableop_24_dense_124_kernel&
"assignvariableop_25_dense_124_bias(
$assignvariableop_26_dense_125_kernel&
"assignvariableop_27_dense_125_bias
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_123_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_123_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_164_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_164_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_164_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_164_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_124_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_124_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_165_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_165_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_165_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_165_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_125_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_125_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_166_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_166_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_166_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_166_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp$assignvariableop_18_dense_123_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_dense_123_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_167_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_167_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_167_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_167_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp$assignvariableop_24_dense_124_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp"assignvariableop_25_dense_124_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp$assignvariableop_26_dense_125_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp"assignvariableop_27_dense_125_biasIdentity_27:output:0"/device:CPU:0*
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
?
f
J__inference_activation_208_layer_call_and_return_conditional_losses_353064

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
?	
?
F__inference_conv2d_125_layer_call_and_return_conditional_losses_352882

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
?
?
)__inference_model_41_layer_call_fn_352558

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
D__inference_model_41_layer_call_and_return_conditional_losses_3520672
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
?	
?
E__inference_dense_124_layer_call_and_return_conditional_losses_351707

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
?
K
/__inference_activation_206_layer_call_fn_352744

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
J__inference_activation_206_layer_call_and_return_conditional_losses_3513842
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
?`
?

D__inference_model_41_layer_call_and_return_conditional_losses_351763
input_42
conv2d_123_351261
conv2d_123_351263"
batch_normalization_164_351343"
batch_normalization_164_351345"
batch_normalization_164_351347"
batch_normalization_164_351349
conv2d_124_351374
conv2d_124_351376"
batch_normalization_165_351456"
batch_normalization_165_351458"
batch_normalization_165_351460"
batch_normalization_165_351462
conv2d_125_351487
conv2d_125_351489"
batch_normalization_166_351569"
batch_normalization_166_351571"
batch_normalization_166_351573"
batch_normalization_166_351575
dense_123_351614
dense_123_351616"
batch_normalization_167_351658"
batch_normalization_167_351660"
batch_normalization_167_351662"
batch_normalization_167_351664
dense_124_351718
dense_124_351720
dense_125_351757
dense_125_351759
identity??/batch_normalization_164/StatefulPartitionedCall?/batch_normalization_165/StatefulPartitionedCall?/batch_normalization_166/StatefulPartitionedCall?/batch_normalization_167/StatefulPartitionedCall?"conv2d_123/StatefulPartitionedCall?"conv2d_124/StatefulPartitionedCall?"conv2d_125/StatefulPartitionedCall?!dense_123/StatefulPartitionedCall?!dense_124/StatefulPartitionedCall?!dense_125/StatefulPartitionedCall?"dropout_41/StatefulPartitionedCall?
"conv2d_123/StatefulPartitionedCallStatefulPartitionedCallinput_42conv2d_123_351261conv2d_123_351263*
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
F__inference_conv2d_123_layer_call_and_return_conditional_losses_3512502$
"conv2d_123/StatefulPartitionedCall?
activation_205/PartitionedCallPartitionedCall+conv2d_123/StatefulPartitionedCall:output:0*
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
J__inference_activation_205_layer_call_and_return_conditional_losses_3512712 
activation_205/PartitionedCall?
/batch_normalization_164/StatefulPartitionedCallStatefulPartitionedCall'activation_205/PartitionedCall:output:0batch_normalization_164_351343batch_normalization_164_351345batch_normalization_164_351347batch_normalization_164_351349*
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
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_35129821
/batch_normalization_164/StatefulPartitionedCall?
!max_pooling2d_123/PartitionedCallPartitionedCall8batch_normalization_164/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_123_layer_call_and_return_conditional_losses_3508582#
!max_pooling2d_123/PartitionedCall?
"conv2d_124/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_123/PartitionedCall:output:0conv2d_124_351374conv2d_124_351376*
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
F__inference_conv2d_124_layer_call_and_return_conditional_losses_3513632$
"conv2d_124/StatefulPartitionedCall?
activation_206/PartitionedCallPartitionedCall+conv2d_124/StatefulPartitionedCall:output:0*
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
J__inference_activation_206_layer_call_and_return_conditional_losses_3513842 
activation_206/PartitionedCall?
/batch_normalization_165/StatefulPartitionedCallStatefulPartitionedCall'activation_206/PartitionedCall:output:0batch_normalization_165_351456batch_normalization_165_351458batch_normalization_165_351460batch_normalization_165_351462*
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
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_35141121
/batch_normalization_165/StatefulPartitionedCall?
!max_pooling2d_124/PartitionedCallPartitionedCall8batch_normalization_165/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_124_layer_call_and_return_conditional_losses_3509742#
!max_pooling2d_124/PartitionedCall?
"conv2d_125/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_124/PartitionedCall:output:0conv2d_125_351487conv2d_125_351489*
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
F__inference_conv2d_125_layer_call_and_return_conditional_losses_3514762$
"conv2d_125/StatefulPartitionedCall?
activation_207/PartitionedCallPartitionedCall+conv2d_125/StatefulPartitionedCall:output:0*
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
J__inference_activation_207_layer_call_and_return_conditional_losses_3514972 
activation_207/PartitionedCall?
/batch_normalization_166/StatefulPartitionedCallStatefulPartitionedCall'activation_207/PartitionedCall:output:0batch_normalization_166_351569batch_normalization_166_351571batch_normalization_166_351573batch_normalization_166_351575*
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
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_35152421
/batch_normalization_166/StatefulPartitionedCall?
!max_pooling2d_125/PartitionedCallPartitionedCall8batch_normalization_166/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_125_layer_call_and_return_conditional_losses_3510902#
!max_pooling2d_125/PartitionedCall?
flatten_41/PartitionedCallPartitionedCall*max_pooling2d_125/PartitionedCall:output:0*
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
F__inference_flatten_41_layer_call_and_return_conditional_losses_3515852
flatten_41/PartitionedCall?
!dense_123/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_123_351614dense_123_351616*
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
E__inference_dense_123_layer_call_and_return_conditional_losses_3516032#
!dense_123/StatefulPartitionedCall?
activation_208/PartitionedCallPartitionedCall*dense_123/StatefulPartitionedCall:output:0*
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
J__inference_activation_208_layer_call_and_return_conditional_losses_3516242 
activation_208/PartitionedCall?
/batch_normalization_167/StatefulPartitionedCallStatefulPartitionedCall'activation_208/PartitionedCall:output:0batch_normalization_167_351658batch_normalization_167_351660batch_normalization_167_351662batch_normalization_167_351664*
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
S__inference_batch_normalization_167_layer_call_and_return_conditional_losses_35119221
/batch_normalization_167/StatefulPartitionedCall?
"dropout_41/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_167/StatefulPartitionedCall:output:0*
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
F__inference_dropout_41_layer_call_and_return_conditional_losses_3516792$
"dropout_41/StatefulPartitionedCall?
!dense_124/StatefulPartitionedCallStatefulPartitionedCall+dropout_41/StatefulPartitionedCall:output:0dense_124_351718dense_124_351720*
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
E__inference_dense_124_layer_call_and_return_conditional_losses_3517072#
!dense_124/StatefulPartitionedCall?
activation_209/PartitionedCallPartitionedCall*dense_124/StatefulPartitionedCall:output:0*
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
J__inference_activation_209_layer_call_and_return_conditional_losses_3517282 
activation_209/PartitionedCall?
!dense_125/StatefulPartitionedCallStatefulPartitionedCall'activation_209/PartitionedCall:output:0dense_125_351757dense_125_351759*
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
E__inference_dense_125_layer_call_and_return_conditional_losses_3517462#
!dense_125/StatefulPartitionedCall?
IdentityIdentity*dense_125/StatefulPartitionedCall:output:00^batch_normalization_164/StatefulPartitionedCall0^batch_normalization_165/StatefulPartitionedCall0^batch_normalization_166/StatefulPartitionedCall0^batch_normalization_167/StatefulPartitionedCall#^conv2d_123/StatefulPartitionedCall#^conv2d_124/StatefulPartitionedCall#^conv2d_125/StatefulPartitionedCall"^dense_123/StatefulPartitionedCall"^dense_124/StatefulPartitionedCall"^dense_125/StatefulPartitionedCall#^dropout_41/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2b
/batch_normalization_164/StatefulPartitionedCall/batch_normalization_164/StatefulPartitionedCall2b
/batch_normalization_165/StatefulPartitionedCall/batch_normalization_165/StatefulPartitionedCall2b
/batch_normalization_166/StatefulPartitionedCall/batch_normalization_166/StatefulPartitionedCall2b
/batch_normalization_167/StatefulPartitionedCall/batch_normalization_167/StatefulPartitionedCall2H
"conv2d_123/StatefulPartitionedCall"conv2d_123/StatefulPartitionedCall2H
"conv2d_124/StatefulPartitionedCall"conv2d_124/StatefulPartitionedCall2H
"conv2d_125/StatefulPartitionedCall"conv2d_125/StatefulPartitionedCall2F
!dense_123/StatefulPartitionedCall!dense_123/StatefulPartitionedCall2F
!dense_124/StatefulPartitionedCall!dense_124/StatefulPartitionedCall2F
!dense_125/StatefulPartitionedCall!dense_125/StatefulPartitionedCall2H
"dropout_41/StatefulPartitionedCall"dropout_41/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_42
?	
?
E__inference_dense_125_layer_call_and_return_conditional_losses_351746

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
?
?
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_350926

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
?
f
J__inference_activation_207_layer_call_and_return_conditional_losses_351497

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
?
i
M__inference_max_pooling2d_123_layer_call_and_return_conditional_losses_350858

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
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_351042

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
?^
?

D__inference_model_41_layer_call_and_return_conditional_losses_351843
input_42
conv2d_123_351766
conv2d_123_351768"
batch_normalization_164_351772"
batch_normalization_164_351774"
batch_normalization_164_351776"
batch_normalization_164_351778
conv2d_124_351782
conv2d_124_351784"
batch_normalization_165_351788"
batch_normalization_165_351790"
batch_normalization_165_351792"
batch_normalization_165_351794
conv2d_125_351798
conv2d_125_351800"
batch_normalization_166_351804"
batch_normalization_166_351806"
batch_normalization_166_351808"
batch_normalization_166_351810
dense_123_351815
dense_123_351817"
batch_normalization_167_351821"
batch_normalization_167_351823"
batch_normalization_167_351825"
batch_normalization_167_351827
dense_124_351831
dense_124_351833
dense_125_351837
dense_125_351839
identity??/batch_normalization_164/StatefulPartitionedCall?/batch_normalization_165/StatefulPartitionedCall?/batch_normalization_166/StatefulPartitionedCall?/batch_normalization_167/StatefulPartitionedCall?"conv2d_123/StatefulPartitionedCall?"conv2d_124/StatefulPartitionedCall?"conv2d_125/StatefulPartitionedCall?!dense_123/StatefulPartitionedCall?!dense_124/StatefulPartitionedCall?!dense_125/StatefulPartitionedCall?
"conv2d_123/StatefulPartitionedCallStatefulPartitionedCallinput_42conv2d_123_351766conv2d_123_351768*
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
F__inference_conv2d_123_layer_call_and_return_conditional_losses_3512502$
"conv2d_123/StatefulPartitionedCall?
activation_205/PartitionedCallPartitionedCall+conv2d_123/StatefulPartitionedCall:output:0*
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
J__inference_activation_205_layer_call_and_return_conditional_losses_3512712 
activation_205/PartitionedCall?
/batch_normalization_164/StatefulPartitionedCallStatefulPartitionedCall'activation_205/PartitionedCall:output:0batch_normalization_164_351772batch_normalization_164_351774batch_normalization_164_351776batch_normalization_164_351778*
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
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_35131621
/batch_normalization_164/StatefulPartitionedCall?
!max_pooling2d_123/PartitionedCallPartitionedCall8batch_normalization_164/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_123_layer_call_and_return_conditional_losses_3508582#
!max_pooling2d_123/PartitionedCall?
"conv2d_124/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_123/PartitionedCall:output:0conv2d_124_351782conv2d_124_351784*
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
F__inference_conv2d_124_layer_call_and_return_conditional_losses_3513632$
"conv2d_124/StatefulPartitionedCall?
activation_206/PartitionedCallPartitionedCall+conv2d_124/StatefulPartitionedCall:output:0*
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
J__inference_activation_206_layer_call_and_return_conditional_losses_3513842 
activation_206/PartitionedCall?
/batch_normalization_165/StatefulPartitionedCallStatefulPartitionedCall'activation_206/PartitionedCall:output:0batch_normalization_165_351788batch_normalization_165_351790batch_normalization_165_351792batch_normalization_165_351794*
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
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_35142921
/batch_normalization_165/StatefulPartitionedCall?
!max_pooling2d_124/PartitionedCallPartitionedCall8batch_normalization_165/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_124_layer_call_and_return_conditional_losses_3509742#
!max_pooling2d_124/PartitionedCall?
"conv2d_125/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_124/PartitionedCall:output:0conv2d_125_351798conv2d_125_351800*
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
F__inference_conv2d_125_layer_call_and_return_conditional_losses_3514762$
"conv2d_125/StatefulPartitionedCall?
activation_207/PartitionedCallPartitionedCall+conv2d_125/StatefulPartitionedCall:output:0*
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
J__inference_activation_207_layer_call_and_return_conditional_losses_3514972 
activation_207/PartitionedCall?
/batch_normalization_166/StatefulPartitionedCallStatefulPartitionedCall'activation_207/PartitionedCall:output:0batch_normalization_166_351804batch_normalization_166_351806batch_normalization_166_351808batch_normalization_166_351810*
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
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_35154221
/batch_normalization_166/StatefulPartitionedCall?
!max_pooling2d_125/PartitionedCallPartitionedCall8batch_normalization_166/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_125_layer_call_and_return_conditional_losses_3510902#
!max_pooling2d_125/PartitionedCall?
flatten_41/PartitionedCallPartitionedCall*max_pooling2d_125/PartitionedCall:output:0*
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
F__inference_flatten_41_layer_call_and_return_conditional_losses_3515852
flatten_41/PartitionedCall?
!dense_123/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_123_351815dense_123_351817*
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
E__inference_dense_123_layer_call_and_return_conditional_losses_3516032#
!dense_123/StatefulPartitionedCall?
activation_208/PartitionedCallPartitionedCall*dense_123/StatefulPartitionedCall:output:0*
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
J__inference_activation_208_layer_call_and_return_conditional_losses_3516242 
activation_208/PartitionedCall?
/batch_normalization_167/StatefulPartitionedCallStatefulPartitionedCall'activation_208/PartitionedCall:output:0batch_normalization_167_351821batch_normalization_167_351823batch_normalization_167_351825batch_normalization_167_351827*
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
S__inference_batch_normalization_167_layer_call_and_return_conditional_losses_35122521
/batch_normalization_167/StatefulPartitionedCall?
dropout_41/PartitionedCallPartitionedCall8batch_normalization_167/StatefulPartitionedCall:output:0*
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
F__inference_dropout_41_layer_call_and_return_conditional_losses_3516842
dropout_41/PartitionedCall?
!dense_124/StatefulPartitionedCallStatefulPartitionedCall#dropout_41/PartitionedCall:output:0dense_124_351831dense_124_351833*
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
E__inference_dense_124_layer_call_and_return_conditional_losses_3517072#
!dense_124/StatefulPartitionedCall?
activation_209/PartitionedCallPartitionedCall*dense_124/StatefulPartitionedCall:output:0*
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
J__inference_activation_209_layer_call_and_return_conditional_losses_3517282 
activation_209/PartitionedCall?
!dense_125/StatefulPartitionedCallStatefulPartitionedCall'activation_209/PartitionedCall:output:0dense_125_351837dense_125_351839*
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
E__inference_dense_125_layer_call_and_return_conditional_losses_3517462#
!dense_125/StatefulPartitionedCall?
IdentityIdentity*dense_125/StatefulPartitionedCall:output:00^batch_normalization_164/StatefulPartitionedCall0^batch_normalization_165/StatefulPartitionedCall0^batch_normalization_166/StatefulPartitionedCall0^batch_normalization_167/StatefulPartitionedCall#^conv2d_123/StatefulPartitionedCall#^conv2d_124/StatefulPartitionedCall#^conv2d_125/StatefulPartitionedCall"^dense_123/StatefulPartitionedCall"^dense_124/StatefulPartitionedCall"^dense_125/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2b
/batch_normalization_164/StatefulPartitionedCall/batch_normalization_164/StatefulPartitionedCall2b
/batch_normalization_165/StatefulPartitionedCall/batch_normalization_165/StatefulPartitionedCall2b
/batch_normalization_166/StatefulPartitionedCall/batch_normalization_166/StatefulPartitionedCall2b
/batch_normalization_167/StatefulPartitionedCall/batch_normalization_167/StatefulPartitionedCall2H
"conv2d_123/StatefulPartitionedCall"conv2d_123/StatefulPartitionedCall2H
"conv2d_124/StatefulPartitionedCall"conv2d_124/StatefulPartitionedCall2H
"conv2d_125/StatefulPartitionedCall"conv2d_125/StatefulPartitionedCall2F
!dense_123/StatefulPartitionedCall!dense_123/StatefulPartitionedCall2F
!dense_124/StatefulPartitionedCall!dense_124/StatefulPartitionedCall2F
!dense_125/StatefulPartitionedCall!dense_125/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_42
?
?
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_352985

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
?
?
8__inference_batch_normalization_166_layer_call_fn_353029

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
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_3515422
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
?
?
8__inference_batch_normalization_166_layer_call_fn_352965

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
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_3510732
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
?

*__inference_dense_123_layer_call_fn_353059

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
E__inference_dense_123_layer_call_and_return_conditional_losses_3516032
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
?
f
J__inference_activation_205_layer_call_and_return_conditional_losses_351271

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
?
K
/__inference_activation_209_layer_call_fn_353207

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
J__inference_activation_209_layer_call_and_return_conditional_losses_3517282
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
?
f
J__inference_activation_205_layer_call_and_return_conditional_losses_352582

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
?`
?

D__inference_model_41_layer_call_and_return_conditional_losses_351926

inputs
conv2d_123_351849
conv2d_123_351851"
batch_normalization_164_351855"
batch_normalization_164_351857"
batch_normalization_164_351859"
batch_normalization_164_351861
conv2d_124_351865
conv2d_124_351867"
batch_normalization_165_351871"
batch_normalization_165_351873"
batch_normalization_165_351875"
batch_normalization_165_351877
conv2d_125_351881
conv2d_125_351883"
batch_normalization_166_351887"
batch_normalization_166_351889"
batch_normalization_166_351891"
batch_normalization_166_351893
dense_123_351898
dense_123_351900"
batch_normalization_167_351904"
batch_normalization_167_351906"
batch_normalization_167_351908"
batch_normalization_167_351910
dense_124_351914
dense_124_351916
dense_125_351920
dense_125_351922
identity??/batch_normalization_164/StatefulPartitionedCall?/batch_normalization_165/StatefulPartitionedCall?/batch_normalization_166/StatefulPartitionedCall?/batch_normalization_167/StatefulPartitionedCall?"conv2d_123/StatefulPartitionedCall?"conv2d_124/StatefulPartitionedCall?"conv2d_125/StatefulPartitionedCall?!dense_123/StatefulPartitionedCall?!dense_124/StatefulPartitionedCall?!dense_125/StatefulPartitionedCall?"dropout_41/StatefulPartitionedCall?
"conv2d_123/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_123_351849conv2d_123_351851*
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
F__inference_conv2d_123_layer_call_and_return_conditional_losses_3512502$
"conv2d_123/StatefulPartitionedCall?
activation_205/PartitionedCallPartitionedCall+conv2d_123/StatefulPartitionedCall:output:0*
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
J__inference_activation_205_layer_call_and_return_conditional_losses_3512712 
activation_205/PartitionedCall?
/batch_normalization_164/StatefulPartitionedCallStatefulPartitionedCall'activation_205/PartitionedCall:output:0batch_normalization_164_351855batch_normalization_164_351857batch_normalization_164_351859batch_normalization_164_351861*
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
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_35129821
/batch_normalization_164/StatefulPartitionedCall?
!max_pooling2d_123/PartitionedCallPartitionedCall8batch_normalization_164/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_123_layer_call_and_return_conditional_losses_3508582#
!max_pooling2d_123/PartitionedCall?
"conv2d_124/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_123/PartitionedCall:output:0conv2d_124_351865conv2d_124_351867*
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
F__inference_conv2d_124_layer_call_and_return_conditional_losses_3513632$
"conv2d_124/StatefulPartitionedCall?
activation_206/PartitionedCallPartitionedCall+conv2d_124/StatefulPartitionedCall:output:0*
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
J__inference_activation_206_layer_call_and_return_conditional_losses_3513842 
activation_206/PartitionedCall?
/batch_normalization_165/StatefulPartitionedCallStatefulPartitionedCall'activation_206/PartitionedCall:output:0batch_normalization_165_351871batch_normalization_165_351873batch_normalization_165_351875batch_normalization_165_351877*
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
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_35141121
/batch_normalization_165/StatefulPartitionedCall?
!max_pooling2d_124/PartitionedCallPartitionedCall8batch_normalization_165/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_124_layer_call_and_return_conditional_losses_3509742#
!max_pooling2d_124/PartitionedCall?
"conv2d_125/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_124/PartitionedCall:output:0conv2d_125_351881conv2d_125_351883*
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
F__inference_conv2d_125_layer_call_and_return_conditional_losses_3514762$
"conv2d_125/StatefulPartitionedCall?
activation_207/PartitionedCallPartitionedCall+conv2d_125/StatefulPartitionedCall:output:0*
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
J__inference_activation_207_layer_call_and_return_conditional_losses_3514972 
activation_207/PartitionedCall?
/batch_normalization_166/StatefulPartitionedCallStatefulPartitionedCall'activation_207/PartitionedCall:output:0batch_normalization_166_351887batch_normalization_166_351889batch_normalization_166_351891batch_normalization_166_351893*
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
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_35152421
/batch_normalization_166/StatefulPartitionedCall?
!max_pooling2d_125/PartitionedCallPartitionedCall8batch_normalization_166/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_125_layer_call_and_return_conditional_losses_3510902#
!max_pooling2d_125/PartitionedCall?
flatten_41/PartitionedCallPartitionedCall*max_pooling2d_125/PartitionedCall:output:0*
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
F__inference_flatten_41_layer_call_and_return_conditional_losses_3515852
flatten_41/PartitionedCall?
!dense_123/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_123_351898dense_123_351900*
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
E__inference_dense_123_layer_call_and_return_conditional_losses_3516032#
!dense_123/StatefulPartitionedCall?
activation_208/PartitionedCallPartitionedCall*dense_123/StatefulPartitionedCall:output:0*
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
J__inference_activation_208_layer_call_and_return_conditional_losses_3516242 
activation_208/PartitionedCall?
/batch_normalization_167/StatefulPartitionedCallStatefulPartitionedCall'activation_208/PartitionedCall:output:0batch_normalization_167_351904batch_normalization_167_351906batch_normalization_167_351908batch_normalization_167_351910*
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
S__inference_batch_normalization_167_layer_call_and_return_conditional_losses_35119221
/batch_normalization_167/StatefulPartitionedCall?
"dropout_41/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_167/StatefulPartitionedCall:output:0*
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
F__inference_dropout_41_layer_call_and_return_conditional_losses_3516792$
"dropout_41/StatefulPartitionedCall?
!dense_124/StatefulPartitionedCallStatefulPartitionedCall+dropout_41/StatefulPartitionedCall:output:0dense_124_351914dense_124_351916*
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
E__inference_dense_124_layer_call_and_return_conditional_losses_3517072#
!dense_124/StatefulPartitionedCall?
activation_209/PartitionedCallPartitionedCall*dense_124/StatefulPartitionedCall:output:0*
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
J__inference_activation_209_layer_call_and_return_conditional_losses_3517282 
activation_209/PartitionedCall?
!dense_125/StatefulPartitionedCallStatefulPartitionedCall'activation_209/PartitionedCall:output:0dense_125_351920dense_125_351922*
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
E__inference_dense_125_layer_call_and_return_conditional_losses_3517462#
!dense_125/StatefulPartitionedCall?
IdentityIdentity*dense_125/StatefulPartitionedCall:output:00^batch_normalization_164/StatefulPartitionedCall0^batch_normalization_165/StatefulPartitionedCall0^batch_normalization_166/StatefulPartitionedCall0^batch_normalization_167/StatefulPartitionedCall#^conv2d_123/StatefulPartitionedCall#^conv2d_124/StatefulPartitionedCall#^conv2d_125/StatefulPartitionedCall"^dense_123/StatefulPartitionedCall"^dense_124/StatefulPartitionedCall"^dense_125/StatefulPartitionedCall#^dropout_41/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2b
/batch_normalization_164/StatefulPartitionedCall/batch_normalization_164/StatefulPartitionedCall2b
/batch_normalization_165/StatefulPartitionedCall/batch_normalization_165/StatefulPartitionedCall2b
/batch_normalization_166/StatefulPartitionedCall/batch_normalization_166/StatefulPartitionedCall2b
/batch_normalization_167/StatefulPartitionedCall/batch_normalization_167/StatefulPartitionedCall2H
"conv2d_123/StatefulPartitionedCall"conv2d_123/StatefulPartitionedCall2H
"conv2d_124/StatefulPartitionedCall"conv2d_124/StatefulPartitionedCall2H
"conv2d_125/StatefulPartitionedCall"conv2d_125/StatefulPartitionedCall2F
!dense_123/StatefulPartitionedCall!dense_123/StatefulPartitionedCall2F
!dense_124/StatefulPartitionedCall!dense_124/StatefulPartitionedCall2F
!dense_125/StatefulPartitionedCall!dense_125/StatefulPartitionedCall2H
"dropout_41/StatefulPartitionedCall"dropout_41/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_352846

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
?
?
8__inference_batch_normalization_164_layer_call_fn_352638

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
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_3512982
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
?
?
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_350957

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
?
?
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_351073

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
?
$__inference_signature_wrapper_352189
input_42
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
StatefulPartitionedCallStatefulPartitionedCallinput_42unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
!__inference__wrapped_model_3507482
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
input_42
?0
?
S__inference_batch_normalization_167_layer_call_and_return_conditional_losses_353105

inputs
assignmovingavg_353080
assignmovingavg_1_353086)
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
loc:@AssignMovingAvg/353080*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_353080*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/353080*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/353080*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_353080AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/353080*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/353086*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_353086*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/353086*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/353086*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_353086AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/353086*
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
?	
?
E__inference_dense_123_layer_call_and_return_conditional_losses_351603

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
?
N
2__inference_max_pooling2d_124_layer_call_fn_350980

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
M__inference_max_pooling2d_124_layer_call_and_return_conditional_losses_3509742
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
?
?
8__inference_batch_normalization_166_layer_call_fn_352952

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
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_3510422
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
ô
?
!__inference__wrapped_model_350748
input_426
2model_41_conv2d_123_conv2d_readvariableop_resource7
3model_41_conv2d_123_biasadd_readvariableop_resource<
8model_41_batch_normalization_164_readvariableop_resource>
:model_41_batch_normalization_164_readvariableop_1_resourceM
Imodel_41_batch_normalization_164_fusedbatchnormv3_readvariableop_resourceO
Kmodel_41_batch_normalization_164_fusedbatchnormv3_readvariableop_1_resource6
2model_41_conv2d_124_conv2d_readvariableop_resource7
3model_41_conv2d_124_biasadd_readvariableop_resource<
8model_41_batch_normalization_165_readvariableop_resource>
:model_41_batch_normalization_165_readvariableop_1_resourceM
Imodel_41_batch_normalization_165_fusedbatchnormv3_readvariableop_resourceO
Kmodel_41_batch_normalization_165_fusedbatchnormv3_readvariableop_1_resource6
2model_41_conv2d_125_conv2d_readvariableop_resource7
3model_41_conv2d_125_biasadd_readvariableop_resource<
8model_41_batch_normalization_166_readvariableop_resource>
:model_41_batch_normalization_166_readvariableop_1_resourceM
Imodel_41_batch_normalization_166_fusedbatchnormv3_readvariableop_resourceO
Kmodel_41_batch_normalization_166_fusedbatchnormv3_readvariableop_1_resource5
1model_41_dense_123_matmul_readvariableop_resource6
2model_41_dense_123_biasadd_readvariableop_resourceF
Bmodel_41_batch_normalization_167_batchnorm_readvariableop_resourceJ
Fmodel_41_batch_normalization_167_batchnorm_mul_readvariableop_resourceH
Dmodel_41_batch_normalization_167_batchnorm_readvariableop_1_resourceH
Dmodel_41_batch_normalization_167_batchnorm_readvariableop_2_resource5
1model_41_dense_124_matmul_readvariableop_resource6
2model_41_dense_124_biasadd_readvariableop_resource5
1model_41_dense_125_matmul_readvariableop_resource6
2model_41_dense_125_biasadd_readvariableop_resource
identity??@model_41/batch_normalization_164/FusedBatchNormV3/ReadVariableOp?Bmodel_41/batch_normalization_164/FusedBatchNormV3/ReadVariableOp_1?/model_41/batch_normalization_164/ReadVariableOp?1model_41/batch_normalization_164/ReadVariableOp_1?@model_41/batch_normalization_165/FusedBatchNormV3/ReadVariableOp?Bmodel_41/batch_normalization_165/FusedBatchNormV3/ReadVariableOp_1?/model_41/batch_normalization_165/ReadVariableOp?1model_41/batch_normalization_165/ReadVariableOp_1?@model_41/batch_normalization_166/FusedBatchNormV3/ReadVariableOp?Bmodel_41/batch_normalization_166/FusedBatchNormV3/ReadVariableOp_1?/model_41/batch_normalization_166/ReadVariableOp?1model_41/batch_normalization_166/ReadVariableOp_1?9model_41/batch_normalization_167/batchnorm/ReadVariableOp?;model_41/batch_normalization_167/batchnorm/ReadVariableOp_1?;model_41/batch_normalization_167/batchnorm/ReadVariableOp_2?=model_41/batch_normalization_167/batchnorm/mul/ReadVariableOp?*model_41/conv2d_123/BiasAdd/ReadVariableOp?)model_41/conv2d_123/Conv2D/ReadVariableOp?*model_41/conv2d_124/BiasAdd/ReadVariableOp?)model_41/conv2d_124/Conv2D/ReadVariableOp?*model_41/conv2d_125/BiasAdd/ReadVariableOp?)model_41/conv2d_125/Conv2D/ReadVariableOp?)model_41/dense_123/BiasAdd/ReadVariableOp?(model_41/dense_123/MatMul/ReadVariableOp?)model_41/dense_124/BiasAdd/ReadVariableOp?(model_41/dense_124/MatMul/ReadVariableOp?)model_41/dense_125/BiasAdd/ReadVariableOp?(model_41/dense_125/MatMul/ReadVariableOp?
)model_41/conv2d_123/Conv2D/ReadVariableOpReadVariableOp2model_41_conv2d_123_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02+
)model_41/conv2d_123/Conv2D/ReadVariableOp?
model_41/conv2d_123/Conv2DConv2Dinput_421model_41/conv2d_123/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2
model_41/conv2d_123/Conv2D?
*model_41/conv2d_123/BiasAdd/ReadVariableOpReadVariableOp3model_41_conv2d_123_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_41/conv2d_123/BiasAdd/ReadVariableOp?
model_41/conv2d_123/BiasAddBiasAdd#model_41/conv2d_123/Conv2D:output:02model_41/conv2d_123/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  2
model_41/conv2d_123/BiasAdd?
model_41/activation_205/ReluRelu$model_41/conv2d_123/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  2
model_41/activation_205/Relu?
/model_41/batch_normalization_164/ReadVariableOpReadVariableOp8model_41_batch_normalization_164_readvariableop_resource*
_output_shapes
:*
dtype021
/model_41/batch_normalization_164/ReadVariableOp?
1model_41/batch_normalization_164/ReadVariableOp_1ReadVariableOp:model_41_batch_normalization_164_readvariableop_1_resource*
_output_shapes
:*
dtype023
1model_41/batch_normalization_164/ReadVariableOp_1?
@model_41/batch_normalization_164/FusedBatchNormV3/ReadVariableOpReadVariableOpImodel_41_batch_normalization_164_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02B
@model_41/batch_normalization_164/FusedBatchNormV3/ReadVariableOp?
Bmodel_41/batch_normalization_164/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKmodel_41_batch_normalization_164_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02D
Bmodel_41/batch_normalization_164/FusedBatchNormV3/ReadVariableOp_1?
1model_41/batch_normalization_164/FusedBatchNormV3FusedBatchNormV3*model_41/activation_205/Relu:activations:07model_41/batch_normalization_164/ReadVariableOp:value:09model_41/batch_normalization_164/ReadVariableOp_1:value:0Hmodel_41/batch_normalization_164/FusedBatchNormV3/ReadVariableOp:value:0Jmodel_41/batch_normalization_164/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
is_training( 23
1model_41/batch_normalization_164/FusedBatchNormV3?
"model_41/max_pooling2d_123/MaxPoolMaxPool5model_41/batch_normalization_164/FusedBatchNormV3:y:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2$
"model_41/max_pooling2d_123/MaxPool?
)model_41/conv2d_124/Conv2D/ReadVariableOpReadVariableOp2model_41_conv2d_124_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02+
)model_41/conv2d_124/Conv2D/ReadVariableOp?
model_41/conv2d_124/Conv2DConv2D+model_41/max_pooling2d_123/MaxPool:output:01model_41/conv2d_124/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
model_41/conv2d_124/Conv2D?
*model_41/conv2d_124/BiasAdd/ReadVariableOpReadVariableOp3model_41_conv2d_124_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_41/conv2d_124/BiasAdd/ReadVariableOp?
model_41/conv2d_124/BiasAddBiasAdd#model_41/conv2d_124/Conv2D:output:02model_41/conv2d_124/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
model_41/conv2d_124/BiasAdd?
model_41/activation_206/ReluRelu$model_41/conv2d_124/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
model_41/activation_206/Relu?
/model_41/batch_normalization_165/ReadVariableOpReadVariableOp8model_41_batch_normalization_165_readvariableop_resource*
_output_shapes
: *
dtype021
/model_41/batch_normalization_165/ReadVariableOp?
1model_41/batch_normalization_165/ReadVariableOp_1ReadVariableOp:model_41_batch_normalization_165_readvariableop_1_resource*
_output_shapes
: *
dtype023
1model_41/batch_normalization_165/ReadVariableOp_1?
@model_41/batch_normalization_165/FusedBatchNormV3/ReadVariableOpReadVariableOpImodel_41_batch_normalization_165_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02B
@model_41/batch_normalization_165/FusedBatchNormV3/ReadVariableOp?
Bmodel_41/batch_normalization_165/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKmodel_41_batch_normalization_165_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02D
Bmodel_41/batch_normalization_165/FusedBatchNormV3/ReadVariableOp_1?
1model_41/batch_normalization_165/FusedBatchNormV3FusedBatchNormV3*model_41/activation_206/Relu:activations:07model_41/batch_normalization_165/ReadVariableOp:value:09model_41/batch_normalization_165/ReadVariableOp_1:value:0Hmodel_41/batch_normalization_165/FusedBatchNormV3/ReadVariableOp:value:0Jmodel_41/batch_normalization_165/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 23
1model_41/batch_normalization_165/FusedBatchNormV3?
"model_41/max_pooling2d_124/MaxPoolMaxPool5model_41/batch_normalization_165/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2$
"model_41/max_pooling2d_124/MaxPool?
)model_41/conv2d_125/Conv2D/ReadVariableOpReadVariableOp2model_41_conv2d_125_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02+
)model_41/conv2d_125/Conv2D/ReadVariableOp?
model_41/conv2d_125/Conv2DConv2D+model_41/max_pooling2d_124/MaxPool:output:01model_41/conv2d_125/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
model_41/conv2d_125/Conv2D?
*model_41/conv2d_125/BiasAdd/ReadVariableOpReadVariableOp3model_41_conv2d_125_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model_41/conv2d_125/BiasAdd/ReadVariableOp?
model_41/conv2d_125/BiasAddBiasAdd#model_41/conv2d_125/Conv2D:output:02model_41/conv2d_125/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
model_41/conv2d_125/BiasAdd?
model_41/activation_207/ReluRelu$model_41/conv2d_125/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
model_41/activation_207/Relu?
/model_41/batch_normalization_166/ReadVariableOpReadVariableOp8model_41_batch_normalization_166_readvariableop_resource*
_output_shapes
:@*
dtype021
/model_41/batch_normalization_166/ReadVariableOp?
1model_41/batch_normalization_166/ReadVariableOp_1ReadVariableOp:model_41_batch_normalization_166_readvariableop_1_resource*
_output_shapes
:@*
dtype023
1model_41/batch_normalization_166/ReadVariableOp_1?
@model_41/batch_normalization_166/FusedBatchNormV3/ReadVariableOpReadVariableOpImodel_41_batch_normalization_166_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02B
@model_41/batch_normalization_166/FusedBatchNormV3/ReadVariableOp?
Bmodel_41/batch_normalization_166/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKmodel_41_batch_normalization_166_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02D
Bmodel_41/batch_normalization_166/FusedBatchNormV3/ReadVariableOp_1?
1model_41/batch_normalization_166/FusedBatchNormV3FusedBatchNormV3*model_41/activation_207/Relu:activations:07model_41/batch_normalization_166/ReadVariableOp:value:09model_41/batch_normalization_166/ReadVariableOp_1:value:0Hmodel_41/batch_normalization_166/FusedBatchNormV3/ReadVariableOp:value:0Jmodel_41/batch_normalization_166/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 23
1model_41/batch_normalization_166/FusedBatchNormV3?
"model_41/max_pooling2d_125/MaxPoolMaxPool5model_41/batch_normalization_166/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2$
"model_41/max_pooling2d_125/MaxPool?
model_41/flatten_41/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
model_41/flatten_41/Const?
model_41/flatten_41/ReshapeReshape+model_41/max_pooling2d_125/MaxPool:output:0"model_41/flatten_41/Const:output:0*
T0*(
_output_shapes
:??????????2
model_41/flatten_41/Reshape?
(model_41/dense_123/MatMul/ReadVariableOpReadVariableOp1model_41_dense_123_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(model_41/dense_123/MatMul/ReadVariableOp?
model_41/dense_123/MatMulMatMul$model_41/flatten_41/Reshape:output:00model_41/dense_123/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_41/dense_123/MatMul?
)model_41/dense_123/BiasAdd/ReadVariableOpReadVariableOp2model_41_dense_123_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_41/dense_123/BiasAdd/ReadVariableOp?
model_41/dense_123/BiasAddBiasAdd#model_41/dense_123/MatMul:product:01model_41/dense_123/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_41/dense_123/BiasAdd?
model_41/activation_208/ReluRelu#model_41/dense_123/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_41/activation_208/Relu?
9model_41/batch_normalization_167/batchnorm/ReadVariableOpReadVariableOpBmodel_41_batch_normalization_167_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02;
9model_41/batch_normalization_167/batchnorm/ReadVariableOp?
0model_41/batch_normalization_167/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:22
0model_41/batch_normalization_167/batchnorm/add/y?
.model_41/batch_normalization_167/batchnorm/addAddV2Amodel_41/batch_normalization_167/batchnorm/ReadVariableOp:value:09model_41/batch_normalization_167/batchnorm/add/y:output:0*
T0*
_output_shapes
:20
.model_41/batch_normalization_167/batchnorm/add?
0model_41/batch_normalization_167/batchnorm/RsqrtRsqrt2model_41/batch_normalization_167/batchnorm/add:z:0*
T0*
_output_shapes
:22
0model_41/batch_normalization_167/batchnorm/Rsqrt?
=model_41/batch_normalization_167/batchnorm/mul/ReadVariableOpReadVariableOpFmodel_41_batch_normalization_167_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02?
=model_41/batch_normalization_167/batchnorm/mul/ReadVariableOp?
.model_41/batch_normalization_167/batchnorm/mulMul4model_41/batch_normalization_167/batchnorm/Rsqrt:y:0Emodel_41/batch_normalization_167/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:20
.model_41/batch_normalization_167/batchnorm/mul?
0model_41/batch_normalization_167/batchnorm/mul_1Mul*model_41/activation_208/Relu:activations:02model_41/batch_normalization_167/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????22
0model_41/batch_normalization_167/batchnorm/mul_1?
;model_41/batch_normalization_167/batchnorm/ReadVariableOp_1ReadVariableOpDmodel_41_batch_normalization_167_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02=
;model_41/batch_normalization_167/batchnorm/ReadVariableOp_1?
0model_41/batch_normalization_167/batchnorm/mul_2MulCmodel_41/batch_normalization_167/batchnorm/ReadVariableOp_1:value:02model_41/batch_normalization_167/batchnorm/mul:z:0*
T0*
_output_shapes
:22
0model_41/batch_normalization_167/batchnorm/mul_2?
;model_41/batch_normalization_167/batchnorm/ReadVariableOp_2ReadVariableOpDmodel_41_batch_normalization_167_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02=
;model_41/batch_normalization_167/batchnorm/ReadVariableOp_2?
.model_41/batch_normalization_167/batchnorm/subSubCmodel_41/batch_normalization_167/batchnorm/ReadVariableOp_2:value:04model_41/batch_normalization_167/batchnorm/mul_2:z:0*
T0*
_output_shapes
:20
.model_41/batch_normalization_167/batchnorm/sub?
0model_41/batch_normalization_167/batchnorm/add_1AddV24model_41/batch_normalization_167/batchnorm/mul_1:z:02model_41/batch_normalization_167/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????22
0model_41/batch_normalization_167/batchnorm/add_1?
model_41/dropout_41/IdentityIdentity4model_41/batch_normalization_167/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????2
model_41/dropout_41/Identity?
(model_41/dense_124/MatMul/ReadVariableOpReadVariableOp1model_41_dense_124_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(model_41/dense_124/MatMul/ReadVariableOp?
model_41/dense_124/MatMulMatMul%model_41/dropout_41/Identity:output:00model_41/dense_124/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_41/dense_124/MatMul?
)model_41/dense_124/BiasAdd/ReadVariableOpReadVariableOp2model_41_dense_124_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_41/dense_124/BiasAdd/ReadVariableOp?
model_41/dense_124/BiasAddBiasAdd#model_41/dense_124/MatMul:product:01model_41/dense_124/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_41/dense_124/BiasAdd?
model_41/activation_209/ReluRelu#model_41/dense_124/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_41/activation_209/Relu?
(model_41/dense_125/MatMul/ReadVariableOpReadVariableOp1model_41_dense_125_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(model_41/dense_125/MatMul/ReadVariableOp?
model_41/dense_125/MatMulMatMul*model_41/activation_209/Relu:activations:00model_41/dense_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_41/dense_125/MatMul?
)model_41/dense_125/BiasAdd/ReadVariableOpReadVariableOp2model_41_dense_125_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_41/dense_125/BiasAdd/ReadVariableOp?
model_41/dense_125/BiasAddBiasAdd#model_41/dense_125/MatMul:product:01model_41/dense_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_41/dense_125/BiasAdd?
IdentityIdentity#model_41/dense_125/BiasAdd:output:0A^model_41/batch_normalization_164/FusedBatchNormV3/ReadVariableOpC^model_41/batch_normalization_164/FusedBatchNormV3/ReadVariableOp_10^model_41/batch_normalization_164/ReadVariableOp2^model_41/batch_normalization_164/ReadVariableOp_1A^model_41/batch_normalization_165/FusedBatchNormV3/ReadVariableOpC^model_41/batch_normalization_165/FusedBatchNormV3/ReadVariableOp_10^model_41/batch_normalization_165/ReadVariableOp2^model_41/batch_normalization_165/ReadVariableOp_1A^model_41/batch_normalization_166/FusedBatchNormV3/ReadVariableOpC^model_41/batch_normalization_166/FusedBatchNormV3/ReadVariableOp_10^model_41/batch_normalization_166/ReadVariableOp2^model_41/batch_normalization_166/ReadVariableOp_1:^model_41/batch_normalization_167/batchnorm/ReadVariableOp<^model_41/batch_normalization_167/batchnorm/ReadVariableOp_1<^model_41/batch_normalization_167/batchnorm/ReadVariableOp_2>^model_41/batch_normalization_167/batchnorm/mul/ReadVariableOp+^model_41/conv2d_123/BiasAdd/ReadVariableOp*^model_41/conv2d_123/Conv2D/ReadVariableOp+^model_41/conv2d_124/BiasAdd/ReadVariableOp*^model_41/conv2d_124/Conv2D/ReadVariableOp+^model_41/conv2d_125/BiasAdd/ReadVariableOp*^model_41/conv2d_125/Conv2D/ReadVariableOp*^model_41/dense_123/BiasAdd/ReadVariableOp)^model_41/dense_123/MatMul/ReadVariableOp*^model_41/dense_124/BiasAdd/ReadVariableOp)^model_41/dense_124/MatMul/ReadVariableOp*^model_41/dense_125/BiasAdd/ReadVariableOp)^model_41/dense_125/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2?
@model_41/batch_normalization_164/FusedBatchNormV3/ReadVariableOp@model_41/batch_normalization_164/FusedBatchNormV3/ReadVariableOp2?
Bmodel_41/batch_normalization_164/FusedBatchNormV3/ReadVariableOp_1Bmodel_41/batch_normalization_164/FusedBatchNormV3/ReadVariableOp_12b
/model_41/batch_normalization_164/ReadVariableOp/model_41/batch_normalization_164/ReadVariableOp2f
1model_41/batch_normalization_164/ReadVariableOp_11model_41/batch_normalization_164/ReadVariableOp_12?
@model_41/batch_normalization_165/FusedBatchNormV3/ReadVariableOp@model_41/batch_normalization_165/FusedBatchNormV3/ReadVariableOp2?
Bmodel_41/batch_normalization_165/FusedBatchNormV3/ReadVariableOp_1Bmodel_41/batch_normalization_165/FusedBatchNormV3/ReadVariableOp_12b
/model_41/batch_normalization_165/ReadVariableOp/model_41/batch_normalization_165/ReadVariableOp2f
1model_41/batch_normalization_165/ReadVariableOp_11model_41/batch_normalization_165/ReadVariableOp_12?
@model_41/batch_normalization_166/FusedBatchNormV3/ReadVariableOp@model_41/batch_normalization_166/FusedBatchNormV3/ReadVariableOp2?
Bmodel_41/batch_normalization_166/FusedBatchNormV3/ReadVariableOp_1Bmodel_41/batch_normalization_166/FusedBatchNormV3/ReadVariableOp_12b
/model_41/batch_normalization_166/ReadVariableOp/model_41/batch_normalization_166/ReadVariableOp2f
1model_41/batch_normalization_166/ReadVariableOp_11model_41/batch_normalization_166/ReadVariableOp_12v
9model_41/batch_normalization_167/batchnorm/ReadVariableOp9model_41/batch_normalization_167/batchnorm/ReadVariableOp2z
;model_41/batch_normalization_167/batchnorm/ReadVariableOp_1;model_41/batch_normalization_167/batchnorm/ReadVariableOp_12z
;model_41/batch_normalization_167/batchnorm/ReadVariableOp_2;model_41/batch_normalization_167/batchnorm/ReadVariableOp_22~
=model_41/batch_normalization_167/batchnorm/mul/ReadVariableOp=model_41/batch_normalization_167/batchnorm/mul/ReadVariableOp2X
*model_41/conv2d_123/BiasAdd/ReadVariableOp*model_41/conv2d_123/BiasAdd/ReadVariableOp2V
)model_41/conv2d_123/Conv2D/ReadVariableOp)model_41/conv2d_123/Conv2D/ReadVariableOp2X
*model_41/conv2d_124/BiasAdd/ReadVariableOp*model_41/conv2d_124/BiasAdd/ReadVariableOp2V
)model_41/conv2d_124/Conv2D/ReadVariableOp)model_41/conv2d_124/Conv2D/ReadVariableOp2X
*model_41/conv2d_125/BiasAdd/ReadVariableOp*model_41/conv2d_125/BiasAdd/ReadVariableOp2V
)model_41/conv2d_125/Conv2D/ReadVariableOp)model_41/conv2d_125/Conv2D/ReadVariableOp2V
)model_41/dense_123/BiasAdd/ReadVariableOp)model_41/dense_123/BiasAdd/ReadVariableOp2T
(model_41/dense_123/MatMul/ReadVariableOp(model_41/dense_123/MatMul/ReadVariableOp2V
)model_41/dense_124/BiasAdd/ReadVariableOp)model_41/dense_124/BiasAdd/ReadVariableOp2T
(model_41/dense_124/MatMul/ReadVariableOp(model_41/dense_124/MatMul/ReadVariableOp2V
)model_41/dense_125/BiasAdd/ReadVariableOp)model_41/dense_125/BiasAdd/ReadVariableOp2T
(model_41/dense_125/MatMul/ReadVariableOp(model_41/dense_125/MatMul/ReadVariableOp:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_42
?
?
8__inference_batch_normalization_164_layer_call_fn_352702

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
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_3508102
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
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_352607

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
input_429
serving_default_input_42:0?????????  =
	dense_1250
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
_tf_keras_networkߗ{"class_name": "Functional", "name": "model_41", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_41", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_42"}, "name": "input_42", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_123", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_123", "inbound_nodes": [[["input_42", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_205", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_205", "inbound_nodes": [[["conv2d_123", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_164", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_164", "inbound_nodes": [[["activation_205", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_123", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_123", "inbound_nodes": [[["batch_normalization_164", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_124", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_124", "inbound_nodes": [[["max_pooling2d_123", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_206", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_206", "inbound_nodes": [[["conv2d_124", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_165", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_165", "inbound_nodes": [[["activation_206", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_124", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_124", "inbound_nodes": [[["batch_normalization_165", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_125", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_125", "inbound_nodes": [[["max_pooling2d_124", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_207", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_207", "inbound_nodes": [[["conv2d_125", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_166", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_166", "inbound_nodes": [[["activation_207", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_125", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_125", "inbound_nodes": [[["batch_normalization_166", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_41", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_41", "inbound_nodes": [[["max_pooling2d_125", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_123", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_123", "inbound_nodes": [[["flatten_41", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_208", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_208", "inbound_nodes": [[["dense_123", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_167", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_167", "inbound_nodes": [[["activation_208", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_41", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_41", "inbound_nodes": [[["batch_normalization_167", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_124", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_124", "inbound_nodes": [[["dropout_41", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_209", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_209", "inbound_nodes": [[["dense_124", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_125", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_125", "inbound_nodes": [[["activation_209", 0, 0, {}]]]}], "input_layers": [["input_42", 0, 0]], "output_layers": [["dense_125", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_41", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_42"}, "name": "input_42", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_123", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_123", "inbound_nodes": [[["input_42", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_205", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_205", "inbound_nodes": [[["conv2d_123", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_164", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_164", "inbound_nodes": [[["activation_205", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_123", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_123", "inbound_nodes": [[["batch_normalization_164", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_124", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_124", "inbound_nodes": [[["max_pooling2d_123", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_206", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_206", "inbound_nodes": [[["conv2d_124", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_165", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_165", "inbound_nodes": [[["activation_206", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_124", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_124", "inbound_nodes": [[["batch_normalization_165", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_125", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_125", "inbound_nodes": [[["max_pooling2d_124", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_207", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_207", "inbound_nodes": [[["conv2d_125", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_166", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_166", "inbound_nodes": [[["activation_207", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_125", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_125", "inbound_nodes": [[["batch_normalization_166", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_41", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_41", "inbound_nodes": [[["max_pooling2d_125", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_123", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_123", "inbound_nodes": [[["flatten_41", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_208", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_208", "inbound_nodes": [[["dense_123", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_167", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_167", "inbound_nodes": [[["activation_208", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_41", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_41", "inbound_nodes": [[["batch_normalization_167", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_124", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_124", "inbound_nodes": [[["dropout_41", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_209", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_209", "inbound_nodes": [[["dense_124", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_125", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_125", "inbound_nodes": [[["activation_209", 0, 0, {}]]]}], "input_layers": [["input_42", 0, 0]], "output_layers": [["dense_125", 0, 0]]}}, "training_config": {"loss": "mean_absolute_percentage_error", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 4.999999873689376e-06, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
#_self_saveable_object_factories"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_42", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_42"}}
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
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_123", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_123", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
?
#%_self_saveable_object_factories
&regularization_losses
'trainable_variables
(	variables
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_205", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_205", "trainable": true, "dtype": "float32", "activation": "relu"}}
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
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_164", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_164", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 16]}}
?
#4_self_saveable_object_factories
5regularization_losses
6trainable_variables
7	variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_123", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_123", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
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
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_124", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_124", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 16]}}
?
#@_self_saveable_object_factories
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_206", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_206", "trainable": true, "dtype": "float32", "activation": "relu"}}
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
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_165", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_165", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
?
#O_self_saveable_object_factories
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_124", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_124", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
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
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_125", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_125", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 32]}}
?
#[_self_saveable_object_factories
\regularization_losses
]trainable_variables
^	variables
_	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_207", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_207", "trainable": true, "dtype": "float32", "activation": "relu"}}
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
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_166", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_166", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
?
#j_self_saveable_object_factories
kregularization_losses
ltrainable_variables
m	variables
n	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_125", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_125", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
#o_self_saveable_object_factories
pregularization_losses
qtrainable_variables
r	variables
s	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_41", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_41", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
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
_tf_keras_layer?{"class_name": "Dense", "name": "dense_123", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_123", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?
#{_self_saveable_object_factories
|regularization_losses
}trainable_variables
~	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_208", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_208", "trainable": true, "dtype": "float32", "activation": "relu"}}
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
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_167", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_167", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
?
$?_self_saveable_object_factories
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_41", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_41", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
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
_tf_keras_layer?{"class_name": "Dense", "name": "dense_124", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_124", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
?
$?_self_saveable_object_factories
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_209", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_209", "trainable": true, "dtype": "float32", "activation": "relu"}}
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
_tf_keras_layer?{"class_name": "Dense", "name": "dense_125", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_125", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4]}}
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
+:)2conv2d_123/kernel
:2conv2d_123/bias
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
+:)2batch_normalization_164/gamma
*:(2batch_normalization_164/beta
3:1 (2#batch_normalization_164/moving_mean
7:5 (2'batch_normalization_164/moving_variance
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
+:) 2conv2d_124/kernel
: 2conv2d_124/bias
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
+:) 2batch_normalization_165/gamma
*:( 2batch_normalization_165/beta
3:1  (2#batch_normalization_165/moving_mean
7:5  (2'batch_normalization_165/moving_variance
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
+:) @2conv2d_125/kernel
:@2conv2d_125/bias
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
+:)@2batch_normalization_166/gamma
*:(@2batch_normalization_166/beta
3:1@ (2#batch_normalization_166/moving_mean
7:5@ (2'batch_normalization_166/moving_variance
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
#:!	?2dense_123/kernel
:2dense_123/bias
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
+:)2batch_normalization_167/gamma
*:(2batch_normalization_167/beta
3:1 (2#batch_normalization_167/moving_mean
7:5 (2'batch_normalization_167/moving_variance
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
": 2dense_124/kernel
:2dense_124/bias
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
": 2dense_125/kernel
:2dense_125/bias
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
)__inference_model_41_layer_call_fn_352126
)__inference_model_41_layer_call_fn_352497
)__inference_model_41_layer_call_fn_352558
)__inference_model_41_layer_call_fn_351985?
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
D__inference_model_41_layer_call_and_return_conditional_losses_351763
D__inference_model_41_layer_call_and_return_conditional_losses_352327
D__inference_model_41_layer_call_and_return_conditional_losses_352436
D__inference_model_41_layer_call_and_return_conditional_losses_351843?
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
!__inference__wrapped_model_350748?
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
input_42?????????  
?2?
+__inference_conv2d_123_layer_call_fn_352577?
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
F__inference_conv2d_123_layer_call_and_return_conditional_losses_352568?
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
/__inference_activation_205_layer_call_fn_352587?
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
J__inference_activation_205_layer_call_and_return_conditional_losses_352582?
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
8__inference_batch_normalization_164_layer_call_fn_352651
8__inference_batch_normalization_164_layer_call_fn_352715
8__inference_batch_normalization_164_layer_call_fn_352702
8__inference_batch_normalization_164_layer_call_fn_352638?
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
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_352607
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_352689
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_352671
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_352625?
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
2__inference_max_pooling2d_123_layer_call_fn_350864?
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
M__inference_max_pooling2d_123_layer_call_and_return_conditional_losses_350858?
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
+__inference_conv2d_124_layer_call_fn_352734?
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
F__inference_conv2d_124_layer_call_and_return_conditional_losses_352725?
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
/__inference_activation_206_layer_call_fn_352744?
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
J__inference_activation_206_layer_call_and_return_conditional_losses_352739?
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
8__inference_batch_normalization_165_layer_call_fn_352872
8__inference_batch_normalization_165_layer_call_fn_352859
8__inference_batch_normalization_165_layer_call_fn_352808
8__inference_batch_normalization_165_layer_call_fn_352795?
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
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_352782
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_352846
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_352828
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_352764?
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
2__inference_max_pooling2d_124_layer_call_fn_350980?
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
M__inference_max_pooling2d_124_layer_call_and_return_conditional_losses_350974?
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
+__inference_conv2d_125_layer_call_fn_352891?
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
F__inference_conv2d_125_layer_call_and_return_conditional_losses_352882?
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
/__inference_activation_207_layer_call_fn_352901?
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
J__inference_activation_207_layer_call_and_return_conditional_losses_352896?
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
8__inference_batch_normalization_166_layer_call_fn_353016
8__inference_batch_normalization_166_layer_call_fn_352965
8__inference_batch_normalization_166_layer_call_fn_353029
8__inference_batch_normalization_166_layer_call_fn_352952?
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
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_352921
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_352939
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_352985
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_353003?
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
2__inference_max_pooling2d_125_layer_call_fn_351096?
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
M__inference_max_pooling2d_125_layer_call_and_return_conditional_losses_351090?
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
+__inference_flatten_41_layer_call_fn_353040?
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
F__inference_flatten_41_layer_call_and_return_conditional_losses_353035?
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
*__inference_dense_123_layer_call_fn_353059?
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
E__inference_dense_123_layer_call_and_return_conditional_losses_353050?
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
/__inference_activation_208_layer_call_fn_353069?
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
J__inference_activation_208_layer_call_and_return_conditional_losses_353064?
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
8__inference_batch_normalization_167_layer_call_fn_353138
8__inference_batch_normalization_167_layer_call_fn_353151?
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
S__inference_batch_normalization_167_layer_call_and_return_conditional_losses_353125
S__inference_batch_normalization_167_layer_call_and_return_conditional_losses_353105?
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
+__inference_dropout_41_layer_call_fn_353178
+__inference_dropout_41_layer_call_fn_353173?
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
F__inference_dropout_41_layer_call_and_return_conditional_losses_353168
F__inference_dropout_41_layer_call_and_return_conditional_losses_353163?
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
*__inference_dense_124_layer_call_fn_353197?
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
E__inference_dense_124_layer_call_and_return_conditional_losses_353188?
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
/__inference_activation_209_layer_call_fn_353207?
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
J__inference_activation_209_layer_call_and_return_conditional_losses_353202?
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
*__inference_dense_125_layer_call_fn_353226?
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
E__inference_dense_125_layer_call_and_return_conditional_losses_353217?
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
$__inference_signature_wrapper_352189input_42"?
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
!__inference__wrapped_model_350748?$+,-.9:FGHITUabcdtu????????9?6
/?,
*?'
input_42?????????  
? "5?2
0
	dense_125#? 
	dense_125??????????
J__inference_activation_205_layer_call_and_return_conditional_losses_352582h7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????  
? ?
/__inference_activation_205_layer_call_fn_352587[7?4
-?*
(?%
inputs?????????  
? " ??????????  ?
J__inference_activation_206_layer_call_and_return_conditional_losses_352739h7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
/__inference_activation_206_layer_call_fn_352744[7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
J__inference_activation_207_layer_call_and_return_conditional_losses_352896h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
/__inference_activation_207_layer_call_fn_352901[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
J__inference_activation_208_layer_call_and_return_conditional_losses_353064X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
/__inference_activation_208_layer_call_fn_353069K/?,
%?"
 ?
inputs?????????
? "???????????
J__inference_activation_209_layer_call_and_return_conditional_losses_353202X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
/__inference_activation_209_layer_call_fn_353207K/?,
%?"
 ?
inputs?????????
? "???????????
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_352607r+,-.;?8
1?.
(?%
inputs?????????  
p
? "-?*
#? 
0?????????  
? ?
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_352625r+,-.;?8
1?.
(?%
inputs?????????  
p 
? "-?*
#? 
0?????????  
? ?
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_352671?+,-.M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
S__inference_batch_normalization_164_layer_call_and_return_conditional_losses_352689?+,-.M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
8__inference_batch_normalization_164_layer_call_fn_352638e+,-.;?8
1?.
(?%
inputs?????????  
p
? " ??????????  ?
8__inference_batch_normalization_164_layer_call_fn_352651e+,-.;?8
1?.
(?%
inputs?????????  
p 
? " ??????????  ?
8__inference_batch_normalization_164_layer_call_fn_352702?+,-.M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
8__inference_batch_normalization_164_layer_call_fn_352715?+,-.M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_352764?FGHIM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_352782?FGHIM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_352828rFGHI;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
S__inference_batch_normalization_165_layer_call_and_return_conditional_losses_352846rFGHI;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
8__inference_batch_normalization_165_layer_call_fn_352795?FGHIM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
8__inference_batch_normalization_165_layer_call_fn_352808?FGHIM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
8__inference_batch_normalization_165_layer_call_fn_352859eFGHI;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
8__inference_batch_normalization_165_layer_call_fn_352872eFGHI;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_352921?abcdM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_352939?abcdM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_352985rabcd;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
S__inference_batch_normalization_166_layer_call_and_return_conditional_losses_353003rabcd;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
8__inference_batch_normalization_166_layer_call_fn_352952?abcdM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
8__inference_batch_normalization_166_layer_call_fn_352965?abcdM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
8__inference_batch_normalization_166_layer_call_fn_353016eabcd;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
8__inference_batch_normalization_166_layer_call_fn_353029eabcd;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
S__inference_batch_normalization_167_layer_call_and_return_conditional_losses_353105f????3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
S__inference_batch_normalization_167_layer_call_and_return_conditional_losses_353125f????3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
8__inference_batch_normalization_167_layer_call_fn_353138Y????3?0
)?&
 ?
inputs?????????
p
? "???????????
8__inference_batch_normalization_167_layer_call_fn_353151Y????3?0
)?&
 ?
inputs?????????
p 
? "???????????
F__inference_conv2d_123_layer_call_and_return_conditional_losses_352568l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????  
? ?
+__inference_conv2d_123_layer_call_fn_352577_7?4
-?*
(?%
inputs?????????  
? " ??????????  ?
F__inference_conv2d_124_layer_call_and_return_conditional_losses_352725l9:7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0????????? 
? ?
+__inference_conv2d_124_layer_call_fn_352734_9:7?4
-?*
(?%
inputs?????????
? " ?????????? ?
F__inference_conv2d_125_layer_call_and_return_conditional_losses_352882lTU7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
+__inference_conv2d_125_layer_call_fn_352891_TU7?4
-?*
(?%
inputs????????? 
? " ??????????@?
E__inference_dense_123_layer_call_and_return_conditional_losses_353050]tu0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ~
*__inference_dense_123_layer_call_fn_353059Ptu0?-
&?#
!?
inputs??????????
? "???????????
E__inference_dense_124_layer_call_and_return_conditional_losses_353188^??/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? 
*__inference_dense_124_layer_call_fn_353197Q??/?,
%?"
 ?
inputs?????????
? "???????????
E__inference_dense_125_layer_call_and_return_conditional_losses_353217^??/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? 
*__inference_dense_125_layer_call_fn_353226Q??/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_dropout_41_layer_call_and_return_conditional_losses_353163\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
F__inference_dropout_41_layer_call_and_return_conditional_losses_353168\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ~
+__inference_dropout_41_layer_call_fn_353173O3?0
)?&
 ?
inputs?????????
p
? "??????????~
+__inference_dropout_41_layer_call_fn_353178O3?0
)?&
 ?
inputs?????????
p 
? "???????????
F__inference_flatten_41_layer_call_and_return_conditional_losses_353035a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????
? ?
+__inference_flatten_41_layer_call_fn_353040T7?4
-?*
(?%
inputs?????????@
? "????????????
M__inference_max_pooling2d_123_layer_call_and_return_conditional_losses_350858?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_123_layer_call_fn_350864?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_124_layer_call_and_return_conditional_losses_350974?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_124_layer_call_fn_350980?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_125_layer_call_and_return_conditional_losses_351090?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_125_layer_call_fn_351096?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
D__inference_model_41_layer_call_and_return_conditional_losses_351763?$+,-.9:FGHITUabcdtu????????A?>
7?4
*?'
input_42?????????  
p

 
? "%?"
?
0?????????
? ?
D__inference_model_41_layer_call_and_return_conditional_losses_351843?$+,-.9:FGHITUabcdtu????????A?>
7?4
*?'
input_42?????????  
p 

 
? "%?"
?
0?????????
? ?
D__inference_model_41_layer_call_and_return_conditional_losses_352327?$+,-.9:FGHITUabcdtu??????????<
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
D__inference_model_41_layer_call_and_return_conditional_losses_352436?$+,-.9:FGHITUabcdtu??????????<
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
)__inference_model_41_layer_call_fn_351985?$+,-.9:FGHITUabcdtu????????A?>
7?4
*?'
input_42?????????  
p

 
? "???????????
)__inference_model_41_layer_call_fn_352126?$+,-.9:FGHITUabcdtu????????A?>
7?4
*?'
input_42?????????  
p 

 
? "???????????
)__inference_model_41_layer_call_fn_352497?$+,-.9:FGHITUabcdtu??????????<
5?2
(?%
inputs?????????  
p

 
? "???????????
)__inference_model_41_layer_call_fn_352558?$+,-.9:FGHITUabcdtu??????????<
5?2
(?%
inputs?????????  
p 

 
? "???????????
$__inference_signature_wrapper_352189?$+,-.9:FGHITUabcdtu????????E?B
? 
;?8
6
input_42*?'
input_42?????????  "5?2
0
	dense_125#? 
	dense_125?????????