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
conv2d_108/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_108/kernel

%conv2d_108/kernel/Read/ReadVariableOpReadVariableOpconv2d_108/kernel*&
_output_shapes
:*
dtype0
v
conv2d_108/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_108/bias
o
#conv2d_108/bias/Read/ReadVariableOpReadVariableOpconv2d_108/bias*
_output_shapes
:*
dtype0
?
batch_normalization_144/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_144/gamma
?
1batch_normalization_144/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_144/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_144/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_144/beta
?
0batch_normalization_144/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_144/beta*
_output_shapes
:*
dtype0
?
#batch_normalization_144/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_144/moving_mean
?
7batch_normalization_144/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_144/moving_mean*
_output_shapes
:*
dtype0
?
'batch_normalization_144/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_144/moving_variance
?
;batch_normalization_144/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_144/moving_variance*
_output_shapes
:*
dtype0
?
conv2d_109/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_109/kernel

%conv2d_109/kernel/Read/ReadVariableOpReadVariableOpconv2d_109/kernel*&
_output_shapes
: *
dtype0
v
conv2d_109/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_109/bias
o
#conv2d_109/bias/Read/ReadVariableOpReadVariableOpconv2d_109/bias*
_output_shapes
: *
dtype0
?
batch_normalization_145/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namebatch_normalization_145/gamma
?
1batch_normalization_145/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_145/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_145/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_145/beta
?
0batch_normalization_145/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_145/beta*
_output_shapes
: *
dtype0
?
#batch_normalization_145/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#batch_normalization_145/moving_mean
?
7batch_normalization_145/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_145/moving_mean*
_output_shapes
: *
dtype0
?
'batch_normalization_145/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'batch_normalization_145/moving_variance
?
;batch_normalization_145/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_145/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_110/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_110/kernel

%conv2d_110/kernel/Read/ReadVariableOpReadVariableOpconv2d_110/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_110/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_110/bias
o
#conv2d_110/bias/Read/ReadVariableOpReadVariableOpconv2d_110/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_146/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namebatch_normalization_146/gamma
?
1batch_normalization_146/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_146/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_146/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_146/beta
?
0batch_normalization_146/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_146/beta*
_output_shapes
:@*
dtype0
?
#batch_normalization_146/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization_146/moving_mean
?
7batch_normalization_146/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_146/moving_mean*
_output_shapes
:@*
dtype0
?
'batch_normalization_146/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'batch_normalization_146/moving_variance
?
;batch_normalization_146/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_146/moving_variance*
_output_shapes
:@*
dtype0
}
dense_108/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*!
shared_namedense_108/kernel
v
$dense_108/kernel/Read/ReadVariableOpReadVariableOpdense_108/kernel*
_output_shapes
:	?*
dtype0
t
dense_108/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_108/bias
m
"dense_108/bias/Read/ReadVariableOpReadVariableOpdense_108/bias*
_output_shapes
:*
dtype0
?
batch_normalization_147/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_147/gamma
?
1batch_normalization_147/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_147/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_147/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_147/beta
?
0batch_normalization_147/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_147/beta*
_output_shapes
:*
dtype0
?
#batch_normalization_147/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_147/moving_mean
?
7batch_normalization_147/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_147/moving_mean*
_output_shapes
:*
dtype0
?
'batch_normalization_147/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_147/moving_variance
?
;batch_normalization_147/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_147/moving_variance*
_output_shapes
:*
dtype0
|
dense_109/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_109/kernel
u
$dense_109/kernel/Read/ReadVariableOpReadVariableOpdense_109/kernel*
_output_shapes

:*
dtype0
t
dense_109/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_109/bias
m
"dense_109/bias/Read/ReadVariableOpReadVariableOpdense_109/bias*
_output_shapes
:*
dtype0
|
dense_110/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_110/kernel
u
$dense_110/kernel/Read/ReadVariableOpReadVariableOpdense_110/kernel*
_output_shapes

:*
dtype0
t
dense_110/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_110/bias
m
"dense_110/bias/Read/ReadVariableOpReadVariableOpdense_110/bias*
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
VARIABLE_VALUEconv2d_108/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_108/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_144/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_144/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_144/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_144/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_109/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_109/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_145/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_145/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_145/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_145/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_110/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_110/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_146/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_146/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_146/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_146/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_108/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_108/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_147/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_147/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_147/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_147/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_109/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_109/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_110/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_110/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
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
serving_default_input_37Placeholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_37conv2d_108/kernelconv2d_108/biasbatch_normalization_144/gammabatch_normalization_144/beta#batch_normalization_144/moving_mean'batch_normalization_144/moving_varianceconv2d_109/kernelconv2d_109/biasbatch_normalization_145/gammabatch_normalization_145/beta#batch_normalization_145/moving_mean'batch_normalization_145/moving_varianceconv2d_110/kernelconv2d_110/biasbatch_normalization_146/gammabatch_normalization_146/beta#batch_normalization_146/moving_mean'batch_normalization_146/moving_variancedense_108/kerneldense_108/bias'batch_normalization_147/moving_variancebatch_normalization_147/gamma#batch_normalization_147/moving_meanbatch_normalization_147/betadense_109/kerneldense_109/biasdense_110/kerneldense_110/bias*(
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
$__inference_signature_wrapper_319744
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_108/kernel/Read/ReadVariableOp#conv2d_108/bias/Read/ReadVariableOp1batch_normalization_144/gamma/Read/ReadVariableOp0batch_normalization_144/beta/Read/ReadVariableOp7batch_normalization_144/moving_mean/Read/ReadVariableOp;batch_normalization_144/moving_variance/Read/ReadVariableOp%conv2d_109/kernel/Read/ReadVariableOp#conv2d_109/bias/Read/ReadVariableOp1batch_normalization_145/gamma/Read/ReadVariableOp0batch_normalization_145/beta/Read/ReadVariableOp7batch_normalization_145/moving_mean/Read/ReadVariableOp;batch_normalization_145/moving_variance/Read/ReadVariableOp%conv2d_110/kernel/Read/ReadVariableOp#conv2d_110/bias/Read/ReadVariableOp1batch_normalization_146/gamma/Read/ReadVariableOp0batch_normalization_146/beta/Read/ReadVariableOp7batch_normalization_146/moving_mean/Read/ReadVariableOp;batch_normalization_146/moving_variance/Read/ReadVariableOp$dense_108/kernel/Read/ReadVariableOp"dense_108/bias/Read/ReadVariableOp1batch_normalization_147/gamma/Read/ReadVariableOp0batch_normalization_147/beta/Read/ReadVariableOp7batch_normalization_147/moving_mean/Read/ReadVariableOp;batch_normalization_147/moving_variance/Read/ReadVariableOp$dense_109/kernel/Read/ReadVariableOp"dense_109/bias/Read/ReadVariableOp$dense_110/kernel/Read/ReadVariableOp"dense_110/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*+
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
__inference__traced_save_320894
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_108/kernelconv2d_108/biasbatch_normalization_144/gammabatch_normalization_144/beta#batch_normalization_144/moving_mean'batch_normalization_144/moving_varianceconv2d_109/kernelconv2d_109/biasbatch_normalization_145/gammabatch_normalization_145/beta#batch_normalization_145/moving_mean'batch_normalization_145/moving_varianceconv2d_110/kernelconv2d_110/biasbatch_normalization_146/gammabatch_normalization_146/beta#batch_normalization_146/moving_mean'batch_normalization_146/moving_variancedense_108/kerneldense_108/biasbatch_normalization_147/gammabatch_normalization_147/beta#batch_normalization_147/moving_mean'batch_normalization_147/moving_variancedense_109/kerneldense_109/biasdense_110/kerneldense_110/biastotalcount**
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
"__inference__traced_restore_320994??
?
?
8__inference_batch_normalization_144_layer_call_fn_320193

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
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_3183652
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
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_318597

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
?
?
8__inference_batch_normalization_147_layer_call_fn_320706

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
S__inference_batch_normalization_147_layer_call_and_return_conditional_losses_3187802
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
ô
?
!__inference__wrapped_model_318303
input_376
2model_36_conv2d_108_conv2d_readvariableop_resource7
3model_36_conv2d_108_biasadd_readvariableop_resource<
8model_36_batch_normalization_144_readvariableop_resource>
:model_36_batch_normalization_144_readvariableop_1_resourceM
Imodel_36_batch_normalization_144_fusedbatchnormv3_readvariableop_resourceO
Kmodel_36_batch_normalization_144_fusedbatchnormv3_readvariableop_1_resource6
2model_36_conv2d_109_conv2d_readvariableop_resource7
3model_36_conv2d_109_biasadd_readvariableop_resource<
8model_36_batch_normalization_145_readvariableop_resource>
:model_36_batch_normalization_145_readvariableop_1_resourceM
Imodel_36_batch_normalization_145_fusedbatchnormv3_readvariableop_resourceO
Kmodel_36_batch_normalization_145_fusedbatchnormv3_readvariableop_1_resource6
2model_36_conv2d_110_conv2d_readvariableop_resource7
3model_36_conv2d_110_biasadd_readvariableop_resource<
8model_36_batch_normalization_146_readvariableop_resource>
:model_36_batch_normalization_146_readvariableop_1_resourceM
Imodel_36_batch_normalization_146_fusedbatchnormv3_readvariableop_resourceO
Kmodel_36_batch_normalization_146_fusedbatchnormv3_readvariableop_1_resource5
1model_36_dense_108_matmul_readvariableop_resource6
2model_36_dense_108_biasadd_readvariableop_resourceF
Bmodel_36_batch_normalization_147_batchnorm_readvariableop_resourceJ
Fmodel_36_batch_normalization_147_batchnorm_mul_readvariableop_resourceH
Dmodel_36_batch_normalization_147_batchnorm_readvariableop_1_resourceH
Dmodel_36_batch_normalization_147_batchnorm_readvariableop_2_resource5
1model_36_dense_109_matmul_readvariableop_resource6
2model_36_dense_109_biasadd_readvariableop_resource5
1model_36_dense_110_matmul_readvariableop_resource6
2model_36_dense_110_biasadd_readvariableop_resource
identity??@model_36/batch_normalization_144/FusedBatchNormV3/ReadVariableOp?Bmodel_36/batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1?/model_36/batch_normalization_144/ReadVariableOp?1model_36/batch_normalization_144/ReadVariableOp_1?@model_36/batch_normalization_145/FusedBatchNormV3/ReadVariableOp?Bmodel_36/batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1?/model_36/batch_normalization_145/ReadVariableOp?1model_36/batch_normalization_145/ReadVariableOp_1?@model_36/batch_normalization_146/FusedBatchNormV3/ReadVariableOp?Bmodel_36/batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1?/model_36/batch_normalization_146/ReadVariableOp?1model_36/batch_normalization_146/ReadVariableOp_1?9model_36/batch_normalization_147/batchnorm/ReadVariableOp?;model_36/batch_normalization_147/batchnorm/ReadVariableOp_1?;model_36/batch_normalization_147/batchnorm/ReadVariableOp_2?=model_36/batch_normalization_147/batchnorm/mul/ReadVariableOp?*model_36/conv2d_108/BiasAdd/ReadVariableOp?)model_36/conv2d_108/Conv2D/ReadVariableOp?*model_36/conv2d_109/BiasAdd/ReadVariableOp?)model_36/conv2d_109/Conv2D/ReadVariableOp?*model_36/conv2d_110/BiasAdd/ReadVariableOp?)model_36/conv2d_110/Conv2D/ReadVariableOp?)model_36/dense_108/BiasAdd/ReadVariableOp?(model_36/dense_108/MatMul/ReadVariableOp?)model_36/dense_109/BiasAdd/ReadVariableOp?(model_36/dense_109/MatMul/ReadVariableOp?)model_36/dense_110/BiasAdd/ReadVariableOp?(model_36/dense_110/MatMul/ReadVariableOp?
)model_36/conv2d_108/Conv2D/ReadVariableOpReadVariableOp2model_36_conv2d_108_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02+
)model_36/conv2d_108/Conv2D/ReadVariableOp?
model_36/conv2d_108/Conv2DConv2Dinput_371model_36/conv2d_108/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2
model_36/conv2d_108/Conv2D?
*model_36/conv2d_108/BiasAdd/ReadVariableOpReadVariableOp3model_36_conv2d_108_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_36/conv2d_108/BiasAdd/ReadVariableOp?
model_36/conv2d_108/BiasAddBiasAdd#model_36/conv2d_108/Conv2D:output:02model_36/conv2d_108/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  2
model_36/conv2d_108/BiasAdd?
model_36/activation_180/ReluRelu$model_36/conv2d_108/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  2
model_36/activation_180/Relu?
/model_36/batch_normalization_144/ReadVariableOpReadVariableOp8model_36_batch_normalization_144_readvariableop_resource*
_output_shapes
:*
dtype021
/model_36/batch_normalization_144/ReadVariableOp?
1model_36/batch_normalization_144/ReadVariableOp_1ReadVariableOp:model_36_batch_normalization_144_readvariableop_1_resource*
_output_shapes
:*
dtype023
1model_36/batch_normalization_144/ReadVariableOp_1?
@model_36/batch_normalization_144/FusedBatchNormV3/ReadVariableOpReadVariableOpImodel_36_batch_normalization_144_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02B
@model_36/batch_normalization_144/FusedBatchNormV3/ReadVariableOp?
Bmodel_36/batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKmodel_36_batch_normalization_144_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02D
Bmodel_36/batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1?
1model_36/batch_normalization_144/FusedBatchNormV3FusedBatchNormV3*model_36/activation_180/Relu:activations:07model_36/batch_normalization_144/ReadVariableOp:value:09model_36/batch_normalization_144/ReadVariableOp_1:value:0Hmodel_36/batch_normalization_144/FusedBatchNormV3/ReadVariableOp:value:0Jmodel_36/batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
is_training( 23
1model_36/batch_normalization_144/FusedBatchNormV3?
"model_36/max_pooling2d_108/MaxPoolMaxPool5model_36/batch_normalization_144/FusedBatchNormV3:y:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2$
"model_36/max_pooling2d_108/MaxPool?
)model_36/conv2d_109/Conv2D/ReadVariableOpReadVariableOp2model_36_conv2d_109_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02+
)model_36/conv2d_109/Conv2D/ReadVariableOp?
model_36/conv2d_109/Conv2DConv2D+model_36/max_pooling2d_108/MaxPool:output:01model_36/conv2d_109/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
model_36/conv2d_109/Conv2D?
*model_36/conv2d_109/BiasAdd/ReadVariableOpReadVariableOp3model_36_conv2d_109_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_36/conv2d_109/BiasAdd/ReadVariableOp?
model_36/conv2d_109/BiasAddBiasAdd#model_36/conv2d_109/Conv2D:output:02model_36/conv2d_109/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
model_36/conv2d_109/BiasAdd?
model_36/activation_181/ReluRelu$model_36/conv2d_109/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
model_36/activation_181/Relu?
/model_36/batch_normalization_145/ReadVariableOpReadVariableOp8model_36_batch_normalization_145_readvariableop_resource*
_output_shapes
: *
dtype021
/model_36/batch_normalization_145/ReadVariableOp?
1model_36/batch_normalization_145/ReadVariableOp_1ReadVariableOp:model_36_batch_normalization_145_readvariableop_1_resource*
_output_shapes
: *
dtype023
1model_36/batch_normalization_145/ReadVariableOp_1?
@model_36/batch_normalization_145/FusedBatchNormV3/ReadVariableOpReadVariableOpImodel_36_batch_normalization_145_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02B
@model_36/batch_normalization_145/FusedBatchNormV3/ReadVariableOp?
Bmodel_36/batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKmodel_36_batch_normalization_145_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02D
Bmodel_36/batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1?
1model_36/batch_normalization_145/FusedBatchNormV3FusedBatchNormV3*model_36/activation_181/Relu:activations:07model_36/batch_normalization_145/ReadVariableOp:value:09model_36/batch_normalization_145/ReadVariableOp_1:value:0Hmodel_36/batch_normalization_145/FusedBatchNormV3/ReadVariableOp:value:0Jmodel_36/batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 23
1model_36/batch_normalization_145/FusedBatchNormV3?
"model_36/max_pooling2d_109/MaxPoolMaxPool5model_36/batch_normalization_145/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2$
"model_36/max_pooling2d_109/MaxPool?
)model_36/conv2d_110/Conv2D/ReadVariableOpReadVariableOp2model_36_conv2d_110_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02+
)model_36/conv2d_110/Conv2D/ReadVariableOp?
model_36/conv2d_110/Conv2DConv2D+model_36/max_pooling2d_109/MaxPool:output:01model_36/conv2d_110/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
model_36/conv2d_110/Conv2D?
*model_36/conv2d_110/BiasAdd/ReadVariableOpReadVariableOp3model_36_conv2d_110_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model_36/conv2d_110/BiasAdd/ReadVariableOp?
model_36/conv2d_110/BiasAddBiasAdd#model_36/conv2d_110/Conv2D:output:02model_36/conv2d_110/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
model_36/conv2d_110/BiasAdd?
model_36/activation_182/ReluRelu$model_36/conv2d_110/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
model_36/activation_182/Relu?
/model_36/batch_normalization_146/ReadVariableOpReadVariableOp8model_36_batch_normalization_146_readvariableop_resource*
_output_shapes
:@*
dtype021
/model_36/batch_normalization_146/ReadVariableOp?
1model_36/batch_normalization_146/ReadVariableOp_1ReadVariableOp:model_36_batch_normalization_146_readvariableop_1_resource*
_output_shapes
:@*
dtype023
1model_36/batch_normalization_146/ReadVariableOp_1?
@model_36/batch_normalization_146/FusedBatchNormV3/ReadVariableOpReadVariableOpImodel_36_batch_normalization_146_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02B
@model_36/batch_normalization_146/FusedBatchNormV3/ReadVariableOp?
Bmodel_36/batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKmodel_36_batch_normalization_146_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02D
Bmodel_36/batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1?
1model_36/batch_normalization_146/FusedBatchNormV3FusedBatchNormV3*model_36/activation_182/Relu:activations:07model_36/batch_normalization_146/ReadVariableOp:value:09model_36/batch_normalization_146/ReadVariableOp_1:value:0Hmodel_36/batch_normalization_146/FusedBatchNormV3/ReadVariableOp:value:0Jmodel_36/batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 23
1model_36/batch_normalization_146/FusedBatchNormV3?
"model_36/max_pooling2d_110/MaxPoolMaxPool5model_36/batch_normalization_146/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2$
"model_36/max_pooling2d_110/MaxPool?
model_36/flatten_36/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
model_36/flatten_36/Const?
model_36/flatten_36/ReshapeReshape+model_36/max_pooling2d_110/MaxPool:output:0"model_36/flatten_36/Const:output:0*
T0*(
_output_shapes
:??????????2
model_36/flatten_36/Reshape?
(model_36/dense_108/MatMul/ReadVariableOpReadVariableOp1model_36_dense_108_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(model_36/dense_108/MatMul/ReadVariableOp?
model_36/dense_108/MatMulMatMul$model_36/flatten_36/Reshape:output:00model_36/dense_108/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_36/dense_108/MatMul?
)model_36/dense_108/BiasAdd/ReadVariableOpReadVariableOp2model_36_dense_108_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_36/dense_108/BiasAdd/ReadVariableOp?
model_36/dense_108/BiasAddBiasAdd#model_36/dense_108/MatMul:product:01model_36/dense_108/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_36/dense_108/BiasAdd?
model_36/activation_183/ReluRelu#model_36/dense_108/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_36/activation_183/Relu?
9model_36/batch_normalization_147/batchnorm/ReadVariableOpReadVariableOpBmodel_36_batch_normalization_147_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02;
9model_36/batch_normalization_147/batchnorm/ReadVariableOp?
0model_36/batch_normalization_147/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:22
0model_36/batch_normalization_147/batchnorm/add/y?
.model_36/batch_normalization_147/batchnorm/addAddV2Amodel_36/batch_normalization_147/batchnorm/ReadVariableOp:value:09model_36/batch_normalization_147/batchnorm/add/y:output:0*
T0*
_output_shapes
:20
.model_36/batch_normalization_147/batchnorm/add?
0model_36/batch_normalization_147/batchnorm/RsqrtRsqrt2model_36/batch_normalization_147/batchnorm/add:z:0*
T0*
_output_shapes
:22
0model_36/batch_normalization_147/batchnorm/Rsqrt?
=model_36/batch_normalization_147/batchnorm/mul/ReadVariableOpReadVariableOpFmodel_36_batch_normalization_147_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02?
=model_36/batch_normalization_147/batchnorm/mul/ReadVariableOp?
.model_36/batch_normalization_147/batchnorm/mulMul4model_36/batch_normalization_147/batchnorm/Rsqrt:y:0Emodel_36/batch_normalization_147/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:20
.model_36/batch_normalization_147/batchnorm/mul?
0model_36/batch_normalization_147/batchnorm/mul_1Mul*model_36/activation_183/Relu:activations:02model_36/batch_normalization_147/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????22
0model_36/batch_normalization_147/batchnorm/mul_1?
;model_36/batch_normalization_147/batchnorm/ReadVariableOp_1ReadVariableOpDmodel_36_batch_normalization_147_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02=
;model_36/batch_normalization_147/batchnorm/ReadVariableOp_1?
0model_36/batch_normalization_147/batchnorm/mul_2MulCmodel_36/batch_normalization_147/batchnorm/ReadVariableOp_1:value:02model_36/batch_normalization_147/batchnorm/mul:z:0*
T0*
_output_shapes
:22
0model_36/batch_normalization_147/batchnorm/mul_2?
;model_36/batch_normalization_147/batchnorm/ReadVariableOp_2ReadVariableOpDmodel_36_batch_normalization_147_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02=
;model_36/batch_normalization_147/batchnorm/ReadVariableOp_2?
.model_36/batch_normalization_147/batchnorm/subSubCmodel_36/batch_normalization_147/batchnorm/ReadVariableOp_2:value:04model_36/batch_normalization_147/batchnorm/mul_2:z:0*
T0*
_output_shapes
:20
.model_36/batch_normalization_147/batchnorm/sub?
0model_36/batch_normalization_147/batchnorm/add_1AddV24model_36/batch_normalization_147/batchnorm/mul_1:z:02model_36/batch_normalization_147/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????22
0model_36/batch_normalization_147/batchnorm/add_1?
model_36/dropout_36/IdentityIdentity4model_36/batch_normalization_147/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????2
model_36/dropout_36/Identity?
(model_36/dense_109/MatMul/ReadVariableOpReadVariableOp1model_36_dense_109_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(model_36/dense_109/MatMul/ReadVariableOp?
model_36/dense_109/MatMulMatMul%model_36/dropout_36/Identity:output:00model_36/dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_36/dense_109/MatMul?
)model_36/dense_109/BiasAdd/ReadVariableOpReadVariableOp2model_36_dense_109_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_36/dense_109/BiasAdd/ReadVariableOp?
model_36/dense_109/BiasAddBiasAdd#model_36/dense_109/MatMul:product:01model_36/dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_36/dense_109/BiasAdd?
model_36/activation_184/ReluRelu#model_36/dense_109/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_36/activation_184/Relu?
(model_36/dense_110/MatMul/ReadVariableOpReadVariableOp1model_36_dense_110_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(model_36/dense_110/MatMul/ReadVariableOp?
model_36/dense_110/MatMulMatMul*model_36/activation_184/Relu:activations:00model_36/dense_110/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_36/dense_110/MatMul?
)model_36/dense_110/BiasAdd/ReadVariableOpReadVariableOp2model_36_dense_110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_36/dense_110/BiasAdd/ReadVariableOp?
model_36/dense_110/BiasAddBiasAdd#model_36/dense_110/MatMul:product:01model_36/dense_110/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_36/dense_110/BiasAdd?
IdentityIdentity#model_36/dense_110/BiasAdd:output:0A^model_36/batch_normalization_144/FusedBatchNormV3/ReadVariableOpC^model_36/batch_normalization_144/FusedBatchNormV3/ReadVariableOp_10^model_36/batch_normalization_144/ReadVariableOp2^model_36/batch_normalization_144/ReadVariableOp_1A^model_36/batch_normalization_145/FusedBatchNormV3/ReadVariableOpC^model_36/batch_normalization_145/FusedBatchNormV3/ReadVariableOp_10^model_36/batch_normalization_145/ReadVariableOp2^model_36/batch_normalization_145/ReadVariableOp_1A^model_36/batch_normalization_146/FusedBatchNormV3/ReadVariableOpC^model_36/batch_normalization_146/FusedBatchNormV3/ReadVariableOp_10^model_36/batch_normalization_146/ReadVariableOp2^model_36/batch_normalization_146/ReadVariableOp_1:^model_36/batch_normalization_147/batchnorm/ReadVariableOp<^model_36/batch_normalization_147/batchnorm/ReadVariableOp_1<^model_36/batch_normalization_147/batchnorm/ReadVariableOp_2>^model_36/batch_normalization_147/batchnorm/mul/ReadVariableOp+^model_36/conv2d_108/BiasAdd/ReadVariableOp*^model_36/conv2d_108/Conv2D/ReadVariableOp+^model_36/conv2d_109/BiasAdd/ReadVariableOp*^model_36/conv2d_109/Conv2D/ReadVariableOp+^model_36/conv2d_110/BiasAdd/ReadVariableOp*^model_36/conv2d_110/Conv2D/ReadVariableOp*^model_36/dense_108/BiasAdd/ReadVariableOp)^model_36/dense_108/MatMul/ReadVariableOp*^model_36/dense_109/BiasAdd/ReadVariableOp)^model_36/dense_109/MatMul/ReadVariableOp*^model_36/dense_110/BiasAdd/ReadVariableOp)^model_36/dense_110/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2?
@model_36/batch_normalization_144/FusedBatchNormV3/ReadVariableOp@model_36/batch_normalization_144/FusedBatchNormV3/ReadVariableOp2?
Bmodel_36/batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1Bmodel_36/batch_normalization_144/FusedBatchNormV3/ReadVariableOp_12b
/model_36/batch_normalization_144/ReadVariableOp/model_36/batch_normalization_144/ReadVariableOp2f
1model_36/batch_normalization_144/ReadVariableOp_11model_36/batch_normalization_144/ReadVariableOp_12?
@model_36/batch_normalization_145/FusedBatchNormV3/ReadVariableOp@model_36/batch_normalization_145/FusedBatchNormV3/ReadVariableOp2?
Bmodel_36/batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1Bmodel_36/batch_normalization_145/FusedBatchNormV3/ReadVariableOp_12b
/model_36/batch_normalization_145/ReadVariableOp/model_36/batch_normalization_145/ReadVariableOp2f
1model_36/batch_normalization_145/ReadVariableOp_11model_36/batch_normalization_145/ReadVariableOp_12?
@model_36/batch_normalization_146/FusedBatchNormV3/ReadVariableOp@model_36/batch_normalization_146/FusedBatchNormV3/ReadVariableOp2?
Bmodel_36/batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1Bmodel_36/batch_normalization_146/FusedBatchNormV3/ReadVariableOp_12b
/model_36/batch_normalization_146/ReadVariableOp/model_36/batch_normalization_146/ReadVariableOp2f
1model_36/batch_normalization_146/ReadVariableOp_11model_36/batch_normalization_146/ReadVariableOp_12v
9model_36/batch_normalization_147/batchnorm/ReadVariableOp9model_36/batch_normalization_147/batchnorm/ReadVariableOp2z
;model_36/batch_normalization_147/batchnorm/ReadVariableOp_1;model_36/batch_normalization_147/batchnorm/ReadVariableOp_12z
;model_36/batch_normalization_147/batchnorm/ReadVariableOp_2;model_36/batch_normalization_147/batchnorm/ReadVariableOp_22~
=model_36/batch_normalization_147/batchnorm/mul/ReadVariableOp=model_36/batch_normalization_147/batchnorm/mul/ReadVariableOp2X
*model_36/conv2d_108/BiasAdd/ReadVariableOp*model_36/conv2d_108/BiasAdd/ReadVariableOp2V
)model_36/conv2d_108/Conv2D/ReadVariableOp)model_36/conv2d_108/Conv2D/ReadVariableOp2X
*model_36/conv2d_109/BiasAdd/ReadVariableOp*model_36/conv2d_109/BiasAdd/ReadVariableOp2V
)model_36/conv2d_109/Conv2D/ReadVariableOp)model_36/conv2d_109/Conv2D/ReadVariableOp2X
*model_36/conv2d_110/BiasAdd/ReadVariableOp*model_36/conv2d_110/BiasAdd/ReadVariableOp2V
)model_36/conv2d_110/Conv2D/ReadVariableOp)model_36/conv2d_110/Conv2D/ReadVariableOp2V
)model_36/dense_108/BiasAdd/ReadVariableOp)model_36/dense_108/BiasAdd/ReadVariableOp2T
(model_36/dense_108/MatMul/ReadVariableOp(model_36/dense_108/MatMul/ReadVariableOp2V
)model_36/dense_109/BiasAdd/ReadVariableOp)model_36/dense_109/BiasAdd/ReadVariableOp2T
(model_36/dense_109/MatMul/ReadVariableOp(model_36/dense_109/MatMul/ReadVariableOp2V
)model_36/dense_110/BiasAdd/ReadVariableOp)model_36/dense_110/BiasAdd/ReadVariableOp2T
(model_36/dense_110/MatMul/ReadVariableOp(model_36/dense_110/MatMul/ReadVariableOp:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_37
?
f
J__inference_activation_184_layer_call_and_return_conditional_losses_320757

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
?

*__inference_dense_108_layer_call_fn_320614

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
E__inference_dense_108_layer_call_and_return_conditional_losses_3191582
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
?0
?
S__inference_batch_normalization_147_layer_call_and_return_conditional_losses_318747

inputs
assignmovingavg_318722
assignmovingavg_1_318728)
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
loc:@AssignMovingAvg/318722*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_318722*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/318722*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/318722*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_318722AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/318722*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/318728*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_318728*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/318728*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/318728*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_318728AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/318728*
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
F__inference_conv2d_109_layer_call_and_return_conditional_losses_320280

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
/__inference_activation_180_layer_call_fn_320142

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
J__inference_activation_180_layer_call_and_return_conditional_losses_3188262
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
?
K
/__inference_activation_184_layer_call_fn_320762

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
J__inference_activation_184_layer_call_and_return_conditional_losses_3192832
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
?
?
8__inference_batch_normalization_147_layer_call_fn_320693

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
S__inference_batch_normalization_147_layer_call_and_return_conditional_losses_3187472
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
*__inference_dense_110_layer_call_fn_320781

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
E__inference_dense_110_layer_call_and_return_conditional_losses_3193012
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
?
f
J__inference_activation_181_layer_call_and_return_conditional_losses_320294

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
?
?
S__inference_batch_normalization_147_layer_call_and_return_conditional_losses_318780

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
?
b
F__inference_flatten_36_layer_call_and_return_conditional_losses_320590

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
?
i
M__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_318529

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
?
?
+__inference_conv2d_109_layer_call_fn_320289

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
F__inference_conv2d_109_layer_call_and_return_conditional_losses_3189182
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
?	
?
E__inference_dense_109_layer_call_and_return_conditional_losses_320743

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
F__inference_flatten_36_layer_call_and_return_conditional_losses_319140

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
?
N
2__inference_max_pooling2d_109_layer_call_fn_318535

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
M__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_3185292
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
/__inference_activation_182_layer_call_fn_320456

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
J__inference_activation_182_layer_call_and_return_conditional_losses_3190522
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
?
)__inference_model_36_layer_call_fn_320113

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
D__inference_model_36_layer_call_and_return_conditional_losses_3196222
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
?
)__inference_model_36_layer_call_fn_319681
input_37
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
StatefulPartitionedCallStatefulPartitionedCallinput_37unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
D__inference_model_36_layer_call_and_return_conditional_losses_3196222
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
input_37
?
?
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_318984

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
?
?
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_318365

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
?
e
F__inference_dropout_36_layer_call_and_return_conditional_losses_320718

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
E__inference_dense_108_layer_call_and_return_conditional_losses_320605

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
?
?
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_318628

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
?
d
F__inference_dropout_36_layer_call_and_return_conditional_losses_320723

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
??
?
D__inference_model_36_layer_call_and_return_conditional_losses_319882

inputs-
)conv2d_108_conv2d_readvariableop_resource.
*conv2d_108_biasadd_readvariableop_resource3
/batch_normalization_144_readvariableop_resource5
1batch_normalization_144_readvariableop_1_resourceD
@batch_normalization_144_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_144_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_109_conv2d_readvariableop_resource.
*conv2d_109_biasadd_readvariableop_resource3
/batch_normalization_145_readvariableop_resource5
1batch_normalization_145_readvariableop_1_resourceD
@batch_normalization_145_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_145_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_110_conv2d_readvariableop_resource.
*conv2d_110_biasadd_readvariableop_resource3
/batch_normalization_146_readvariableop_resource5
1batch_normalization_146_readvariableop_1_resourceD
@batch_normalization_146_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_146_fusedbatchnormv3_readvariableop_1_resource,
(dense_108_matmul_readvariableop_resource-
)dense_108_biasadd_readvariableop_resource2
.batch_normalization_147_assignmovingavg_3198364
0batch_normalization_147_assignmovingavg_1_319842A
=batch_normalization_147_batchnorm_mul_readvariableop_resource=
9batch_normalization_147_batchnorm_readvariableop_resource,
(dense_109_matmul_readvariableop_resource-
)dense_109_biasadd_readvariableop_resource,
(dense_110_matmul_readvariableop_resource-
)dense_110_biasadd_readvariableop_resource
identity??&batch_normalization_144/AssignNewValue?(batch_normalization_144/AssignNewValue_1?7batch_normalization_144/FusedBatchNormV3/ReadVariableOp?9batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_144/ReadVariableOp?(batch_normalization_144/ReadVariableOp_1?&batch_normalization_145/AssignNewValue?(batch_normalization_145/AssignNewValue_1?7batch_normalization_145/FusedBatchNormV3/ReadVariableOp?9batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_145/ReadVariableOp?(batch_normalization_145/ReadVariableOp_1?&batch_normalization_146/AssignNewValue?(batch_normalization_146/AssignNewValue_1?7batch_normalization_146/FusedBatchNormV3/ReadVariableOp?9batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_146/ReadVariableOp?(batch_normalization_146/ReadVariableOp_1?;batch_normalization_147/AssignMovingAvg/AssignSubVariableOp?6batch_normalization_147/AssignMovingAvg/ReadVariableOp?=batch_normalization_147/AssignMovingAvg_1/AssignSubVariableOp?8batch_normalization_147/AssignMovingAvg_1/ReadVariableOp?0batch_normalization_147/batchnorm/ReadVariableOp?4batch_normalization_147/batchnorm/mul/ReadVariableOp?!conv2d_108/BiasAdd/ReadVariableOp? conv2d_108/Conv2D/ReadVariableOp?!conv2d_109/BiasAdd/ReadVariableOp? conv2d_109/Conv2D/ReadVariableOp?!conv2d_110/BiasAdd/ReadVariableOp? conv2d_110/Conv2D/ReadVariableOp? dense_108/BiasAdd/ReadVariableOp?dense_108/MatMul/ReadVariableOp? dense_109/BiasAdd/ReadVariableOp?dense_109/MatMul/ReadVariableOp? dense_110/BiasAdd/ReadVariableOp?dense_110/MatMul/ReadVariableOp?
 conv2d_108/Conv2D/ReadVariableOpReadVariableOp)conv2d_108_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_108/Conv2D/ReadVariableOp?
conv2d_108/Conv2DConv2Dinputs(conv2d_108/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2
conv2d_108/Conv2D?
!conv2d_108/BiasAdd/ReadVariableOpReadVariableOp*conv2d_108_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_108/BiasAdd/ReadVariableOp?
conv2d_108/BiasAddBiasAddconv2d_108/Conv2D:output:0)conv2d_108/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  2
conv2d_108/BiasAdd?
activation_180/ReluReluconv2d_108/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  2
activation_180/Relu?
&batch_normalization_144/ReadVariableOpReadVariableOp/batch_normalization_144_readvariableop_resource*
_output_shapes
:*
dtype02(
&batch_normalization_144/ReadVariableOp?
(batch_normalization_144/ReadVariableOp_1ReadVariableOp1batch_normalization_144_readvariableop_1_resource*
_output_shapes
:*
dtype02*
(batch_normalization_144/ReadVariableOp_1?
7batch_normalization_144/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_144_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype029
7batch_normalization_144/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_144_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02;
9batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_144/FusedBatchNormV3FusedBatchNormV3!activation_180/Relu:activations:0.batch_normalization_144/ReadVariableOp:value:00batch_normalization_144/ReadVariableOp_1:value:0?batch_normalization_144/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_144/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_144/FusedBatchNormV3?
&batch_normalization_144/AssignNewValueAssignVariableOp@batch_normalization_144_fusedbatchnormv3_readvariableop_resource5batch_normalization_144/FusedBatchNormV3:batch_mean:08^batch_normalization_144/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*S
_classI
GEloc:@batch_normalization_144/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_144/AssignNewValue?
(batch_normalization_144/AssignNewValue_1AssignVariableOpBbatch_normalization_144_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_144/FusedBatchNormV3:batch_variance:0:^batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*U
_classK
IGloc:@batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_144/AssignNewValue_1?
max_pooling2d_108/MaxPoolMaxPool,batch_normalization_144/FusedBatchNormV3:y:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_108/MaxPool?
 conv2d_109/Conv2D/ReadVariableOpReadVariableOp)conv2d_109_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_109/Conv2D/ReadVariableOp?
conv2d_109/Conv2DConv2D"max_pooling2d_108/MaxPool:output:0(conv2d_109/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_109/Conv2D?
!conv2d_109/BiasAdd/ReadVariableOpReadVariableOp*conv2d_109_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_109/BiasAdd/ReadVariableOp?
conv2d_109/BiasAddBiasAddconv2d_109/Conv2D:output:0)conv2d_109/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_109/BiasAdd?
activation_181/ReluReluconv2d_109/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
activation_181/Relu?
&batch_normalization_145/ReadVariableOpReadVariableOp/batch_normalization_145_readvariableop_resource*
_output_shapes
: *
dtype02(
&batch_normalization_145/ReadVariableOp?
(batch_normalization_145/ReadVariableOp_1ReadVariableOp1batch_normalization_145_readvariableop_1_resource*
_output_shapes
: *
dtype02*
(batch_normalization_145/ReadVariableOp_1?
7batch_normalization_145/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_145_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype029
7batch_normalization_145/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_145_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02;
9batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_145/FusedBatchNormV3FusedBatchNormV3!activation_181/Relu:activations:0.batch_normalization_145/ReadVariableOp:value:00batch_normalization_145/ReadVariableOp_1:value:0?batch_normalization_145/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_145/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_145/FusedBatchNormV3?
&batch_normalization_145/AssignNewValueAssignVariableOp@batch_normalization_145_fusedbatchnormv3_readvariableop_resource5batch_normalization_145/FusedBatchNormV3:batch_mean:08^batch_normalization_145/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*S
_classI
GEloc:@batch_normalization_145/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_145/AssignNewValue?
(batch_normalization_145/AssignNewValue_1AssignVariableOpBbatch_normalization_145_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_145/FusedBatchNormV3:batch_variance:0:^batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*U
_classK
IGloc:@batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_145/AssignNewValue_1?
max_pooling2d_109/MaxPoolMaxPool,batch_normalization_145/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_109/MaxPool?
 conv2d_110/Conv2D/ReadVariableOpReadVariableOp)conv2d_110_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_110/Conv2D/ReadVariableOp?
conv2d_110/Conv2DConv2D"max_pooling2d_109/MaxPool:output:0(conv2d_110/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_110/Conv2D?
!conv2d_110/BiasAdd/ReadVariableOpReadVariableOp*conv2d_110_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_110/BiasAdd/ReadVariableOp?
conv2d_110/BiasAddBiasAddconv2d_110/Conv2D:output:0)conv2d_110/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_110/BiasAdd?
activation_182/ReluReluconv2d_110/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_182/Relu?
&batch_normalization_146/ReadVariableOpReadVariableOp/batch_normalization_146_readvariableop_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_146/ReadVariableOp?
(batch_normalization_146/ReadVariableOp_1ReadVariableOp1batch_normalization_146_readvariableop_1_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_146/ReadVariableOp_1?
7batch_normalization_146/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_146_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype029
7batch_normalization_146/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_146_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_146/FusedBatchNormV3FusedBatchNormV3!activation_182/Relu:activations:0.batch_normalization_146/ReadVariableOp:value:00batch_normalization_146/ReadVariableOp_1:value:0?batch_normalization_146/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_146/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_146/FusedBatchNormV3?
&batch_normalization_146/AssignNewValueAssignVariableOp@batch_normalization_146_fusedbatchnormv3_readvariableop_resource5batch_normalization_146/FusedBatchNormV3:batch_mean:08^batch_normalization_146/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*S
_classI
GEloc:@batch_normalization_146/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_146/AssignNewValue?
(batch_normalization_146/AssignNewValue_1AssignVariableOpBbatch_normalization_146_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_146/FusedBatchNormV3:batch_variance:0:^batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*U
_classK
IGloc:@batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_146/AssignNewValue_1?
max_pooling2d_110/MaxPoolMaxPool,batch_normalization_146/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_110/MaxPoolu
flatten_36/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_36/Const?
flatten_36/ReshapeReshape"max_pooling2d_110/MaxPool:output:0flatten_36/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_36/Reshape?
dense_108/MatMul/ReadVariableOpReadVariableOp(dense_108_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
dense_108/MatMul/ReadVariableOp?
dense_108/MatMulMatMulflatten_36/Reshape:output:0'dense_108/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_108/MatMul?
 dense_108/BiasAdd/ReadVariableOpReadVariableOp)dense_108_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_108/BiasAdd/ReadVariableOp?
dense_108/BiasAddBiasAdddense_108/MatMul:product:0(dense_108/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_108/BiasAdd?
activation_183/ReluReludense_108/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_183/Relu?
6batch_normalization_147/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 28
6batch_normalization_147/moments/mean/reduction_indices?
$batch_normalization_147/moments/meanMean!activation_183/Relu:activations:0?batch_normalization_147/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2&
$batch_normalization_147/moments/mean?
,batch_normalization_147/moments/StopGradientStopGradient-batch_normalization_147/moments/mean:output:0*
T0*
_output_shapes

:2.
,batch_normalization_147/moments/StopGradient?
1batch_normalization_147/moments/SquaredDifferenceSquaredDifference!activation_183/Relu:activations:05batch_normalization_147/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????23
1batch_normalization_147/moments/SquaredDifference?
:batch_normalization_147/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2<
:batch_normalization_147/moments/variance/reduction_indices?
(batch_normalization_147/moments/varianceMean5batch_normalization_147/moments/SquaredDifference:z:0Cbatch_normalization_147/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2*
(batch_normalization_147/moments/variance?
'batch_normalization_147/moments/SqueezeSqueeze-batch_normalization_147/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2)
'batch_normalization_147/moments/Squeeze?
)batch_normalization_147/moments/Squeeze_1Squeeze1batch_normalization_147/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2+
)batch_normalization_147/moments/Squeeze_1?
-batch_normalization_147/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_147/AssignMovingAvg/319836*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_147/AssignMovingAvg/decay?
6batch_normalization_147/AssignMovingAvg/ReadVariableOpReadVariableOp.batch_normalization_147_assignmovingavg_319836*
_output_shapes
:*
dtype028
6batch_normalization_147/AssignMovingAvg/ReadVariableOp?
+batch_normalization_147/AssignMovingAvg/subSub>batch_normalization_147/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_147/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_147/AssignMovingAvg/319836*
_output_shapes
:2-
+batch_normalization_147/AssignMovingAvg/sub?
+batch_normalization_147/AssignMovingAvg/mulMul/batch_normalization_147/AssignMovingAvg/sub:z:06batch_normalization_147/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_147/AssignMovingAvg/319836*
_output_shapes
:2-
+batch_normalization_147/AssignMovingAvg/mul?
;batch_normalization_147/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp.batch_normalization_147_assignmovingavg_319836/batch_normalization_147/AssignMovingAvg/mul:z:07^batch_normalization_147/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_147/AssignMovingAvg/319836*
_output_shapes
 *
dtype02=
;batch_normalization_147/AssignMovingAvg/AssignSubVariableOp?
/batch_normalization_147/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_147/AssignMovingAvg_1/319842*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/batch_normalization_147/AssignMovingAvg_1/decay?
8batch_normalization_147/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch_normalization_147_assignmovingavg_1_319842*
_output_shapes
:*
dtype02:
8batch_normalization_147/AssignMovingAvg_1/ReadVariableOp?
-batch_normalization_147/AssignMovingAvg_1/subSub@batch_normalization_147/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_147/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_147/AssignMovingAvg_1/319842*
_output_shapes
:2/
-batch_normalization_147/AssignMovingAvg_1/sub?
-batch_normalization_147/AssignMovingAvg_1/mulMul1batch_normalization_147/AssignMovingAvg_1/sub:z:08batch_normalization_147/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_147/AssignMovingAvg_1/319842*
_output_shapes
:2/
-batch_normalization_147/AssignMovingAvg_1/mul?
=batch_normalization_147/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp0batch_normalization_147_assignmovingavg_1_3198421batch_normalization_147/AssignMovingAvg_1/mul:z:09^batch_normalization_147/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_147/AssignMovingAvg_1/319842*
_output_shapes
 *
dtype02?
=batch_normalization_147/AssignMovingAvg_1/AssignSubVariableOp?
'batch_normalization_147/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2)
'batch_normalization_147/batchnorm/add/y?
%batch_normalization_147/batchnorm/addAddV22batch_normalization_147/moments/Squeeze_1:output:00batch_normalization_147/batchnorm/add/y:output:0*
T0*
_output_shapes
:2'
%batch_normalization_147/batchnorm/add?
'batch_normalization_147/batchnorm/RsqrtRsqrt)batch_normalization_147/batchnorm/add:z:0*
T0*
_output_shapes
:2)
'batch_normalization_147/batchnorm/Rsqrt?
4batch_normalization_147/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_147_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization_147/batchnorm/mul/ReadVariableOp?
%batch_normalization_147/batchnorm/mulMul+batch_normalization_147/batchnorm/Rsqrt:y:0<batch_normalization_147/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2'
%batch_normalization_147/batchnorm/mul?
'batch_normalization_147/batchnorm/mul_1Mul!activation_183/Relu:activations:0)batch_normalization_147/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2)
'batch_normalization_147/batchnorm/mul_1?
'batch_normalization_147/batchnorm/mul_2Mul0batch_normalization_147/moments/Squeeze:output:0)batch_normalization_147/batchnorm/mul:z:0*
T0*
_output_shapes
:2)
'batch_normalization_147/batchnorm/mul_2?
0batch_normalization_147/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_147_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype022
0batch_normalization_147/batchnorm/ReadVariableOp?
%batch_normalization_147/batchnorm/subSub8batch_normalization_147/batchnorm/ReadVariableOp:value:0+batch_normalization_147/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2'
%batch_normalization_147/batchnorm/sub?
'batch_normalization_147/batchnorm/add_1AddV2+batch_normalization_147/batchnorm/mul_1:z:0)batch_normalization_147/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2)
'batch_normalization_147/batchnorm/add_1y
dropout_36/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_36/dropout/Const?
dropout_36/dropout/MulMul+batch_normalization_147/batchnorm/add_1:z:0!dropout_36/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_36/dropout/Mul?
dropout_36/dropout/ShapeShape+batch_normalization_147/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_36/dropout/Shape?
/dropout_36/dropout/random_uniform/RandomUniformRandomUniform!dropout_36/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype021
/dropout_36/dropout/random_uniform/RandomUniform?
!dropout_36/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_36/dropout/GreaterEqual/y?
dropout_36/dropout/GreaterEqualGreaterEqual8dropout_36/dropout/random_uniform/RandomUniform:output:0*dropout_36/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2!
dropout_36/dropout/GreaterEqual?
dropout_36/dropout/CastCast#dropout_36/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_36/dropout/Cast?
dropout_36/dropout/Mul_1Muldropout_36/dropout/Mul:z:0dropout_36/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_36/dropout/Mul_1?
dense_109/MatMul/ReadVariableOpReadVariableOp(dense_109_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_109/MatMul/ReadVariableOp?
dense_109/MatMulMatMuldropout_36/dropout/Mul_1:z:0'dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_109/MatMul?
 dense_109/BiasAdd/ReadVariableOpReadVariableOp)dense_109_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_109/BiasAdd/ReadVariableOp?
dense_109/BiasAddBiasAdddense_109/MatMul:product:0(dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_109/BiasAdd?
activation_184/ReluReludense_109/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_184/Relu?
dense_110/MatMul/ReadVariableOpReadVariableOp(dense_110_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_110/MatMul/ReadVariableOp?
dense_110/MatMulMatMul!activation_184/Relu:activations:0'dense_110/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_110/MatMul?
 dense_110/BiasAdd/ReadVariableOpReadVariableOp)dense_110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_110/BiasAdd/ReadVariableOp?
dense_110/BiasAddBiasAdddense_110/MatMul:product:0(dense_110/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_110/BiasAdd?
IdentityIdentitydense_110/BiasAdd:output:0'^batch_normalization_144/AssignNewValue)^batch_normalization_144/AssignNewValue_18^batch_normalization_144/FusedBatchNormV3/ReadVariableOp:^batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_144/ReadVariableOp)^batch_normalization_144/ReadVariableOp_1'^batch_normalization_145/AssignNewValue)^batch_normalization_145/AssignNewValue_18^batch_normalization_145/FusedBatchNormV3/ReadVariableOp:^batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_145/ReadVariableOp)^batch_normalization_145/ReadVariableOp_1'^batch_normalization_146/AssignNewValue)^batch_normalization_146/AssignNewValue_18^batch_normalization_146/FusedBatchNormV3/ReadVariableOp:^batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_146/ReadVariableOp)^batch_normalization_146/ReadVariableOp_1<^batch_normalization_147/AssignMovingAvg/AssignSubVariableOp7^batch_normalization_147/AssignMovingAvg/ReadVariableOp>^batch_normalization_147/AssignMovingAvg_1/AssignSubVariableOp9^batch_normalization_147/AssignMovingAvg_1/ReadVariableOp1^batch_normalization_147/batchnorm/ReadVariableOp5^batch_normalization_147/batchnorm/mul/ReadVariableOp"^conv2d_108/BiasAdd/ReadVariableOp!^conv2d_108/Conv2D/ReadVariableOp"^conv2d_109/BiasAdd/ReadVariableOp!^conv2d_109/Conv2D/ReadVariableOp"^conv2d_110/BiasAdd/ReadVariableOp!^conv2d_110/Conv2D/ReadVariableOp!^dense_108/BiasAdd/ReadVariableOp ^dense_108/MatMul/ReadVariableOp!^dense_109/BiasAdd/ReadVariableOp ^dense_109/MatMul/ReadVariableOp!^dense_110/BiasAdd/ReadVariableOp ^dense_110/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2P
&batch_normalization_144/AssignNewValue&batch_normalization_144/AssignNewValue2T
(batch_normalization_144/AssignNewValue_1(batch_normalization_144/AssignNewValue_12r
7batch_normalization_144/FusedBatchNormV3/ReadVariableOp7batch_normalization_144/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_144/FusedBatchNormV3/ReadVariableOp_19batch_normalization_144/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_144/ReadVariableOp&batch_normalization_144/ReadVariableOp2T
(batch_normalization_144/ReadVariableOp_1(batch_normalization_144/ReadVariableOp_12P
&batch_normalization_145/AssignNewValue&batch_normalization_145/AssignNewValue2T
(batch_normalization_145/AssignNewValue_1(batch_normalization_145/AssignNewValue_12r
7batch_normalization_145/FusedBatchNormV3/ReadVariableOp7batch_normalization_145/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_145/FusedBatchNormV3/ReadVariableOp_19batch_normalization_145/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_145/ReadVariableOp&batch_normalization_145/ReadVariableOp2T
(batch_normalization_145/ReadVariableOp_1(batch_normalization_145/ReadVariableOp_12P
&batch_normalization_146/AssignNewValue&batch_normalization_146/AssignNewValue2T
(batch_normalization_146/AssignNewValue_1(batch_normalization_146/AssignNewValue_12r
7batch_normalization_146/FusedBatchNormV3/ReadVariableOp7batch_normalization_146/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_146/FusedBatchNormV3/ReadVariableOp_19batch_normalization_146/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_146/ReadVariableOp&batch_normalization_146/ReadVariableOp2T
(batch_normalization_146/ReadVariableOp_1(batch_normalization_146/ReadVariableOp_12z
;batch_normalization_147/AssignMovingAvg/AssignSubVariableOp;batch_normalization_147/AssignMovingAvg/AssignSubVariableOp2p
6batch_normalization_147/AssignMovingAvg/ReadVariableOp6batch_normalization_147/AssignMovingAvg/ReadVariableOp2~
=batch_normalization_147/AssignMovingAvg_1/AssignSubVariableOp=batch_normalization_147/AssignMovingAvg_1/AssignSubVariableOp2t
8batch_normalization_147/AssignMovingAvg_1/ReadVariableOp8batch_normalization_147/AssignMovingAvg_1/ReadVariableOp2d
0batch_normalization_147/batchnorm/ReadVariableOp0batch_normalization_147/batchnorm/ReadVariableOp2l
4batch_normalization_147/batchnorm/mul/ReadVariableOp4batch_normalization_147/batchnorm/mul/ReadVariableOp2F
!conv2d_108/BiasAdd/ReadVariableOp!conv2d_108/BiasAdd/ReadVariableOp2D
 conv2d_108/Conv2D/ReadVariableOp conv2d_108/Conv2D/ReadVariableOp2F
!conv2d_109/BiasAdd/ReadVariableOp!conv2d_109/BiasAdd/ReadVariableOp2D
 conv2d_109/Conv2D/ReadVariableOp conv2d_109/Conv2D/ReadVariableOp2F
!conv2d_110/BiasAdd/ReadVariableOp!conv2d_110/BiasAdd/ReadVariableOp2D
 conv2d_110/Conv2D/ReadVariableOp conv2d_110/Conv2D/ReadVariableOp2D
 dense_108/BiasAdd/ReadVariableOp dense_108/BiasAdd/ReadVariableOp2B
dense_108/MatMul/ReadVariableOpdense_108/MatMul/ReadVariableOp2D
 dense_109/BiasAdd/ReadVariableOp dense_109/BiasAdd/ReadVariableOp2B
dense_109/MatMul/ReadVariableOpdense_109/MatMul/ReadVariableOp2D
 dense_110/BiasAdd/ReadVariableOp dense_110/BiasAdd/ReadVariableOp2B
dense_110/MatMul/ReadVariableOpdense_110/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_145_layer_call_fn_320427

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
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_3189842
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
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_320476

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
+__inference_conv2d_110_layer_call_fn_320446

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
F__inference_conv2d_110_layer_call_and_return_conditional_losses_3190312
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
?
d
F__inference_dropout_36_layer_call_and_return_conditional_losses_319239

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
?^
?

D__inference_model_36_layer_call_and_return_conditional_losses_319398
input_37
conv2d_108_319321
conv2d_108_319323"
batch_normalization_144_319327"
batch_normalization_144_319329"
batch_normalization_144_319331"
batch_normalization_144_319333
conv2d_109_319337
conv2d_109_319339"
batch_normalization_145_319343"
batch_normalization_145_319345"
batch_normalization_145_319347"
batch_normalization_145_319349
conv2d_110_319353
conv2d_110_319355"
batch_normalization_146_319359"
batch_normalization_146_319361"
batch_normalization_146_319363"
batch_normalization_146_319365
dense_108_319370
dense_108_319372"
batch_normalization_147_319376"
batch_normalization_147_319378"
batch_normalization_147_319380"
batch_normalization_147_319382
dense_109_319386
dense_109_319388
dense_110_319392
dense_110_319394
identity??/batch_normalization_144/StatefulPartitionedCall?/batch_normalization_145/StatefulPartitionedCall?/batch_normalization_146/StatefulPartitionedCall?/batch_normalization_147/StatefulPartitionedCall?"conv2d_108/StatefulPartitionedCall?"conv2d_109/StatefulPartitionedCall?"conv2d_110/StatefulPartitionedCall?!dense_108/StatefulPartitionedCall?!dense_109/StatefulPartitionedCall?!dense_110/StatefulPartitionedCall?
"conv2d_108/StatefulPartitionedCallStatefulPartitionedCallinput_37conv2d_108_319321conv2d_108_319323*
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
F__inference_conv2d_108_layer_call_and_return_conditional_losses_3188052$
"conv2d_108/StatefulPartitionedCall?
activation_180/PartitionedCallPartitionedCall+conv2d_108/StatefulPartitionedCall:output:0*
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
J__inference_activation_180_layer_call_and_return_conditional_losses_3188262 
activation_180/PartitionedCall?
/batch_normalization_144/StatefulPartitionedCallStatefulPartitionedCall'activation_180/PartitionedCall:output:0batch_normalization_144_319327batch_normalization_144_319329batch_normalization_144_319331batch_normalization_144_319333*
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
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_31887121
/batch_normalization_144/StatefulPartitionedCall?
!max_pooling2d_108/PartitionedCallPartitionedCall8batch_normalization_144/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_3184132#
!max_pooling2d_108/PartitionedCall?
"conv2d_109/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_108/PartitionedCall:output:0conv2d_109_319337conv2d_109_319339*
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
F__inference_conv2d_109_layer_call_and_return_conditional_losses_3189182$
"conv2d_109/StatefulPartitionedCall?
activation_181/PartitionedCallPartitionedCall+conv2d_109/StatefulPartitionedCall:output:0*
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
J__inference_activation_181_layer_call_and_return_conditional_losses_3189392 
activation_181/PartitionedCall?
/batch_normalization_145/StatefulPartitionedCallStatefulPartitionedCall'activation_181/PartitionedCall:output:0batch_normalization_145_319343batch_normalization_145_319345batch_normalization_145_319347batch_normalization_145_319349*
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
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_31898421
/batch_normalization_145/StatefulPartitionedCall?
!max_pooling2d_109/PartitionedCallPartitionedCall8batch_normalization_145/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_3185292#
!max_pooling2d_109/PartitionedCall?
"conv2d_110/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_109/PartitionedCall:output:0conv2d_110_319353conv2d_110_319355*
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
F__inference_conv2d_110_layer_call_and_return_conditional_losses_3190312$
"conv2d_110/StatefulPartitionedCall?
activation_182/PartitionedCallPartitionedCall+conv2d_110/StatefulPartitionedCall:output:0*
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
J__inference_activation_182_layer_call_and_return_conditional_losses_3190522 
activation_182/PartitionedCall?
/batch_normalization_146/StatefulPartitionedCallStatefulPartitionedCall'activation_182/PartitionedCall:output:0batch_normalization_146_319359batch_normalization_146_319361batch_normalization_146_319363batch_normalization_146_319365*
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
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_31909721
/batch_normalization_146/StatefulPartitionedCall?
!max_pooling2d_110/PartitionedCallPartitionedCall8batch_normalization_146/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_3186452#
!max_pooling2d_110/PartitionedCall?
flatten_36/PartitionedCallPartitionedCall*max_pooling2d_110/PartitionedCall:output:0*
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
F__inference_flatten_36_layer_call_and_return_conditional_losses_3191402
flatten_36/PartitionedCall?
!dense_108/StatefulPartitionedCallStatefulPartitionedCall#flatten_36/PartitionedCall:output:0dense_108_319370dense_108_319372*
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
E__inference_dense_108_layer_call_and_return_conditional_losses_3191582#
!dense_108/StatefulPartitionedCall?
activation_183/PartitionedCallPartitionedCall*dense_108/StatefulPartitionedCall:output:0*
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
J__inference_activation_183_layer_call_and_return_conditional_losses_3191792 
activation_183/PartitionedCall?
/batch_normalization_147/StatefulPartitionedCallStatefulPartitionedCall'activation_183/PartitionedCall:output:0batch_normalization_147_319376batch_normalization_147_319378batch_normalization_147_319380batch_normalization_147_319382*
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
S__inference_batch_normalization_147_layer_call_and_return_conditional_losses_31878021
/batch_normalization_147/StatefulPartitionedCall?
dropout_36/PartitionedCallPartitionedCall8batch_normalization_147/StatefulPartitionedCall:output:0*
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
F__inference_dropout_36_layer_call_and_return_conditional_losses_3192392
dropout_36/PartitionedCall?
!dense_109/StatefulPartitionedCallStatefulPartitionedCall#dropout_36/PartitionedCall:output:0dense_109_319386dense_109_319388*
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
E__inference_dense_109_layer_call_and_return_conditional_losses_3192622#
!dense_109/StatefulPartitionedCall?
activation_184/PartitionedCallPartitionedCall*dense_109/StatefulPartitionedCall:output:0*
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
J__inference_activation_184_layer_call_and_return_conditional_losses_3192832 
activation_184/PartitionedCall?
!dense_110/StatefulPartitionedCallStatefulPartitionedCall'activation_184/PartitionedCall:output:0dense_110_319392dense_110_319394*
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
E__inference_dense_110_layer_call_and_return_conditional_losses_3193012#
!dense_110/StatefulPartitionedCall?
IdentityIdentity*dense_110/StatefulPartitionedCall:output:00^batch_normalization_144/StatefulPartitionedCall0^batch_normalization_145/StatefulPartitionedCall0^batch_normalization_146/StatefulPartitionedCall0^batch_normalization_147/StatefulPartitionedCall#^conv2d_108/StatefulPartitionedCall#^conv2d_109/StatefulPartitionedCall#^conv2d_110/StatefulPartitionedCall"^dense_108/StatefulPartitionedCall"^dense_109/StatefulPartitionedCall"^dense_110/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2b
/batch_normalization_144/StatefulPartitionedCall/batch_normalization_144/StatefulPartitionedCall2b
/batch_normalization_145/StatefulPartitionedCall/batch_normalization_145/StatefulPartitionedCall2b
/batch_normalization_146/StatefulPartitionedCall/batch_normalization_146/StatefulPartitionedCall2b
/batch_normalization_147/StatefulPartitionedCall/batch_normalization_147/StatefulPartitionedCall2H
"conv2d_108/StatefulPartitionedCall"conv2d_108/StatefulPartitionedCall2H
"conv2d_109/StatefulPartitionedCall"conv2d_109/StatefulPartitionedCall2H
"conv2d_110/StatefulPartitionedCall"conv2d_110/StatefulPartitionedCall2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_37
?
?
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_320401

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
8__inference_batch_normalization_146_layer_call_fn_320520

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
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_3190972
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
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_320540

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
?
f
J__inference_activation_181_layer_call_and_return_conditional_losses_318939

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
?
?
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_320162

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
?
f
J__inference_activation_183_layer_call_and_return_conditional_losses_320619

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
?
i
M__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_318413

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
?
E__inference_dense_110_layer_call_and_return_conditional_losses_319301

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
?^
?

D__inference_model_36_layer_call_and_return_conditional_losses_319622

inputs
conv2d_108_319545
conv2d_108_319547"
batch_normalization_144_319551"
batch_normalization_144_319553"
batch_normalization_144_319555"
batch_normalization_144_319557
conv2d_109_319561
conv2d_109_319563"
batch_normalization_145_319567"
batch_normalization_145_319569"
batch_normalization_145_319571"
batch_normalization_145_319573
conv2d_110_319577
conv2d_110_319579"
batch_normalization_146_319583"
batch_normalization_146_319585"
batch_normalization_146_319587"
batch_normalization_146_319589
dense_108_319594
dense_108_319596"
batch_normalization_147_319600"
batch_normalization_147_319602"
batch_normalization_147_319604"
batch_normalization_147_319606
dense_109_319610
dense_109_319612
dense_110_319616
dense_110_319618
identity??/batch_normalization_144/StatefulPartitionedCall?/batch_normalization_145/StatefulPartitionedCall?/batch_normalization_146/StatefulPartitionedCall?/batch_normalization_147/StatefulPartitionedCall?"conv2d_108/StatefulPartitionedCall?"conv2d_109/StatefulPartitionedCall?"conv2d_110/StatefulPartitionedCall?!dense_108/StatefulPartitionedCall?!dense_109/StatefulPartitionedCall?!dense_110/StatefulPartitionedCall?
"conv2d_108/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_108_319545conv2d_108_319547*
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
F__inference_conv2d_108_layer_call_and_return_conditional_losses_3188052$
"conv2d_108/StatefulPartitionedCall?
activation_180/PartitionedCallPartitionedCall+conv2d_108/StatefulPartitionedCall:output:0*
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
J__inference_activation_180_layer_call_and_return_conditional_losses_3188262 
activation_180/PartitionedCall?
/batch_normalization_144/StatefulPartitionedCallStatefulPartitionedCall'activation_180/PartitionedCall:output:0batch_normalization_144_319551batch_normalization_144_319553batch_normalization_144_319555batch_normalization_144_319557*
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
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_31887121
/batch_normalization_144/StatefulPartitionedCall?
!max_pooling2d_108/PartitionedCallPartitionedCall8batch_normalization_144/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_3184132#
!max_pooling2d_108/PartitionedCall?
"conv2d_109/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_108/PartitionedCall:output:0conv2d_109_319561conv2d_109_319563*
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
F__inference_conv2d_109_layer_call_and_return_conditional_losses_3189182$
"conv2d_109/StatefulPartitionedCall?
activation_181/PartitionedCallPartitionedCall+conv2d_109/StatefulPartitionedCall:output:0*
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
J__inference_activation_181_layer_call_and_return_conditional_losses_3189392 
activation_181/PartitionedCall?
/batch_normalization_145/StatefulPartitionedCallStatefulPartitionedCall'activation_181/PartitionedCall:output:0batch_normalization_145_319567batch_normalization_145_319569batch_normalization_145_319571batch_normalization_145_319573*
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
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_31898421
/batch_normalization_145/StatefulPartitionedCall?
!max_pooling2d_109/PartitionedCallPartitionedCall8batch_normalization_145/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_3185292#
!max_pooling2d_109/PartitionedCall?
"conv2d_110/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_109/PartitionedCall:output:0conv2d_110_319577conv2d_110_319579*
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
F__inference_conv2d_110_layer_call_and_return_conditional_losses_3190312$
"conv2d_110/StatefulPartitionedCall?
activation_182/PartitionedCallPartitionedCall+conv2d_110/StatefulPartitionedCall:output:0*
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
J__inference_activation_182_layer_call_and_return_conditional_losses_3190522 
activation_182/PartitionedCall?
/batch_normalization_146/StatefulPartitionedCallStatefulPartitionedCall'activation_182/PartitionedCall:output:0batch_normalization_146_319583batch_normalization_146_319585batch_normalization_146_319587batch_normalization_146_319589*
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
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_31909721
/batch_normalization_146/StatefulPartitionedCall?
!max_pooling2d_110/PartitionedCallPartitionedCall8batch_normalization_146/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_3186452#
!max_pooling2d_110/PartitionedCall?
flatten_36/PartitionedCallPartitionedCall*max_pooling2d_110/PartitionedCall:output:0*
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
F__inference_flatten_36_layer_call_and_return_conditional_losses_3191402
flatten_36/PartitionedCall?
!dense_108/StatefulPartitionedCallStatefulPartitionedCall#flatten_36/PartitionedCall:output:0dense_108_319594dense_108_319596*
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
E__inference_dense_108_layer_call_and_return_conditional_losses_3191582#
!dense_108/StatefulPartitionedCall?
activation_183/PartitionedCallPartitionedCall*dense_108/StatefulPartitionedCall:output:0*
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
J__inference_activation_183_layer_call_and_return_conditional_losses_3191792 
activation_183/PartitionedCall?
/batch_normalization_147/StatefulPartitionedCallStatefulPartitionedCall'activation_183/PartitionedCall:output:0batch_normalization_147_319600batch_normalization_147_319602batch_normalization_147_319604batch_normalization_147_319606*
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
S__inference_batch_normalization_147_layer_call_and_return_conditional_losses_31878021
/batch_normalization_147/StatefulPartitionedCall?
dropout_36/PartitionedCallPartitionedCall8batch_normalization_147/StatefulPartitionedCall:output:0*
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
F__inference_dropout_36_layer_call_and_return_conditional_losses_3192392
dropout_36/PartitionedCall?
!dense_109/StatefulPartitionedCallStatefulPartitionedCall#dropout_36/PartitionedCall:output:0dense_109_319610dense_109_319612*
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
E__inference_dense_109_layer_call_and_return_conditional_losses_3192622#
!dense_109/StatefulPartitionedCall?
activation_184/PartitionedCallPartitionedCall*dense_109/StatefulPartitionedCall:output:0*
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
J__inference_activation_184_layer_call_and_return_conditional_losses_3192832 
activation_184/PartitionedCall?
!dense_110/StatefulPartitionedCallStatefulPartitionedCall'activation_184/PartitionedCall:output:0dense_110_319616dense_110_319618*
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
E__inference_dense_110_layer_call_and_return_conditional_losses_3193012#
!dense_110/StatefulPartitionedCall?
IdentityIdentity*dense_110/StatefulPartitionedCall:output:00^batch_normalization_144/StatefulPartitionedCall0^batch_normalization_145/StatefulPartitionedCall0^batch_normalization_146/StatefulPartitionedCall0^batch_normalization_147/StatefulPartitionedCall#^conv2d_108/StatefulPartitionedCall#^conv2d_109/StatefulPartitionedCall#^conv2d_110/StatefulPartitionedCall"^dense_108/StatefulPartitionedCall"^dense_109/StatefulPartitionedCall"^dense_110/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2b
/batch_normalization_144/StatefulPartitionedCall/batch_normalization_144/StatefulPartitionedCall2b
/batch_normalization_145/StatefulPartitionedCall/batch_normalization_145/StatefulPartitionedCall2b
/batch_normalization_146/StatefulPartitionedCall/batch_normalization_146/StatefulPartitionedCall2b
/batch_normalization_147/StatefulPartitionedCall/batch_normalization_147/StatefulPartitionedCall2H
"conv2d_108/StatefulPartitionedCall"conv2d_108/StatefulPartitionedCall2H
"conv2d_109/StatefulPartitionedCall"conv2d_109/StatefulPartitionedCall2H
"conv2d_110/StatefulPartitionedCall"conv2d_110/StatefulPartitionedCall2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_318645

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
f
J__inference_activation_182_layer_call_and_return_conditional_losses_320451

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
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_318853

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
?
?
8__inference_batch_normalization_146_layer_call_fn_320571

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
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_3185972
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
?
K
/__inference_activation_183_layer_call_fn_320624

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
J__inference_activation_183_layer_call_and_return_conditional_losses_3191792
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
?`
?

D__inference_model_36_layer_call_and_return_conditional_losses_319481

inputs
conv2d_108_319404
conv2d_108_319406"
batch_normalization_144_319410"
batch_normalization_144_319412"
batch_normalization_144_319414"
batch_normalization_144_319416
conv2d_109_319420
conv2d_109_319422"
batch_normalization_145_319426"
batch_normalization_145_319428"
batch_normalization_145_319430"
batch_normalization_145_319432
conv2d_110_319436
conv2d_110_319438"
batch_normalization_146_319442"
batch_normalization_146_319444"
batch_normalization_146_319446"
batch_normalization_146_319448
dense_108_319453
dense_108_319455"
batch_normalization_147_319459"
batch_normalization_147_319461"
batch_normalization_147_319463"
batch_normalization_147_319465
dense_109_319469
dense_109_319471
dense_110_319475
dense_110_319477
identity??/batch_normalization_144/StatefulPartitionedCall?/batch_normalization_145/StatefulPartitionedCall?/batch_normalization_146/StatefulPartitionedCall?/batch_normalization_147/StatefulPartitionedCall?"conv2d_108/StatefulPartitionedCall?"conv2d_109/StatefulPartitionedCall?"conv2d_110/StatefulPartitionedCall?!dense_108/StatefulPartitionedCall?!dense_109/StatefulPartitionedCall?!dense_110/StatefulPartitionedCall?"dropout_36/StatefulPartitionedCall?
"conv2d_108/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_108_319404conv2d_108_319406*
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
F__inference_conv2d_108_layer_call_and_return_conditional_losses_3188052$
"conv2d_108/StatefulPartitionedCall?
activation_180/PartitionedCallPartitionedCall+conv2d_108/StatefulPartitionedCall:output:0*
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
J__inference_activation_180_layer_call_and_return_conditional_losses_3188262 
activation_180/PartitionedCall?
/batch_normalization_144/StatefulPartitionedCallStatefulPartitionedCall'activation_180/PartitionedCall:output:0batch_normalization_144_319410batch_normalization_144_319412batch_normalization_144_319414batch_normalization_144_319416*
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
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_31885321
/batch_normalization_144/StatefulPartitionedCall?
!max_pooling2d_108/PartitionedCallPartitionedCall8batch_normalization_144/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_3184132#
!max_pooling2d_108/PartitionedCall?
"conv2d_109/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_108/PartitionedCall:output:0conv2d_109_319420conv2d_109_319422*
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
F__inference_conv2d_109_layer_call_and_return_conditional_losses_3189182$
"conv2d_109/StatefulPartitionedCall?
activation_181/PartitionedCallPartitionedCall+conv2d_109/StatefulPartitionedCall:output:0*
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
J__inference_activation_181_layer_call_and_return_conditional_losses_3189392 
activation_181/PartitionedCall?
/batch_normalization_145/StatefulPartitionedCallStatefulPartitionedCall'activation_181/PartitionedCall:output:0batch_normalization_145_319426batch_normalization_145_319428batch_normalization_145_319430batch_normalization_145_319432*
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
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_31896621
/batch_normalization_145/StatefulPartitionedCall?
!max_pooling2d_109/PartitionedCallPartitionedCall8batch_normalization_145/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_3185292#
!max_pooling2d_109/PartitionedCall?
"conv2d_110/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_109/PartitionedCall:output:0conv2d_110_319436conv2d_110_319438*
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
F__inference_conv2d_110_layer_call_and_return_conditional_losses_3190312$
"conv2d_110/StatefulPartitionedCall?
activation_182/PartitionedCallPartitionedCall+conv2d_110/StatefulPartitionedCall:output:0*
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
J__inference_activation_182_layer_call_and_return_conditional_losses_3190522 
activation_182/PartitionedCall?
/batch_normalization_146/StatefulPartitionedCallStatefulPartitionedCall'activation_182/PartitionedCall:output:0batch_normalization_146_319442batch_normalization_146_319444batch_normalization_146_319446batch_normalization_146_319448*
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
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_31907921
/batch_normalization_146/StatefulPartitionedCall?
!max_pooling2d_110/PartitionedCallPartitionedCall8batch_normalization_146/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_3186452#
!max_pooling2d_110/PartitionedCall?
flatten_36/PartitionedCallPartitionedCall*max_pooling2d_110/PartitionedCall:output:0*
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
F__inference_flatten_36_layer_call_and_return_conditional_losses_3191402
flatten_36/PartitionedCall?
!dense_108/StatefulPartitionedCallStatefulPartitionedCall#flatten_36/PartitionedCall:output:0dense_108_319453dense_108_319455*
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
E__inference_dense_108_layer_call_and_return_conditional_losses_3191582#
!dense_108/StatefulPartitionedCall?
activation_183/PartitionedCallPartitionedCall*dense_108/StatefulPartitionedCall:output:0*
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
J__inference_activation_183_layer_call_and_return_conditional_losses_3191792 
activation_183/PartitionedCall?
/batch_normalization_147/StatefulPartitionedCallStatefulPartitionedCall'activation_183/PartitionedCall:output:0batch_normalization_147_319459batch_normalization_147_319461batch_normalization_147_319463batch_normalization_147_319465*
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
S__inference_batch_normalization_147_layer_call_and_return_conditional_losses_31874721
/batch_normalization_147/StatefulPartitionedCall?
"dropout_36/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_147/StatefulPartitionedCall:output:0*
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
F__inference_dropout_36_layer_call_and_return_conditional_losses_3192342$
"dropout_36/StatefulPartitionedCall?
!dense_109/StatefulPartitionedCallStatefulPartitionedCall+dropout_36/StatefulPartitionedCall:output:0dense_109_319469dense_109_319471*
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
E__inference_dense_109_layer_call_and_return_conditional_losses_3192622#
!dense_109/StatefulPartitionedCall?
activation_184/PartitionedCallPartitionedCall*dense_109/StatefulPartitionedCall:output:0*
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
J__inference_activation_184_layer_call_and_return_conditional_losses_3192832 
activation_184/PartitionedCall?
!dense_110/StatefulPartitionedCallStatefulPartitionedCall'activation_184/PartitionedCall:output:0dense_110_319475dense_110_319477*
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
E__inference_dense_110_layer_call_and_return_conditional_losses_3193012#
!dense_110/StatefulPartitionedCall?
IdentityIdentity*dense_110/StatefulPartitionedCall:output:00^batch_normalization_144/StatefulPartitionedCall0^batch_normalization_145/StatefulPartitionedCall0^batch_normalization_146/StatefulPartitionedCall0^batch_normalization_147/StatefulPartitionedCall#^conv2d_108/StatefulPartitionedCall#^conv2d_109/StatefulPartitionedCall#^conv2d_110/StatefulPartitionedCall"^dense_108/StatefulPartitionedCall"^dense_109/StatefulPartitionedCall"^dense_110/StatefulPartitionedCall#^dropout_36/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2b
/batch_normalization_144/StatefulPartitionedCall/batch_normalization_144/StatefulPartitionedCall2b
/batch_normalization_145/StatefulPartitionedCall/batch_normalization_145/StatefulPartitionedCall2b
/batch_normalization_146/StatefulPartitionedCall/batch_normalization_146/StatefulPartitionedCall2b
/batch_normalization_147/StatefulPartitionedCall/batch_normalization_147/StatefulPartitionedCall2H
"conv2d_108/StatefulPartitionedCall"conv2d_108/StatefulPartitionedCall2H
"conv2d_109/StatefulPartitionedCall"conv2d_109/StatefulPartitionedCall2H
"conv2d_110/StatefulPartitionedCall"conv2d_110/StatefulPartitionedCall2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2H
"dropout_36/StatefulPartitionedCall"dropout_36/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?D
?
__inference__traced_save_320894
file_prefix0
,savev2_conv2d_108_kernel_read_readvariableop.
*savev2_conv2d_108_bias_read_readvariableop<
8savev2_batch_normalization_144_gamma_read_readvariableop;
7savev2_batch_normalization_144_beta_read_readvariableopB
>savev2_batch_normalization_144_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_144_moving_variance_read_readvariableop0
,savev2_conv2d_109_kernel_read_readvariableop.
*savev2_conv2d_109_bias_read_readvariableop<
8savev2_batch_normalization_145_gamma_read_readvariableop;
7savev2_batch_normalization_145_beta_read_readvariableopB
>savev2_batch_normalization_145_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_145_moving_variance_read_readvariableop0
,savev2_conv2d_110_kernel_read_readvariableop.
*savev2_conv2d_110_bias_read_readvariableop<
8savev2_batch_normalization_146_gamma_read_readvariableop;
7savev2_batch_normalization_146_beta_read_readvariableopB
>savev2_batch_normalization_146_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_146_moving_variance_read_readvariableop/
+savev2_dense_108_kernel_read_readvariableop-
)savev2_dense_108_bias_read_readvariableop<
8savev2_batch_normalization_147_gamma_read_readvariableop;
7savev2_batch_normalization_147_beta_read_readvariableopB
>savev2_batch_normalization_147_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_147_moving_variance_read_readvariableop/
+savev2_dense_109_kernel_read_readvariableop-
)savev2_dense_109_bias_read_readvariableop/
+savev2_dense_110_kernel_read_readvariableop-
)savev2_dense_110_bias_read_readvariableop$
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_108_kernel_read_readvariableop*savev2_conv2d_108_bias_read_readvariableop8savev2_batch_normalization_144_gamma_read_readvariableop7savev2_batch_normalization_144_beta_read_readvariableop>savev2_batch_normalization_144_moving_mean_read_readvariableopBsavev2_batch_normalization_144_moving_variance_read_readvariableop,savev2_conv2d_109_kernel_read_readvariableop*savev2_conv2d_109_bias_read_readvariableop8savev2_batch_normalization_145_gamma_read_readvariableop7savev2_batch_normalization_145_beta_read_readvariableop>savev2_batch_normalization_145_moving_mean_read_readvariableopBsavev2_batch_normalization_145_moving_variance_read_readvariableop,savev2_conv2d_110_kernel_read_readvariableop*savev2_conv2d_110_bias_read_readvariableop8savev2_batch_normalization_146_gamma_read_readvariableop7savev2_batch_normalization_146_beta_read_readvariableop>savev2_batch_normalization_146_moving_mean_read_readvariableopBsavev2_batch_normalization_146_moving_variance_read_readvariableop+savev2_dense_108_kernel_read_readvariableop)savev2_dense_108_bias_read_readvariableop8savev2_batch_normalization_147_gamma_read_readvariableop7savev2_batch_normalization_147_beta_read_readvariableop>savev2_batch_normalization_147_moving_mean_read_readvariableopBsavev2_batch_normalization_147_moving_variance_read_readvariableop+savev2_dense_109_kernel_read_readvariableop)savev2_dense_109_bias_read_readvariableop+savev2_dense_110_kernel_read_readvariableop)savev2_dense_110_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
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
?
G
+__inference_flatten_36_layer_call_fn_320595

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
F__inference_flatten_36_layer_call_and_return_conditional_losses_3191402
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
?
?
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_319079

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
J__inference_activation_183_layer_call_and_return_conditional_losses_319179

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
?
?
8__inference_batch_normalization_144_layer_call_fn_320270

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
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_3188712
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
?
?
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_318871

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
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_320337

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
"__inference__traced_restore_320994
file_prefix&
"assignvariableop_conv2d_108_kernel&
"assignvariableop_1_conv2d_108_bias4
0assignvariableop_2_batch_normalization_144_gamma3
/assignvariableop_3_batch_normalization_144_beta:
6assignvariableop_4_batch_normalization_144_moving_mean>
:assignvariableop_5_batch_normalization_144_moving_variance(
$assignvariableop_6_conv2d_109_kernel&
"assignvariableop_7_conv2d_109_bias4
0assignvariableop_8_batch_normalization_145_gamma3
/assignvariableop_9_batch_normalization_145_beta;
7assignvariableop_10_batch_normalization_145_moving_mean?
;assignvariableop_11_batch_normalization_145_moving_variance)
%assignvariableop_12_conv2d_110_kernel'
#assignvariableop_13_conv2d_110_bias5
1assignvariableop_14_batch_normalization_146_gamma4
0assignvariableop_15_batch_normalization_146_beta;
7assignvariableop_16_batch_normalization_146_moving_mean?
;assignvariableop_17_batch_normalization_146_moving_variance(
$assignvariableop_18_dense_108_kernel&
"assignvariableop_19_dense_108_bias5
1assignvariableop_20_batch_normalization_147_gamma4
0assignvariableop_21_batch_normalization_147_beta;
7assignvariableop_22_batch_normalization_147_moving_mean?
;assignvariableop_23_batch_normalization_147_moving_variance(
$assignvariableop_24_dense_109_kernel&
"assignvariableop_25_dense_109_bias(
$assignvariableop_26_dense_110_kernel&
"assignvariableop_27_dense_110_bias
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_108_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_108_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_144_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_144_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_144_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_144_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_109_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_109_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_145_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_145_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_145_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_145_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_110_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_110_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_146_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_146_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_146_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_146_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp$assignvariableop_18_dense_108_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_dense_108_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_147_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_147_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_147_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_147_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp$assignvariableop_24_dense_109_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp"assignvariableop_25_dense_109_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp$assignvariableop_26_dense_110_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp"assignvariableop_27_dense_110_biasIdentity_27:output:0"/device:CPU:0*
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
?0
?
S__inference_batch_normalization_147_layer_call_and_return_conditional_losses_320660

inputs
assignmovingavg_320635
assignmovingavg_1_320641)
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
loc:@AssignMovingAvg/320635*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_320635*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/320635*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/320635*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_320635AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/320635*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/320641*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_320641*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/320641*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/320641*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_320641AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/320641*
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
F__inference_conv2d_108_layer_call_and_return_conditional_losses_318805

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
E__inference_dense_108_layer_call_and_return_conditional_losses_319158

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
?
?
8__inference_batch_normalization_144_layer_call_fn_320257

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
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_3188532
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
?
f
J__inference_activation_180_layer_call_and_return_conditional_losses_318826

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
?
?
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_319097

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
ޛ
?
D__inference_model_36_layer_call_and_return_conditional_losses_319991

inputs-
)conv2d_108_conv2d_readvariableop_resource.
*conv2d_108_biasadd_readvariableop_resource3
/batch_normalization_144_readvariableop_resource5
1batch_normalization_144_readvariableop_1_resourceD
@batch_normalization_144_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_144_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_109_conv2d_readvariableop_resource.
*conv2d_109_biasadd_readvariableop_resource3
/batch_normalization_145_readvariableop_resource5
1batch_normalization_145_readvariableop_1_resourceD
@batch_normalization_145_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_145_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_110_conv2d_readvariableop_resource.
*conv2d_110_biasadd_readvariableop_resource3
/batch_normalization_146_readvariableop_resource5
1batch_normalization_146_readvariableop_1_resourceD
@batch_normalization_146_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_146_fusedbatchnormv3_readvariableop_1_resource,
(dense_108_matmul_readvariableop_resource-
)dense_108_biasadd_readvariableop_resource=
9batch_normalization_147_batchnorm_readvariableop_resourceA
=batch_normalization_147_batchnorm_mul_readvariableop_resource?
;batch_normalization_147_batchnorm_readvariableop_1_resource?
;batch_normalization_147_batchnorm_readvariableop_2_resource,
(dense_109_matmul_readvariableop_resource-
)dense_109_biasadd_readvariableop_resource,
(dense_110_matmul_readvariableop_resource-
)dense_110_biasadd_readvariableop_resource
identity??7batch_normalization_144/FusedBatchNormV3/ReadVariableOp?9batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_144/ReadVariableOp?(batch_normalization_144/ReadVariableOp_1?7batch_normalization_145/FusedBatchNormV3/ReadVariableOp?9batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_145/ReadVariableOp?(batch_normalization_145/ReadVariableOp_1?7batch_normalization_146/FusedBatchNormV3/ReadVariableOp?9batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_146/ReadVariableOp?(batch_normalization_146/ReadVariableOp_1?0batch_normalization_147/batchnorm/ReadVariableOp?2batch_normalization_147/batchnorm/ReadVariableOp_1?2batch_normalization_147/batchnorm/ReadVariableOp_2?4batch_normalization_147/batchnorm/mul/ReadVariableOp?!conv2d_108/BiasAdd/ReadVariableOp? conv2d_108/Conv2D/ReadVariableOp?!conv2d_109/BiasAdd/ReadVariableOp? conv2d_109/Conv2D/ReadVariableOp?!conv2d_110/BiasAdd/ReadVariableOp? conv2d_110/Conv2D/ReadVariableOp? dense_108/BiasAdd/ReadVariableOp?dense_108/MatMul/ReadVariableOp? dense_109/BiasAdd/ReadVariableOp?dense_109/MatMul/ReadVariableOp? dense_110/BiasAdd/ReadVariableOp?dense_110/MatMul/ReadVariableOp?
 conv2d_108/Conv2D/ReadVariableOpReadVariableOp)conv2d_108_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_108/Conv2D/ReadVariableOp?
conv2d_108/Conv2DConv2Dinputs(conv2d_108/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2
conv2d_108/Conv2D?
!conv2d_108/BiasAdd/ReadVariableOpReadVariableOp*conv2d_108_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_108/BiasAdd/ReadVariableOp?
conv2d_108/BiasAddBiasAddconv2d_108/Conv2D:output:0)conv2d_108/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  2
conv2d_108/BiasAdd?
activation_180/ReluReluconv2d_108/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  2
activation_180/Relu?
&batch_normalization_144/ReadVariableOpReadVariableOp/batch_normalization_144_readvariableop_resource*
_output_shapes
:*
dtype02(
&batch_normalization_144/ReadVariableOp?
(batch_normalization_144/ReadVariableOp_1ReadVariableOp1batch_normalization_144_readvariableop_1_resource*
_output_shapes
:*
dtype02*
(batch_normalization_144/ReadVariableOp_1?
7batch_normalization_144/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_144_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype029
7batch_normalization_144/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_144_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02;
9batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_144/FusedBatchNormV3FusedBatchNormV3!activation_180/Relu:activations:0.batch_normalization_144/ReadVariableOp:value:00batch_normalization_144/ReadVariableOp_1:value:0?batch_normalization_144/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_144/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
is_training( 2*
(batch_normalization_144/FusedBatchNormV3?
max_pooling2d_108/MaxPoolMaxPool,batch_normalization_144/FusedBatchNormV3:y:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_108/MaxPool?
 conv2d_109/Conv2D/ReadVariableOpReadVariableOp)conv2d_109_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_109/Conv2D/ReadVariableOp?
conv2d_109/Conv2DConv2D"max_pooling2d_108/MaxPool:output:0(conv2d_109/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_109/Conv2D?
!conv2d_109/BiasAdd/ReadVariableOpReadVariableOp*conv2d_109_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_109/BiasAdd/ReadVariableOp?
conv2d_109/BiasAddBiasAddconv2d_109/Conv2D:output:0)conv2d_109/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_109/BiasAdd?
activation_181/ReluReluconv2d_109/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
activation_181/Relu?
&batch_normalization_145/ReadVariableOpReadVariableOp/batch_normalization_145_readvariableop_resource*
_output_shapes
: *
dtype02(
&batch_normalization_145/ReadVariableOp?
(batch_normalization_145/ReadVariableOp_1ReadVariableOp1batch_normalization_145_readvariableop_1_resource*
_output_shapes
: *
dtype02*
(batch_normalization_145/ReadVariableOp_1?
7batch_normalization_145/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_145_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype029
7batch_normalization_145/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_145_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02;
9batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_145/FusedBatchNormV3FusedBatchNormV3!activation_181/Relu:activations:0.batch_normalization_145/ReadVariableOp:value:00batch_normalization_145/ReadVariableOp_1:value:0?batch_normalization_145/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_145/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2*
(batch_normalization_145/FusedBatchNormV3?
max_pooling2d_109/MaxPoolMaxPool,batch_normalization_145/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_109/MaxPool?
 conv2d_110/Conv2D/ReadVariableOpReadVariableOp)conv2d_110_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_110/Conv2D/ReadVariableOp?
conv2d_110/Conv2DConv2D"max_pooling2d_109/MaxPool:output:0(conv2d_110/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_110/Conv2D?
!conv2d_110/BiasAdd/ReadVariableOpReadVariableOp*conv2d_110_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_110/BiasAdd/ReadVariableOp?
conv2d_110/BiasAddBiasAddconv2d_110/Conv2D:output:0)conv2d_110/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_110/BiasAdd?
activation_182/ReluReluconv2d_110/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_182/Relu?
&batch_normalization_146/ReadVariableOpReadVariableOp/batch_normalization_146_readvariableop_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_146/ReadVariableOp?
(batch_normalization_146/ReadVariableOp_1ReadVariableOp1batch_normalization_146_readvariableop_1_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_146/ReadVariableOp_1?
7batch_normalization_146/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_146_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype029
7batch_normalization_146/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_146_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_146/FusedBatchNormV3FusedBatchNormV3!activation_182/Relu:activations:0.batch_normalization_146/ReadVariableOp:value:00batch_normalization_146/ReadVariableOp_1:value:0?batch_normalization_146/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_146/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2*
(batch_normalization_146/FusedBatchNormV3?
max_pooling2d_110/MaxPoolMaxPool,batch_normalization_146/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_110/MaxPoolu
flatten_36/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_36/Const?
flatten_36/ReshapeReshape"max_pooling2d_110/MaxPool:output:0flatten_36/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_36/Reshape?
dense_108/MatMul/ReadVariableOpReadVariableOp(dense_108_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
dense_108/MatMul/ReadVariableOp?
dense_108/MatMulMatMulflatten_36/Reshape:output:0'dense_108/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_108/MatMul?
 dense_108/BiasAdd/ReadVariableOpReadVariableOp)dense_108_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_108/BiasAdd/ReadVariableOp?
dense_108/BiasAddBiasAdddense_108/MatMul:product:0(dense_108/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_108/BiasAdd?
activation_183/ReluReludense_108/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_183/Relu?
0batch_normalization_147/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_147_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype022
0batch_normalization_147/batchnorm/ReadVariableOp?
'batch_normalization_147/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2)
'batch_normalization_147/batchnorm/add/y?
%batch_normalization_147/batchnorm/addAddV28batch_normalization_147/batchnorm/ReadVariableOp:value:00batch_normalization_147/batchnorm/add/y:output:0*
T0*
_output_shapes
:2'
%batch_normalization_147/batchnorm/add?
'batch_normalization_147/batchnorm/RsqrtRsqrt)batch_normalization_147/batchnorm/add:z:0*
T0*
_output_shapes
:2)
'batch_normalization_147/batchnorm/Rsqrt?
4batch_normalization_147/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_147_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization_147/batchnorm/mul/ReadVariableOp?
%batch_normalization_147/batchnorm/mulMul+batch_normalization_147/batchnorm/Rsqrt:y:0<batch_normalization_147/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2'
%batch_normalization_147/batchnorm/mul?
'batch_normalization_147/batchnorm/mul_1Mul!activation_183/Relu:activations:0)batch_normalization_147/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2)
'batch_normalization_147/batchnorm/mul_1?
2batch_normalization_147/batchnorm/ReadVariableOp_1ReadVariableOp;batch_normalization_147_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype024
2batch_normalization_147/batchnorm/ReadVariableOp_1?
'batch_normalization_147/batchnorm/mul_2Mul:batch_normalization_147/batchnorm/ReadVariableOp_1:value:0)batch_normalization_147/batchnorm/mul:z:0*
T0*
_output_shapes
:2)
'batch_normalization_147/batchnorm/mul_2?
2batch_normalization_147/batchnorm/ReadVariableOp_2ReadVariableOp;batch_normalization_147_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype024
2batch_normalization_147/batchnorm/ReadVariableOp_2?
%batch_normalization_147/batchnorm/subSub:batch_normalization_147/batchnorm/ReadVariableOp_2:value:0+batch_normalization_147/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2'
%batch_normalization_147/batchnorm/sub?
'batch_normalization_147/batchnorm/add_1AddV2+batch_normalization_147/batchnorm/mul_1:z:0)batch_normalization_147/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2)
'batch_normalization_147/batchnorm/add_1?
dropout_36/IdentityIdentity+batch_normalization_147/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????2
dropout_36/Identity?
dense_109/MatMul/ReadVariableOpReadVariableOp(dense_109_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_109/MatMul/ReadVariableOp?
dense_109/MatMulMatMuldropout_36/Identity:output:0'dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_109/MatMul?
 dense_109/BiasAdd/ReadVariableOpReadVariableOp)dense_109_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_109/BiasAdd/ReadVariableOp?
dense_109/BiasAddBiasAdddense_109/MatMul:product:0(dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_109/BiasAdd?
activation_184/ReluReludense_109/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_184/Relu?
dense_110/MatMul/ReadVariableOpReadVariableOp(dense_110_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_110/MatMul/ReadVariableOp?
dense_110/MatMulMatMul!activation_184/Relu:activations:0'dense_110/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_110/MatMul?
 dense_110/BiasAdd/ReadVariableOpReadVariableOp)dense_110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_110/BiasAdd/ReadVariableOp?
dense_110/BiasAddBiasAdddense_110/MatMul:product:0(dense_110/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_110/BiasAdd?

IdentityIdentitydense_110/BiasAdd:output:08^batch_normalization_144/FusedBatchNormV3/ReadVariableOp:^batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_144/ReadVariableOp)^batch_normalization_144/ReadVariableOp_18^batch_normalization_145/FusedBatchNormV3/ReadVariableOp:^batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_145/ReadVariableOp)^batch_normalization_145/ReadVariableOp_18^batch_normalization_146/FusedBatchNormV3/ReadVariableOp:^batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_146/ReadVariableOp)^batch_normalization_146/ReadVariableOp_11^batch_normalization_147/batchnorm/ReadVariableOp3^batch_normalization_147/batchnorm/ReadVariableOp_13^batch_normalization_147/batchnorm/ReadVariableOp_25^batch_normalization_147/batchnorm/mul/ReadVariableOp"^conv2d_108/BiasAdd/ReadVariableOp!^conv2d_108/Conv2D/ReadVariableOp"^conv2d_109/BiasAdd/ReadVariableOp!^conv2d_109/Conv2D/ReadVariableOp"^conv2d_110/BiasAdd/ReadVariableOp!^conv2d_110/Conv2D/ReadVariableOp!^dense_108/BiasAdd/ReadVariableOp ^dense_108/MatMul/ReadVariableOp!^dense_109/BiasAdd/ReadVariableOp ^dense_109/MatMul/ReadVariableOp!^dense_110/BiasAdd/ReadVariableOp ^dense_110/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2r
7batch_normalization_144/FusedBatchNormV3/ReadVariableOp7batch_normalization_144/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_144/FusedBatchNormV3/ReadVariableOp_19batch_normalization_144/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_144/ReadVariableOp&batch_normalization_144/ReadVariableOp2T
(batch_normalization_144/ReadVariableOp_1(batch_normalization_144/ReadVariableOp_12r
7batch_normalization_145/FusedBatchNormV3/ReadVariableOp7batch_normalization_145/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_145/FusedBatchNormV3/ReadVariableOp_19batch_normalization_145/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_145/ReadVariableOp&batch_normalization_145/ReadVariableOp2T
(batch_normalization_145/ReadVariableOp_1(batch_normalization_145/ReadVariableOp_12r
7batch_normalization_146/FusedBatchNormV3/ReadVariableOp7batch_normalization_146/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_146/FusedBatchNormV3/ReadVariableOp_19batch_normalization_146/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_146/ReadVariableOp&batch_normalization_146/ReadVariableOp2T
(batch_normalization_146/ReadVariableOp_1(batch_normalization_146/ReadVariableOp_12d
0batch_normalization_147/batchnorm/ReadVariableOp0batch_normalization_147/batchnorm/ReadVariableOp2h
2batch_normalization_147/batchnorm/ReadVariableOp_12batch_normalization_147/batchnorm/ReadVariableOp_12h
2batch_normalization_147/batchnorm/ReadVariableOp_22batch_normalization_147/batchnorm/ReadVariableOp_22l
4batch_normalization_147/batchnorm/mul/ReadVariableOp4batch_normalization_147/batchnorm/mul/ReadVariableOp2F
!conv2d_108/BiasAdd/ReadVariableOp!conv2d_108/BiasAdd/ReadVariableOp2D
 conv2d_108/Conv2D/ReadVariableOp conv2d_108/Conv2D/ReadVariableOp2F
!conv2d_109/BiasAdd/ReadVariableOp!conv2d_109/BiasAdd/ReadVariableOp2D
 conv2d_109/Conv2D/ReadVariableOp conv2d_109/Conv2D/ReadVariableOp2F
!conv2d_110/BiasAdd/ReadVariableOp!conv2d_110/BiasAdd/ReadVariableOp2D
 conv2d_110/Conv2D/ReadVariableOp conv2d_110/Conv2D/ReadVariableOp2D
 dense_108/BiasAdd/ReadVariableOp dense_108/BiasAdd/ReadVariableOp2B
dense_108/MatMul/ReadVariableOpdense_108/MatMul/ReadVariableOp2D
 dense_109/BiasAdd/ReadVariableOp dense_109/BiasAdd/ReadVariableOp2B
dense_109/MatMul/ReadVariableOpdense_109/MatMul/ReadVariableOp2D
 dense_110/BiasAdd/ReadVariableOp dense_110/BiasAdd/ReadVariableOp2B
dense_110/MatMul/ReadVariableOpdense_110/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_146_layer_call_fn_320584

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
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_3186282
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
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_318481

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
?
?
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_320494

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
?
?
+__inference_conv2d_108_layer_call_fn_320132

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
F__inference_conv2d_108_layer_call_and_return_conditional_losses_3188052
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
?
?
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_320558

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
?
f
J__inference_activation_184_layer_call_and_return_conditional_losses_319283

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
8__inference_batch_normalization_144_layer_call_fn_320206

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
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_3183962
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
?
?
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_320244

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
?
?
S__inference_batch_normalization_147_layer_call_and_return_conditional_losses_320680

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
?	
?
F__inference_conv2d_110_layer_call_and_return_conditional_losses_320437

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
?
?
8__inference_batch_normalization_145_layer_call_fn_320414

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
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_3189662
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
8__inference_batch_normalization_146_layer_call_fn_320507

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
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_3190792
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
J__inference_activation_180_layer_call_and_return_conditional_losses_320137

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
)__inference_model_36_layer_call_fn_320052

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
D__inference_model_36_layer_call_and_return_conditional_losses_3194812
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
?
?
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_318512

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
F__inference_conv2d_109_layer_call_and_return_conditional_losses_318918

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
?
d
+__inference_dropout_36_layer_call_fn_320728

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
F__inference_dropout_36_layer_call_and_return_conditional_losses_3192342
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
?
?
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_318396

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
?
?
)__inference_model_36_layer_call_fn_319540
input_37
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
StatefulPartitionedCallStatefulPartitionedCallinput_37unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
D__inference_model_36_layer_call_and_return_conditional_losses_3194812
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
input_37
?
G
+__inference_dropout_36_layer_call_fn_320733

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
F__inference_dropout_36_layer_call_and_return_conditional_losses_3192392
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
F__inference_conv2d_110_layer_call_and_return_conditional_losses_319031

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
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_320319

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
?
?
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_318966

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
?
N
2__inference_max_pooling2d_110_layer_call_fn_318651

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
M__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_3186452
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
?`
?

D__inference_model_36_layer_call_and_return_conditional_losses_319318
input_37
conv2d_108_318816
conv2d_108_318818"
batch_normalization_144_318898"
batch_normalization_144_318900"
batch_normalization_144_318902"
batch_normalization_144_318904
conv2d_109_318929
conv2d_109_318931"
batch_normalization_145_319011"
batch_normalization_145_319013"
batch_normalization_145_319015"
batch_normalization_145_319017
conv2d_110_319042
conv2d_110_319044"
batch_normalization_146_319124"
batch_normalization_146_319126"
batch_normalization_146_319128"
batch_normalization_146_319130
dense_108_319169
dense_108_319171"
batch_normalization_147_319213"
batch_normalization_147_319215"
batch_normalization_147_319217"
batch_normalization_147_319219
dense_109_319273
dense_109_319275
dense_110_319312
dense_110_319314
identity??/batch_normalization_144/StatefulPartitionedCall?/batch_normalization_145/StatefulPartitionedCall?/batch_normalization_146/StatefulPartitionedCall?/batch_normalization_147/StatefulPartitionedCall?"conv2d_108/StatefulPartitionedCall?"conv2d_109/StatefulPartitionedCall?"conv2d_110/StatefulPartitionedCall?!dense_108/StatefulPartitionedCall?!dense_109/StatefulPartitionedCall?!dense_110/StatefulPartitionedCall?"dropout_36/StatefulPartitionedCall?
"conv2d_108/StatefulPartitionedCallStatefulPartitionedCallinput_37conv2d_108_318816conv2d_108_318818*
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
F__inference_conv2d_108_layer_call_and_return_conditional_losses_3188052$
"conv2d_108/StatefulPartitionedCall?
activation_180/PartitionedCallPartitionedCall+conv2d_108/StatefulPartitionedCall:output:0*
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
J__inference_activation_180_layer_call_and_return_conditional_losses_3188262 
activation_180/PartitionedCall?
/batch_normalization_144/StatefulPartitionedCallStatefulPartitionedCall'activation_180/PartitionedCall:output:0batch_normalization_144_318898batch_normalization_144_318900batch_normalization_144_318902batch_normalization_144_318904*
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
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_31885321
/batch_normalization_144/StatefulPartitionedCall?
!max_pooling2d_108/PartitionedCallPartitionedCall8batch_normalization_144/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_3184132#
!max_pooling2d_108/PartitionedCall?
"conv2d_109/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_108/PartitionedCall:output:0conv2d_109_318929conv2d_109_318931*
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
F__inference_conv2d_109_layer_call_and_return_conditional_losses_3189182$
"conv2d_109/StatefulPartitionedCall?
activation_181/PartitionedCallPartitionedCall+conv2d_109/StatefulPartitionedCall:output:0*
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
J__inference_activation_181_layer_call_and_return_conditional_losses_3189392 
activation_181/PartitionedCall?
/batch_normalization_145/StatefulPartitionedCallStatefulPartitionedCall'activation_181/PartitionedCall:output:0batch_normalization_145_319011batch_normalization_145_319013batch_normalization_145_319015batch_normalization_145_319017*
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
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_31896621
/batch_normalization_145/StatefulPartitionedCall?
!max_pooling2d_109/PartitionedCallPartitionedCall8batch_normalization_145/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_3185292#
!max_pooling2d_109/PartitionedCall?
"conv2d_110/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_109/PartitionedCall:output:0conv2d_110_319042conv2d_110_319044*
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
F__inference_conv2d_110_layer_call_and_return_conditional_losses_3190312$
"conv2d_110/StatefulPartitionedCall?
activation_182/PartitionedCallPartitionedCall+conv2d_110/StatefulPartitionedCall:output:0*
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
J__inference_activation_182_layer_call_and_return_conditional_losses_3190522 
activation_182/PartitionedCall?
/batch_normalization_146/StatefulPartitionedCallStatefulPartitionedCall'activation_182/PartitionedCall:output:0batch_normalization_146_319124batch_normalization_146_319126batch_normalization_146_319128batch_normalization_146_319130*
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
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_31907921
/batch_normalization_146/StatefulPartitionedCall?
!max_pooling2d_110/PartitionedCallPartitionedCall8batch_normalization_146/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_3186452#
!max_pooling2d_110/PartitionedCall?
flatten_36/PartitionedCallPartitionedCall*max_pooling2d_110/PartitionedCall:output:0*
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
F__inference_flatten_36_layer_call_and_return_conditional_losses_3191402
flatten_36/PartitionedCall?
!dense_108/StatefulPartitionedCallStatefulPartitionedCall#flatten_36/PartitionedCall:output:0dense_108_319169dense_108_319171*
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
E__inference_dense_108_layer_call_and_return_conditional_losses_3191582#
!dense_108/StatefulPartitionedCall?
activation_183/PartitionedCallPartitionedCall*dense_108/StatefulPartitionedCall:output:0*
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
J__inference_activation_183_layer_call_and_return_conditional_losses_3191792 
activation_183/PartitionedCall?
/batch_normalization_147/StatefulPartitionedCallStatefulPartitionedCall'activation_183/PartitionedCall:output:0batch_normalization_147_319213batch_normalization_147_319215batch_normalization_147_319217batch_normalization_147_319219*
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
S__inference_batch_normalization_147_layer_call_and_return_conditional_losses_31874721
/batch_normalization_147/StatefulPartitionedCall?
"dropout_36/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_147/StatefulPartitionedCall:output:0*
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
F__inference_dropout_36_layer_call_and_return_conditional_losses_3192342$
"dropout_36/StatefulPartitionedCall?
!dense_109/StatefulPartitionedCallStatefulPartitionedCall+dropout_36/StatefulPartitionedCall:output:0dense_109_319273dense_109_319275*
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
E__inference_dense_109_layer_call_and_return_conditional_losses_3192622#
!dense_109/StatefulPartitionedCall?
activation_184/PartitionedCallPartitionedCall*dense_109/StatefulPartitionedCall:output:0*
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
J__inference_activation_184_layer_call_and_return_conditional_losses_3192832 
activation_184/PartitionedCall?
!dense_110/StatefulPartitionedCallStatefulPartitionedCall'activation_184/PartitionedCall:output:0dense_110_319312dense_110_319314*
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
E__inference_dense_110_layer_call_and_return_conditional_losses_3193012#
!dense_110/StatefulPartitionedCall?
IdentityIdentity*dense_110/StatefulPartitionedCall:output:00^batch_normalization_144/StatefulPartitionedCall0^batch_normalization_145/StatefulPartitionedCall0^batch_normalization_146/StatefulPartitionedCall0^batch_normalization_147/StatefulPartitionedCall#^conv2d_108/StatefulPartitionedCall#^conv2d_109/StatefulPartitionedCall#^conv2d_110/StatefulPartitionedCall"^dense_108/StatefulPartitionedCall"^dense_109/StatefulPartitionedCall"^dense_110/StatefulPartitionedCall#^dropout_36/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2b
/batch_normalization_144/StatefulPartitionedCall/batch_normalization_144/StatefulPartitionedCall2b
/batch_normalization_145/StatefulPartitionedCall/batch_normalization_145/StatefulPartitionedCall2b
/batch_normalization_146/StatefulPartitionedCall/batch_normalization_146/StatefulPartitionedCall2b
/batch_normalization_147/StatefulPartitionedCall/batch_normalization_147/StatefulPartitionedCall2H
"conv2d_108/StatefulPartitionedCall"conv2d_108/StatefulPartitionedCall2H
"conv2d_109/StatefulPartitionedCall"conv2d_109/StatefulPartitionedCall2H
"conv2d_110/StatefulPartitionedCall"conv2d_110/StatefulPartitionedCall2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2H
"dropout_36/StatefulPartitionedCall"dropout_36/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_37
?	
?
E__inference_dense_109_layer_call_and_return_conditional_losses_319262

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
?
?
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_320180

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
?
?
$__inference_signature_wrapper_319744
input_37
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
StatefulPartitionedCallStatefulPartitionedCallinput_37unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
!__inference__wrapped_model_3183032
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
input_37
?
?
8__inference_batch_normalization_145_layer_call_fn_320350

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
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_3184812
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
?	
?
E__inference_dense_110_layer_call_and_return_conditional_losses_320772

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
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_320383

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
?
f
J__inference_activation_182_layer_call_and_return_conditional_losses_319052

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
?
?
8__inference_batch_normalization_145_layer_call_fn_320363

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
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_3185122
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
?
?
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_320226

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
?
K
/__inference_activation_181_layer_call_fn_320299

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
J__inference_activation_181_layer_call_and_return_conditional_losses_3189392
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
e
F__inference_dropout_36_layer_call_and_return_conditional_losses_319234

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
?
N
2__inference_max_pooling2d_108_layer_call_fn_318419

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
M__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_3184132
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
?
F__inference_conv2d_108_layer_call_and_return_conditional_losses_320123

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
?

*__inference_dense_109_layer_call_fn_320752

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
E__inference_dense_109_layer_call_and_return_conditional_losses_3192622
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
input_379
serving_default_input_37:0?????????  =
	dense_1100
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
_tf_keras_networkߗ{"class_name": "Functional", "name": "model_36", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_36", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_37"}, "name": "input_37", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_108", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_108", "inbound_nodes": [[["input_37", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_180", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_180", "inbound_nodes": [[["conv2d_108", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_144", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_144", "inbound_nodes": [[["activation_180", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_108", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_108", "inbound_nodes": [[["batch_normalization_144", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_109", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_109", "inbound_nodes": [[["max_pooling2d_108", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_181", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_181", "inbound_nodes": [[["conv2d_109", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_145", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_145", "inbound_nodes": [[["activation_181", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_109", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_109", "inbound_nodes": [[["batch_normalization_145", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_110", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_110", "inbound_nodes": [[["max_pooling2d_109", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_182", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_182", "inbound_nodes": [[["conv2d_110", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_146", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_146", "inbound_nodes": [[["activation_182", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_110", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_110", "inbound_nodes": [[["batch_normalization_146", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_36", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_36", "inbound_nodes": [[["max_pooling2d_110", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_108", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_108", "inbound_nodes": [[["flatten_36", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_183", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_183", "inbound_nodes": [[["dense_108", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_147", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_147", "inbound_nodes": [[["activation_183", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_36", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_36", "inbound_nodes": [[["batch_normalization_147", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_109", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_109", "inbound_nodes": [[["dropout_36", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_184", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_184", "inbound_nodes": [[["dense_109", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_110", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_110", "inbound_nodes": [[["activation_184", 0, 0, {}]]]}], "input_layers": [["input_37", 0, 0]], "output_layers": [["dense_110", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_36", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_37"}, "name": "input_37", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_108", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_108", "inbound_nodes": [[["input_37", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_180", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_180", "inbound_nodes": [[["conv2d_108", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_144", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_144", "inbound_nodes": [[["activation_180", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_108", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_108", "inbound_nodes": [[["batch_normalization_144", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_109", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_109", "inbound_nodes": [[["max_pooling2d_108", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_181", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_181", "inbound_nodes": [[["conv2d_109", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_145", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_145", "inbound_nodes": [[["activation_181", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_109", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_109", "inbound_nodes": [[["batch_normalization_145", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_110", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_110", "inbound_nodes": [[["max_pooling2d_109", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_182", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_182", "inbound_nodes": [[["conv2d_110", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_146", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_146", "inbound_nodes": [[["activation_182", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_110", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_110", "inbound_nodes": [[["batch_normalization_146", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_36", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_36", "inbound_nodes": [[["max_pooling2d_110", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_108", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_108", "inbound_nodes": [[["flatten_36", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_183", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_183", "inbound_nodes": [[["dense_108", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_147", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_147", "inbound_nodes": [[["activation_183", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_36", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_36", "inbound_nodes": [[["batch_normalization_147", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_109", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_109", "inbound_nodes": [[["dropout_36", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_184", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_184", "inbound_nodes": [[["dense_109", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_110", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_110", "inbound_nodes": [[["activation_184", 0, 0, {}]]]}], "input_layers": [["input_37", 0, 0]], "output_layers": [["dense_110", 0, 0]]}}, "training_config": {"loss": "mean_absolute_percentage_error", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 4.999999873689376e-06, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
#_self_saveable_object_factories"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_37", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_37"}}
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
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_108", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_108", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
?
#%_self_saveable_object_factories
&regularization_losses
'trainable_variables
(	variables
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_180", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_180", "trainable": true, "dtype": "float32", "activation": "relu"}}
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
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_144", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_144", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 16]}}
?
#4_self_saveable_object_factories
5regularization_losses
6trainable_variables
7	variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_108", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_108", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
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
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_109", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_109", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 16]}}
?
#@_self_saveable_object_factories
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_181", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_181", "trainable": true, "dtype": "float32", "activation": "relu"}}
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
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_145", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_145", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
?
#O_self_saveable_object_factories
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_109", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_109", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
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
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_110", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_110", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 32]}}
?
#[_self_saveable_object_factories
\regularization_losses
]trainable_variables
^	variables
_	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_182", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_182", "trainable": true, "dtype": "float32", "activation": "relu"}}
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
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_146", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_146", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
?
#j_self_saveable_object_factories
kregularization_losses
ltrainable_variables
m	variables
n	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_110", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_110", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
#o_self_saveable_object_factories
pregularization_losses
qtrainable_variables
r	variables
s	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_36", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
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
_tf_keras_layer?{"class_name": "Dense", "name": "dense_108", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_108", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?
#{_self_saveable_object_factories
|regularization_losses
}trainable_variables
~	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_183", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_183", "trainable": true, "dtype": "float32", "activation": "relu"}}
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
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_147", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_147", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
?
$?_self_saveable_object_factories
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_36", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_36", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
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
_tf_keras_layer?{"class_name": "Dense", "name": "dense_109", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_109", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
?
$?_self_saveable_object_factories
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_184", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_184", "trainable": true, "dtype": "float32", "activation": "relu"}}
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
_tf_keras_layer?{"class_name": "Dense", "name": "dense_110", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_110", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4]}}
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
+:)2conv2d_108/kernel
:2conv2d_108/bias
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
+:)2batch_normalization_144/gamma
*:(2batch_normalization_144/beta
3:1 (2#batch_normalization_144/moving_mean
7:5 (2'batch_normalization_144/moving_variance
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
+:) 2conv2d_109/kernel
: 2conv2d_109/bias
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
+:) 2batch_normalization_145/gamma
*:( 2batch_normalization_145/beta
3:1  (2#batch_normalization_145/moving_mean
7:5  (2'batch_normalization_145/moving_variance
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
+:) @2conv2d_110/kernel
:@2conv2d_110/bias
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
+:)@2batch_normalization_146/gamma
*:(@2batch_normalization_146/beta
3:1@ (2#batch_normalization_146/moving_mean
7:5@ (2'batch_normalization_146/moving_variance
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
#:!	?2dense_108/kernel
:2dense_108/bias
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
+:)2batch_normalization_147/gamma
*:(2batch_normalization_147/beta
3:1 (2#batch_normalization_147/moving_mean
7:5 (2'batch_normalization_147/moving_variance
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
": 2dense_109/kernel
:2dense_109/bias
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
": 2dense_110/kernel
:2dense_110/bias
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
)__inference_model_36_layer_call_fn_319681
)__inference_model_36_layer_call_fn_320113
)__inference_model_36_layer_call_fn_319540
)__inference_model_36_layer_call_fn_320052?
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
D__inference_model_36_layer_call_and_return_conditional_losses_319882
D__inference_model_36_layer_call_and_return_conditional_losses_319991
D__inference_model_36_layer_call_and_return_conditional_losses_319398
D__inference_model_36_layer_call_and_return_conditional_losses_319318?
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
!__inference__wrapped_model_318303?
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
input_37?????????  
?2?
+__inference_conv2d_108_layer_call_fn_320132?
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
F__inference_conv2d_108_layer_call_and_return_conditional_losses_320123?
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
/__inference_activation_180_layer_call_fn_320142?
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
J__inference_activation_180_layer_call_and_return_conditional_losses_320137?
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
8__inference_batch_normalization_144_layer_call_fn_320193
8__inference_batch_normalization_144_layer_call_fn_320257
8__inference_batch_normalization_144_layer_call_fn_320206
8__inference_batch_normalization_144_layer_call_fn_320270?
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
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_320162
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_320244
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_320180
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_320226?
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
2__inference_max_pooling2d_108_layer_call_fn_318419?
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
M__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_318413?
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
+__inference_conv2d_109_layer_call_fn_320289?
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
F__inference_conv2d_109_layer_call_and_return_conditional_losses_320280?
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
/__inference_activation_181_layer_call_fn_320299?
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
J__inference_activation_181_layer_call_and_return_conditional_losses_320294?
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
8__inference_batch_normalization_145_layer_call_fn_320350
8__inference_batch_normalization_145_layer_call_fn_320363
8__inference_batch_normalization_145_layer_call_fn_320427
8__inference_batch_normalization_145_layer_call_fn_320414?
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
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_320401
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_320319
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_320383
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_320337?
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
2__inference_max_pooling2d_109_layer_call_fn_318535?
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
M__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_318529?
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
+__inference_conv2d_110_layer_call_fn_320446?
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
F__inference_conv2d_110_layer_call_and_return_conditional_losses_320437?
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
/__inference_activation_182_layer_call_fn_320456?
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
J__inference_activation_182_layer_call_and_return_conditional_losses_320451?
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
8__inference_batch_normalization_146_layer_call_fn_320520
8__inference_batch_normalization_146_layer_call_fn_320584
8__inference_batch_normalization_146_layer_call_fn_320507
8__inference_batch_normalization_146_layer_call_fn_320571?
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
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_320476
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_320494
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_320540
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_320558?
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
2__inference_max_pooling2d_110_layer_call_fn_318651?
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
M__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_318645?
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
+__inference_flatten_36_layer_call_fn_320595?
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
F__inference_flatten_36_layer_call_and_return_conditional_losses_320590?
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
*__inference_dense_108_layer_call_fn_320614?
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
E__inference_dense_108_layer_call_and_return_conditional_losses_320605?
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
/__inference_activation_183_layer_call_fn_320624?
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
J__inference_activation_183_layer_call_and_return_conditional_losses_320619?
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
8__inference_batch_normalization_147_layer_call_fn_320693
8__inference_batch_normalization_147_layer_call_fn_320706?
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
S__inference_batch_normalization_147_layer_call_and_return_conditional_losses_320660
S__inference_batch_normalization_147_layer_call_and_return_conditional_losses_320680?
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
+__inference_dropout_36_layer_call_fn_320733
+__inference_dropout_36_layer_call_fn_320728?
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
F__inference_dropout_36_layer_call_and_return_conditional_losses_320718
F__inference_dropout_36_layer_call_and_return_conditional_losses_320723?
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
*__inference_dense_109_layer_call_fn_320752?
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
E__inference_dense_109_layer_call_and_return_conditional_losses_320743?
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
/__inference_activation_184_layer_call_fn_320762?
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
J__inference_activation_184_layer_call_and_return_conditional_losses_320757?
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
*__inference_dense_110_layer_call_fn_320781?
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
E__inference_dense_110_layer_call_and_return_conditional_losses_320772?
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
$__inference_signature_wrapper_319744input_37"?
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
!__inference__wrapped_model_318303?$+,-.9:FGHITUabcdtu????????9?6
/?,
*?'
input_37?????????  
? "5?2
0
	dense_110#? 
	dense_110??????????
J__inference_activation_180_layer_call_and_return_conditional_losses_320137h7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????  
? ?
/__inference_activation_180_layer_call_fn_320142[7?4
-?*
(?%
inputs?????????  
? " ??????????  ?
J__inference_activation_181_layer_call_and_return_conditional_losses_320294h7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
/__inference_activation_181_layer_call_fn_320299[7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
J__inference_activation_182_layer_call_and_return_conditional_losses_320451h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
/__inference_activation_182_layer_call_fn_320456[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
J__inference_activation_183_layer_call_and_return_conditional_losses_320619X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
/__inference_activation_183_layer_call_fn_320624K/?,
%?"
 ?
inputs?????????
? "???????????
J__inference_activation_184_layer_call_and_return_conditional_losses_320757X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
/__inference_activation_184_layer_call_fn_320762K/?,
%?"
 ?
inputs?????????
? "???????????
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_320162?+,-.M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_320180?+,-.M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_320226r+,-.;?8
1?.
(?%
inputs?????????  
p
? "-?*
#? 
0?????????  
? ?
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_320244r+,-.;?8
1?.
(?%
inputs?????????  
p 
? "-?*
#? 
0?????????  
? ?
8__inference_batch_normalization_144_layer_call_fn_320193?+,-.M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
8__inference_batch_normalization_144_layer_call_fn_320206?+,-.M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
8__inference_batch_normalization_144_layer_call_fn_320257e+,-.;?8
1?.
(?%
inputs?????????  
p
? " ??????????  ?
8__inference_batch_normalization_144_layer_call_fn_320270e+,-.;?8
1?.
(?%
inputs?????????  
p 
? " ??????????  ?
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_320319?FGHIM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_320337?FGHIM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_320383rFGHI;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_320401rFGHI;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
8__inference_batch_normalization_145_layer_call_fn_320350?FGHIM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
8__inference_batch_normalization_145_layer_call_fn_320363?FGHIM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
8__inference_batch_normalization_145_layer_call_fn_320414eFGHI;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
8__inference_batch_normalization_145_layer_call_fn_320427eFGHI;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_320476rabcd;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_320494rabcd;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_320540?abcdM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_320558?abcdM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
8__inference_batch_normalization_146_layer_call_fn_320507eabcd;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
8__inference_batch_normalization_146_layer_call_fn_320520eabcd;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
8__inference_batch_normalization_146_layer_call_fn_320571?abcdM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
8__inference_batch_normalization_146_layer_call_fn_320584?abcdM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
S__inference_batch_normalization_147_layer_call_and_return_conditional_losses_320660f????3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
S__inference_batch_normalization_147_layer_call_and_return_conditional_losses_320680f????3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
8__inference_batch_normalization_147_layer_call_fn_320693Y????3?0
)?&
 ?
inputs?????????
p
? "???????????
8__inference_batch_normalization_147_layer_call_fn_320706Y????3?0
)?&
 ?
inputs?????????
p 
? "???????????
F__inference_conv2d_108_layer_call_and_return_conditional_losses_320123l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????  
? ?
+__inference_conv2d_108_layer_call_fn_320132_7?4
-?*
(?%
inputs?????????  
? " ??????????  ?
F__inference_conv2d_109_layer_call_and_return_conditional_losses_320280l9:7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0????????? 
? ?
+__inference_conv2d_109_layer_call_fn_320289_9:7?4
-?*
(?%
inputs?????????
? " ?????????? ?
F__inference_conv2d_110_layer_call_and_return_conditional_losses_320437lTU7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
+__inference_conv2d_110_layer_call_fn_320446_TU7?4
-?*
(?%
inputs????????? 
? " ??????????@?
E__inference_dense_108_layer_call_and_return_conditional_losses_320605]tu0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ~
*__inference_dense_108_layer_call_fn_320614Ptu0?-
&?#
!?
inputs??????????
? "???????????
E__inference_dense_109_layer_call_and_return_conditional_losses_320743^??/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? 
*__inference_dense_109_layer_call_fn_320752Q??/?,
%?"
 ?
inputs?????????
? "???????????
E__inference_dense_110_layer_call_and_return_conditional_losses_320772^??/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? 
*__inference_dense_110_layer_call_fn_320781Q??/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_dropout_36_layer_call_and_return_conditional_losses_320718\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
F__inference_dropout_36_layer_call_and_return_conditional_losses_320723\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ~
+__inference_dropout_36_layer_call_fn_320728O3?0
)?&
 ?
inputs?????????
p
? "??????????~
+__inference_dropout_36_layer_call_fn_320733O3?0
)?&
 ?
inputs?????????
p 
? "???????????
F__inference_flatten_36_layer_call_and_return_conditional_losses_320590a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????
? ?
+__inference_flatten_36_layer_call_fn_320595T7?4
-?*
(?%
inputs?????????@
? "????????????
M__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_318413?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_108_layer_call_fn_318419?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_318529?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_109_layer_call_fn_318535?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_318645?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_110_layer_call_fn_318651?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
D__inference_model_36_layer_call_and_return_conditional_losses_319318?$+,-.9:FGHITUabcdtu????????A?>
7?4
*?'
input_37?????????  
p

 
? "%?"
?
0?????????
? ?
D__inference_model_36_layer_call_and_return_conditional_losses_319398?$+,-.9:FGHITUabcdtu????????A?>
7?4
*?'
input_37?????????  
p 

 
? "%?"
?
0?????????
? ?
D__inference_model_36_layer_call_and_return_conditional_losses_319882?$+,-.9:FGHITUabcdtu??????????<
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
D__inference_model_36_layer_call_and_return_conditional_losses_319991?$+,-.9:FGHITUabcdtu??????????<
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
)__inference_model_36_layer_call_fn_319540?$+,-.9:FGHITUabcdtu????????A?>
7?4
*?'
input_37?????????  
p

 
? "???????????
)__inference_model_36_layer_call_fn_319681?$+,-.9:FGHITUabcdtu????????A?>
7?4
*?'
input_37?????????  
p 

 
? "???????????
)__inference_model_36_layer_call_fn_320052?$+,-.9:FGHITUabcdtu??????????<
5?2
(?%
inputs?????????  
p

 
? "???????????
)__inference_model_36_layer_call_fn_320113?$+,-.9:FGHITUabcdtu??????????<
5?2
(?%
inputs?????????  
p 

 
? "???????????
$__inference_signature_wrapper_319744?$+,-.9:FGHITUabcdtu????????E?B
? 
;?8
6
input_37*?'
input_37?????????  "5?2
0
	dense_110#? 
	dense_110?????????