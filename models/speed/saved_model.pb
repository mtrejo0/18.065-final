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
conv2d_120/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_120/kernel

%conv2d_120/kernel/Read/ReadVariableOpReadVariableOpconv2d_120/kernel*&
_output_shapes
:*
dtype0
v
conv2d_120/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_120/bias
o
#conv2d_120/bias/Read/ReadVariableOpReadVariableOpconv2d_120/bias*
_output_shapes
:*
dtype0
?
batch_normalization_160/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_160/gamma
?
1batch_normalization_160/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_160/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_160/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_160/beta
?
0batch_normalization_160/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_160/beta*
_output_shapes
:*
dtype0
?
#batch_normalization_160/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_160/moving_mean
?
7batch_normalization_160/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_160/moving_mean*
_output_shapes
:*
dtype0
?
'batch_normalization_160/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_160/moving_variance
?
;batch_normalization_160/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_160/moving_variance*
_output_shapes
:*
dtype0
?
conv2d_121/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_121/kernel

%conv2d_121/kernel/Read/ReadVariableOpReadVariableOpconv2d_121/kernel*&
_output_shapes
: *
dtype0
v
conv2d_121/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_121/bias
o
#conv2d_121/bias/Read/ReadVariableOpReadVariableOpconv2d_121/bias*
_output_shapes
: *
dtype0
?
batch_normalization_161/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namebatch_normalization_161/gamma
?
1batch_normalization_161/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_161/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_161/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_161/beta
?
0batch_normalization_161/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_161/beta*
_output_shapes
: *
dtype0
?
#batch_normalization_161/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#batch_normalization_161/moving_mean
?
7batch_normalization_161/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_161/moving_mean*
_output_shapes
: *
dtype0
?
'batch_normalization_161/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'batch_normalization_161/moving_variance
?
;batch_normalization_161/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_161/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_122/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_122/kernel

%conv2d_122/kernel/Read/ReadVariableOpReadVariableOpconv2d_122/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_122/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_122/bias
o
#conv2d_122/bias/Read/ReadVariableOpReadVariableOpconv2d_122/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_162/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namebatch_normalization_162/gamma
?
1batch_normalization_162/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_162/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_162/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_162/beta
?
0batch_normalization_162/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_162/beta*
_output_shapes
:@*
dtype0
?
#batch_normalization_162/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization_162/moving_mean
?
7batch_normalization_162/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_162/moving_mean*
_output_shapes
:@*
dtype0
?
'batch_normalization_162/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'batch_normalization_162/moving_variance
?
;batch_normalization_162/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_162/moving_variance*
_output_shapes
:@*
dtype0
}
dense_120/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*!
shared_namedense_120/kernel
v
$dense_120/kernel/Read/ReadVariableOpReadVariableOpdense_120/kernel*
_output_shapes
:	?*
dtype0
t
dense_120/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_120/bias
m
"dense_120/bias/Read/ReadVariableOpReadVariableOpdense_120/bias*
_output_shapes
:*
dtype0
?
batch_normalization_163/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_163/gamma
?
1batch_normalization_163/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_163/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_163/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_163/beta
?
0batch_normalization_163/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_163/beta*
_output_shapes
:*
dtype0
?
#batch_normalization_163/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_163/moving_mean
?
7batch_normalization_163/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_163/moving_mean*
_output_shapes
:*
dtype0
?
'batch_normalization_163/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_163/moving_variance
?
;batch_normalization_163/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_163/moving_variance*
_output_shapes
:*
dtype0
|
dense_121/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_121/kernel
u
$dense_121/kernel/Read/ReadVariableOpReadVariableOpdense_121/kernel*
_output_shapes

:*
dtype0
t
dense_121/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_121/bias
m
"dense_121/bias/Read/ReadVariableOpReadVariableOpdense_121/bias*
_output_shapes
:*
dtype0
|
dense_122/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_122/kernel
u
$dense_122/kernel/Read/ReadVariableOpReadVariableOpdense_122/kernel*
_output_shapes

:*
dtype0
t
dense_122/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_122/bias
m
"dense_122/bias/Read/ReadVariableOpReadVariableOpdense_122/bias*
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
VARIABLE_VALUEconv2d_120/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_120/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_160/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_160/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_160/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_160/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_121/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_121/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_161/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_161/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_161/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_161/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_122/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_122/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_162/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_162/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_162/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_162/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_120/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_120/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_163/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_163/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_163/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_163/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_121/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_121/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_122/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_122/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
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
serving_default_input_41Placeholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_41conv2d_120/kernelconv2d_120/biasbatch_normalization_160/gammabatch_normalization_160/beta#batch_normalization_160/moving_mean'batch_normalization_160/moving_varianceconv2d_121/kernelconv2d_121/biasbatch_normalization_161/gammabatch_normalization_161/beta#batch_normalization_161/moving_mean'batch_normalization_161/moving_varianceconv2d_122/kernelconv2d_122/biasbatch_normalization_162/gammabatch_normalization_162/beta#batch_normalization_162/moving_mean'batch_normalization_162/moving_variancedense_120/kerneldense_120/bias'batch_normalization_163/moving_variancebatch_normalization_163/gamma#batch_normalization_163/moving_meanbatch_normalization_163/betadense_121/kerneldense_121/biasdense_122/kerneldense_122/bias*(
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
$__inference_signature_wrapper_345700
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_120/kernel/Read/ReadVariableOp#conv2d_120/bias/Read/ReadVariableOp1batch_normalization_160/gamma/Read/ReadVariableOp0batch_normalization_160/beta/Read/ReadVariableOp7batch_normalization_160/moving_mean/Read/ReadVariableOp;batch_normalization_160/moving_variance/Read/ReadVariableOp%conv2d_121/kernel/Read/ReadVariableOp#conv2d_121/bias/Read/ReadVariableOp1batch_normalization_161/gamma/Read/ReadVariableOp0batch_normalization_161/beta/Read/ReadVariableOp7batch_normalization_161/moving_mean/Read/ReadVariableOp;batch_normalization_161/moving_variance/Read/ReadVariableOp%conv2d_122/kernel/Read/ReadVariableOp#conv2d_122/bias/Read/ReadVariableOp1batch_normalization_162/gamma/Read/ReadVariableOp0batch_normalization_162/beta/Read/ReadVariableOp7batch_normalization_162/moving_mean/Read/ReadVariableOp;batch_normalization_162/moving_variance/Read/ReadVariableOp$dense_120/kernel/Read/ReadVariableOp"dense_120/bias/Read/ReadVariableOp1batch_normalization_163/gamma/Read/ReadVariableOp0batch_normalization_163/beta/Read/ReadVariableOp7batch_normalization_163/moving_mean/Read/ReadVariableOp;batch_normalization_163/moving_variance/Read/ReadVariableOp$dense_121/kernel/Read/ReadVariableOp"dense_121/bias/Read/ReadVariableOp$dense_122/kernel/Read/ReadVariableOp"dense_122/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*+
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
__inference__traced_save_346850
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_120/kernelconv2d_120/biasbatch_normalization_160/gammabatch_normalization_160/beta#batch_normalization_160/moving_mean'batch_normalization_160/moving_varianceconv2d_121/kernelconv2d_121/biasbatch_normalization_161/gammabatch_normalization_161/beta#batch_normalization_161/moving_mean'batch_normalization_161/moving_varianceconv2d_122/kernelconv2d_122/biasbatch_normalization_162/gammabatch_normalization_162/beta#batch_normalization_162/moving_mean'batch_normalization_162/moving_variancedense_120/kerneldense_120/biasbatch_normalization_163/gammabatch_normalization_163/beta#batch_normalization_163/moving_mean'batch_normalization_163/moving_variancedense_121/kerneldense_121/biasdense_122/kerneldense_122/biastotalcount**
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
"__inference__traced_restore_346950??
?
d
F__inference_dropout_40_layer_call_and_return_conditional_losses_345195

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
?
?
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_346450

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
E__inference_dense_121_layer_call_and_return_conditional_losses_346699

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
d
+__inference_dropout_40_layer_call_fn_346684

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
F__inference_dropout_40_layer_call_and_return_conditional_losses_3451902
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
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_344352

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
?
E__inference_dense_122_layer_call_and_return_conditional_losses_345257

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
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_346496

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
?
?
8__inference_batch_normalization_161_layer_call_fn_346370

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
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_3444372
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
8__inference_batch_normalization_162_layer_call_fn_346540

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
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_3450532
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
E__inference_dense_120_layer_call_and_return_conditional_losses_345114

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
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_346293

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
?
b
F__inference_flatten_40_layer_call_and_return_conditional_losses_345096

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
?
?
)__inference_model_40_layer_call_fn_345496
input_41
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
StatefulPartitionedCallStatefulPartitionedCallinput_41unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
D__inference_model_40_layer_call_and_return_conditional_losses_3454372
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
input_41
??
?
"__inference__traced_restore_346950
file_prefix&
"assignvariableop_conv2d_120_kernel&
"assignvariableop_1_conv2d_120_bias4
0assignvariableop_2_batch_normalization_160_gamma3
/assignvariableop_3_batch_normalization_160_beta:
6assignvariableop_4_batch_normalization_160_moving_mean>
:assignvariableop_5_batch_normalization_160_moving_variance(
$assignvariableop_6_conv2d_121_kernel&
"assignvariableop_7_conv2d_121_bias4
0assignvariableop_8_batch_normalization_161_gamma3
/assignvariableop_9_batch_normalization_161_beta;
7assignvariableop_10_batch_normalization_161_moving_mean?
;assignvariableop_11_batch_normalization_161_moving_variance)
%assignvariableop_12_conv2d_122_kernel'
#assignvariableop_13_conv2d_122_bias5
1assignvariableop_14_batch_normalization_162_gamma4
0assignvariableop_15_batch_normalization_162_beta;
7assignvariableop_16_batch_normalization_162_moving_mean?
;assignvariableop_17_batch_normalization_162_moving_variance(
$assignvariableop_18_dense_120_kernel&
"assignvariableop_19_dense_120_bias5
1assignvariableop_20_batch_normalization_163_gamma4
0assignvariableop_21_batch_normalization_163_beta;
7assignvariableop_22_batch_normalization_163_moving_mean?
;assignvariableop_23_batch_normalization_163_moving_variance(
$assignvariableop_24_dense_121_kernel&
"assignvariableop_25_dense_121_bias(
$assignvariableop_26_dense_122_kernel&
"assignvariableop_27_dense_122_bias
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_120_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_120_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_160_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_160_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_160_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_160_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_121_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_121_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_161_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_161_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_161_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_161_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_122_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_122_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_162_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_162_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_162_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_162_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp$assignvariableop_18_dense_120_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_dense_120_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_163_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_163_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_163_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_163_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp$assignvariableop_24_dense_121_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp"assignvariableop_25_dense_121_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp$assignvariableop_26_dense_122_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp"assignvariableop_27_dense_122_biasIdentity_27:output:0"/device:CPU:0*
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
?
?
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_346136

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
?
E__inference_dense_120_layer_call_and_return_conditional_losses_346561

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
?`
?

D__inference_model_40_layer_call_and_return_conditional_losses_345274
input_41
conv2d_120_344772
conv2d_120_344774"
batch_normalization_160_344854"
batch_normalization_160_344856"
batch_normalization_160_344858"
batch_normalization_160_344860
conv2d_121_344885
conv2d_121_344887"
batch_normalization_161_344967"
batch_normalization_161_344969"
batch_normalization_161_344971"
batch_normalization_161_344973
conv2d_122_344998
conv2d_122_345000"
batch_normalization_162_345080"
batch_normalization_162_345082"
batch_normalization_162_345084"
batch_normalization_162_345086
dense_120_345125
dense_120_345127"
batch_normalization_163_345169"
batch_normalization_163_345171"
batch_normalization_163_345173"
batch_normalization_163_345175
dense_121_345229
dense_121_345231
dense_122_345268
dense_122_345270
identity??/batch_normalization_160/StatefulPartitionedCall?/batch_normalization_161/StatefulPartitionedCall?/batch_normalization_162/StatefulPartitionedCall?/batch_normalization_163/StatefulPartitionedCall?"conv2d_120/StatefulPartitionedCall?"conv2d_121/StatefulPartitionedCall?"conv2d_122/StatefulPartitionedCall?!dense_120/StatefulPartitionedCall?!dense_121/StatefulPartitionedCall?!dense_122/StatefulPartitionedCall?"dropout_40/StatefulPartitionedCall?
"conv2d_120/StatefulPartitionedCallStatefulPartitionedCallinput_41conv2d_120_344772conv2d_120_344774*
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
F__inference_conv2d_120_layer_call_and_return_conditional_losses_3447612$
"conv2d_120/StatefulPartitionedCall?
activation_200/PartitionedCallPartitionedCall+conv2d_120/StatefulPartitionedCall:output:0*
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
J__inference_activation_200_layer_call_and_return_conditional_losses_3447822 
activation_200/PartitionedCall?
/batch_normalization_160/StatefulPartitionedCallStatefulPartitionedCall'activation_200/PartitionedCall:output:0batch_normalization_160_344854batch_normalization_160_344856batch_normalization_160_344858batch_normalization_160_344860*
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
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_34480921
/batch_normalization_160/StatefulPartitionedCall?
!max_pooling2d_120/PartitionedCallPartitionedCall8batch_normalization_160/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_3443692#
!max_pooling2d_120/PartitionedCall?
"conv2d_121/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_120/PartitionedCall:output:0conv2d_121_344885conv2d_121_344887*
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
F__inference_conv2d_121_layer_call_and_return_conditional_losses_3448742$
"conv2d_121/StatefulPartitionedCall?
activation_201/PartitionedCallPartitionedCall+conv2d_121/StatefulPartitionedCall:output:0*
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
J__inference_activation_201_layer_call_and_return_conditional_losses_3448952 
activation_201/PartitionedCall?
/batch_normalization_161/StatefulPartitionedCallStatefulPartitionedCall'activation_201/PartitionedCall:output:0batch_normalization_161_344967batch_normalization_161_344969batch_normalization_161_344971batch_normalization_161_344973*
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
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_34492221
/batch_normalization_161/StatefulPartitionedCall?
!max_pooling2d_121/PartitionedCallPartitionedCall8batch_normalization_161/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_3444852#
!max_pooling2d_121/PartitionedCall?
"conv2d_122/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_121/PartitionedCall:output:0conv2d_122_344998conv2d_122_345000*
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
F__inference_conv2d_122_layer_call_and_return_conditional_losses_3449872$
"conv2d_122/StatefulPartitionedCall?
activation_202/PartitionedCallPartitionedCall+conv2d_122/StatefulPartitionedCall:output:0*
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
J__inference_activation_202_layer_call_and_return_conditional_losses_3450082 
activation_202/PartitionedCall?
/batch_normalization_162/StatefulPartitionedCallStatefulPartitionedCall'activation_202/PartitionedCall:output:0batch_normalization_162_345080batch_normalization_162_345082batch_normalization_162_345084batch_normalization_162_345086*
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
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_34503521
/batch_normalization_162/StatefulPartitionedCall?
!max_pooling2d_122/PartitionedCallPartitionedCall8batch_normalization_162/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_3446012#
!max_pooling2d_122/PartitionedCall?
flatten_40/PartitionedCallPartitionedCall*max_pooling2d_122/PartitionedCall:output:0*
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
F__inference_flatten_40_layer_call_and_return_conditional_losses_3450962
flatten_40/PartitionedCall?
!dense_120/StatefulPartitionedCallStatefulPartitionedCall#flatten_40/PartitionedCall:output:0dense_120_345125dense_120_345127*
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
E__inference_dense_120_layer_call_and_return_conditional_losses_3451142#
!dense_120/StatefulPartitionedCall?
activation_203/PartitionedCallPartitionedCall*dense_120/StatefulPartitionedCall:output:0*
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
J__inference_activation_203_layer_call_and_return_conditional_losses_3451352 
activation_203/PartitionedCall?
/batch_normalization_163/StatefulPartitionedCallStatefulPartitionedCall'activation_203/PartitionedCall:output:0batch_normalization_163_345169batch_normalization_163_345171batch_normalization_163_345173batch_normalization_163_345175*
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
S__inference_batch_normalization_163_layer_call_and_return_conditional_losses_34470321
/batch_normalization_163/StatefulPartitionedCall?
"dropout_40/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_163/StatefulPartitionedCall:output:0*
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
F__inference_dropout_40_layer_call_and_return_conditional_losses_3451902$
"dropout_40/StatefulPartitionedCall?
!dense_121/StatefulPartitionedCallStatefulPartitionedCall+dropout_40/StatefulPartitionedCall:output:0dense_121_345229dense_121_345231*
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
E__inference_dense_121_layer_call_and_return_conditional_losses_3452182#
!dense_121/StatefulPartitionedCall?
activation_204/PartitionedCallPartitionedCall*dense_121/StatefulPartitionedCall:output:0*
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
J__inference_activation_204_layer_call_and_return_conditional_losses_3452392 
activation_204/PartitionedCall?
!dense_122/StatefulPartitionedCallStatefulPartitionedCall'activation_204/PartitionedCall:output:0dense_122_345268dense_122_345270*
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
E__inference_dense_122_layer_call_and_return_conditional_losses_3452572#
!dense_122/StatefulPartitionedCall?
IdentityIdentity*dense_122/StatefulPartitionedCall:output:00^batch_normalization_160/StatefulPartitionedCall0^batch_normalization_161/StatefulPartitionedCall0^batch_normalization_162/StatefulPartitionedCall0^batch_normalization_163/StatefulPartitionedCall#^conv2d_120/StatefulPartitionedCall#^conv2d_121/StatefulPartitionedCall#^conv2d_122/StatefulPartitionedCall"^dense_120/StatefulPartitionedCall"^dense_121/StatefulPartitionedCall"^dense_122/StatefulPartitionedCall#^dropout_40/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2b
/batch_normalization_160/StatefulPartitionedCall/batch_normalization_160/StatefulPartitionedCall2b
/batch_normalization_161/StatefulPartitionedCall/batch_normalization_161/StatefulPartitionedCall2b
/batch_normalization_162/StatefulPartitionedCall/batch_normalization_162/StatefulPartitionedCall2b
/batch_normalization_163/StatefulPartitionedCall/batch_normalization_163/StatefulPartitionedCall2H
"conv2d_120/StatefulPartitionedCall"conv2d_120/StatefulPartitionedCall2H
"conv2d_121/StatefulPartitionedCall"conv2d_121/StatefulPartitionedCall2H
"conv2d_122/StatefulPartitionedCall"conv2d_122/StatefulPartitionedCall2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2F
!dense_122/StatefulPartitionedCall!dense_122/StatefulPartitionedCall2H
"dropout_40/StatefulPartitionedCall"dropout_40/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_41
?

*__inference_dense_120_layer_call_fn_346570

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
E__inference_dense_120_layer_call_and_return_conditional_losses_3451142
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
?
K
/__inference_activation_202_layer_call_fn_346412

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
J__inference_activation_202_layer_call_and_return_conditional_losses_3450082
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
?
f
J__inference_activation_202_layer_call_and_return_conditional_losses_345008

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
ޛ
?
D__inference_model_40_layer_call_and_return_conditional_losses_345947

inputs-
)conv2d_120_conv2d_readvariableop_resource.
*conv2d_120_biasadd_readvariableop_resource3
/batch_normalization_160_readvariableop_resource5
1batch_normalization_160_readvariableop_1_resourceD
@batch_normalization_160_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_160_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_121_conv2d_readvariableop_resource.
*conv2d_121_biasadd_readvariableop_resource3
/batch_normalization_161_readvariableop_resource5
1batch_normalization_161_readvariableop_1_resourceD
@batch_normalization_161_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_161_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_122_conv2d_readvariableop_resource.
*conv2d_122_biasadd_readvariableop_resource3
/batch_normalization_162_readvariableop_resource5
1batch_normalization_162_readvariableop_1_resourceD
@batch_normalization_162_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_162_fusedbatchnormv3_readvariableop_1_resource,
(dense_120_matmul_readvariableop_resource-
)dense_120_biasadd_readvariableop_resource=
9batch_normalization_163_batchnorm_readvariableop_resourceA
=batch_normalization_163_batchnorm_mul_readvariableop_resource?
;batch_normalization_163_batchnorm_readvariableop_1_resource?
;batch_normalization_163_batchnorm_readvariableop_2_resource,
(dense_121_matmul_readvariableop_resource-
)dense_121_biasadd_readvariableop_resource,
(dense_122_matmul_readvariableop_resource-
)dense_122_biasadd_readvariableop_resource
identity??7batch_normalization_160/FusedBatchNormV3/ReadVariableOp?9batch_normalization_160/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_160/ReadVariableOp?(batch_normalization_160/ReadVariableOp_1?7batch_normalization_161/FusedBatchNormV3/ReadVariableOp?9batch_normalization_161/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_161/ReadVariableOp?(batch_normalization_161/ReadVariableOp_1?7batch_normalization_162/FusedBatchNormV3/ReadVariableOp?9batch_normalization_162/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_162/ReadVariableOp?(batch_normalization_162/ReadVariableOp_1?0batch_normalization_163/batchnorm/ReadVariableOp?2batch_normalization_163/batchnorm/ReadVariableOp_1?2batch_normalization_163/batchnorm/ReadVariableOp_2?4batch_normalization_163/batchnorm/mul/ReadVariableOp?!conv2d_120/BiasAdd/ReadVariableOp? conv2d_120/Conv2D/ReadVariableOp?!conv2d_121/BiasAdd/ReadVariableOp? conv2d_121/Conv2D/ReadVariableOp?!conv2d_122/BiasAdd/ReadVariableOp? conv2d_122/Conv2D/ReadVariableOp? dense_120/BiasAdd/ReadVariableOp?dense_120/MatMul/ReadVariableOp? dense_121/BiasAdd/ReadVariableOp?dense_121/MatMul/ReadVariableOp? dense_122/BiasAdd/ReadVariableOp?dense_122/MatMul/ReadVariableOp?
 conv2d_120/Conv2D/ReadVariableOpReadVariableOp)conv2d_120_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_120/Conv2D/ReadVariableOp?
conv2d_120/Conv2DConv2Dinputs(conv2d_120/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2
conv2d_120/Conv2D?
!conv2d_120/BiasAdd/ReadVariableOpReadVariableOp*conv2d_120_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_120/BiasAdd/ReadVariableOp?
conv2d_120/BiasAddBiasAddconv2d_120/Conv2D:output:0)conv2d_120/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  2
conv2d_120/BiasAdd?
activation_200/ReluReluconv2d_120/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  2
activation_200/Relu?
&batch_normalization_160/ReadVariableOpReadVariableOp/batch_normalization_160_readvariableop_resource*
_output_shapes
:*
dtype02(
&batch_normalization_160/ReadVariableOp?
(batch_normalization_160/ReadVariableOp_1ReadVariableOp1batch_normalization_160_readvariableop_1_resource*
_output_shapes
:*
dtype02*
(batch_normalization_160/ReadVariableOp_1?
7batch_normalization_160/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_160_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype029
7batch_normalization_160/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_160/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_160_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02;
9batch_normalization_160/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_160/FusedBatchNormV3FusedBatchNormV3!activation_200/Relu:activations:0.batch_normalization_160/ReadVariableOp:value:00batch_normalization_160/ReadVariableOp_1:value:0?batch_normalization_160/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_160/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
is_training( 2*
(batch_normalization_160/FusedBatchNormV3?
max_pooling2d_120/MaxPoolMaxPool,batch_normalization_160/FusedBatchNormV3:y:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_120/MaxPool?
 conv2d_121/Conv2D/ReadVariableOpReadVariableOp)conv2d_121_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_121/Conv2D/ReadVariableOp?
conv2d_121/Conv2DConv2D"max_pooling2d_120/MaxPool:output:0(conv2d_121/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_121/Conv2D?
!conv2d_121/BiasAdd/ReadVariableOpReadVariableOp*conv2d_121_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_121/BiasAdd/ReadVariableOp?
conv2d_121/BiasAddBiasAddconv2d_121/Conv2D:output:0)conv2d_121/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_121/BiasAdd?
activation_201/ReluReluconv2d_121/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
activation_201/Relu?
&batch_normalization_161/ReadVariableOpReadVariableOp/batch_normalization_161_readvariableop_resource*
_output_shapes
: *
dtype02(
&batch_normalization_161/ReadVariableOp?
(batch_normalization_161/ReadVariableOp_1ReadVariableOp1batch_normalization_161_readvariableop_1_resource*
_output_shapes
: *
dtype02*
(batch_normalization_161/ReadVariableOp_1?
7batch_normalization_161/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_161_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype029
7batch_normalization_161/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_161/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_161_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02;
9batch_normalization_161/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_161/FusedBatchNormV3FusedBatchNormV3!activation_201/Relu:activations:0.batch_normalization_161/ReadVariableOp:value:00batch_normalization_161/ReadVariableOp_1:value:0?batch_normalization_161/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_161/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2*
(batch_normalization_161/FusedBatchNormV3?
max_pooling2d_121/MaxPoolMaxPool,batch_normalization_161/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_121/MaxPool?
 conv2d_122/Conv2D/ReadVariableOpReadVariableOp)conv2d_122_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_122/Conv2D/ReadVariableOp?
conv2d_122/Conv2DConv2D"max_pooling2d_121/MaxPool:output:0(conv2d_122/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_122/Conv2D?
!conv2d_122/BiasAdd/ReadVariableOpReadVariableOp*conv2d_122_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_122/BiasAdd/ReadVariableOp?
conv2d_122/BiasAddBiasAddconv2d_122/Conv2D:output:0)conv2d_122/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_122/BiasAdd?
activation_202/ReluReluconv2d_122/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_202/Relu?
&batch_normalization_162/ReadVariableOpReadVariableOp/batch_normalization_162_readvariableop_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_162/ReadVariableOp?
(batch_normalization_162/ReadVariableOp_1ReadVariableOp1batch_normalization_162_readvariableop_1_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_162/ReadVariableOp_1?
7batch_normalization_162/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_162_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype029
7batch_normalization_162/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_162/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_162_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9batch_normalization_162/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_162/FusedBatchNormV3FusedBatchNormV3!activation_202/Relu:activations:0.batch_normalization_162/ReadVariableOp:value:00batch_normalization_162/ReadVariableOp_1:value:0?batch_normalization_162/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_162/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2*
(batch_normalization_162/FusedBatchNormV3?
max_pooling2d_122/MaxPoolMaxPool,batch_normalization_162/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_122/MaxPoolu
flatten_40/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_40/Const?
flatten_40/ReshapeReshape"max_pooling2d_122/MaxPool:output:0flatten_40/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_40/Reshape?
dense_120/MatMul/ReadVariableOpReadVariableOp(dense_120_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
dense_120/MatMul/ReadVariableOp?
dense_120/MatMulMatMulflatten_40/Reshape:output:0'dense_120/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_120/MatMul?
 dense_120/BiasAdd/ReadVariableOpReadVariableOp)dense_120_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_120/BiasAdd/ReadVariableOp?
dense_120/BiasAddBiasAdddense_120/MatMul:product:0(dense_120/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_120/BiasAdd?
activation_203/ReluReludense_120/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_203/Relu?
0batch_normalization_163/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_163_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype022
0batch_normalization_163/batchnorm/ReadVariableOp?
'batch_normalization_163/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2)
'batch_normalization_163/batchnorm/add/y?
%batch_normalization_163/batchnorm/addAddV28batch_normalization_163/batchnorm/ReadVariableOp:value:00batch_normalization_163/batchnorm/add/y:output:0*
T0*
_output_shapes
:2'
%batch_normalization_163/batchnorm/add?
'batch_normalization_163/batchnorm/RsqrtRsqrt)batch_normalization_163/batchnorm/add:z:0*
T0*
_output_shapes
:2)
'batch_normalization_163/batchnorm/Rsqrt?
4batch_normalization_163/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_163_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization_163/batchnorm/mul/ReadVariableOp?
%batch_normalization_163/batchnorm/mulMul+batch_normalization_163/batchnorm/Rsqrt:y:0<batch_normalization_163/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2'
%batch_normalization_163/batchnorm/mul?
'batch_normalization_163/batchnorm/mul_1Mul!activation_203/Relu:activations:0)batch_normalization_163/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2)
'batch_normalization_163/batchnorm/mul_1?
2batch_normalization_163/batchnorm/ReadVariableOp_1ReadVariableOp;batch_normalization_163_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype024
2batch_normalization_163/batchnorm/ReadVariableOp_1?
'batch_normalization_163/batchnorm/mul_2Mul:batch_normalization_163/batchnorm/ReadVariableOp_1:value:0)batch_normalization_163/batchnorm/mul:z:0*
T0*
_output_shapes
:2)
'batch_normalization_163/batchnorm/mul_2?
2batch_normalization_163/batchnorm/ReadVariableOp_2ReadVariableOp;batch_normalization_163_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype024
2batch_normalization_163/batchnorm/ReadVariableOp_2?
%batch_normalization_163/batchnorm/subSub:batch_normalization_163/batchnorm/ReadVariableOp_2:value:0+batch_normalization_163/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2'
%batch_normalization_163/batchnorm/sub?
'batch_normalization_163/batchnorm/add_1AddV2+batch_normalization_163/batchnorm/mul_1:z:0)batch_normalization_163/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2)
'batch_normalization_163/batchnorm/add_1?
dropout_40/IdentityIdentity+batch_normalization_163/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????2
dropout_40/Identity?
dense_121/MatMul/ReadVariableOpReadVariableOp(dense_121_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_121/MatMul/ReadVariableOp?
dense_121/MatMulMatMuldropout_40/Identity:output:0'dense_121/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_121/MatMul?
 dense_121/BiasAdd/ReadVariableOpReadVariableOp)dense_121_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_121/BiasAdd/ReadVariableOp?
dense_121/BiasAddBiasAdddense_121/MatMul:product:0(dense_121/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_121/BiasAdd?
activation_204/ReluReludense_121/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_204/Relu?
dense_122/MatMul/ReadVariableOpReadVariableOp(dense_122_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_122/MatMul/ReadVariableOp?
dense_122/MatMulMatMul!activation_204/Relu:activations:0'dense_122/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_122/MatMul?
 dense_122/BiasAdd/ReadVariableOpReadVariableOp)dense_122_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_122/BiasAdd/ReadVariableOp?
dense_122/BiasAddBiasAdddense_122/MatMul:product:0(dense_122/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_122/BiasAdd?

IdentityIdentitydense_122/BiasAdd:output:08^batch_normalization_160/FusedBatchNormV3/ReadVariableOp:^batch_normalization_160/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_160/ReadVariableOp)^batch_normalization_160/ReadVariableOp_18^batch_normalization_161/FusedBatchNormV3/ReadVariableOp:^batch_normalization_161/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_161/ReadVariableOp)^batch_normalization_161/ReadVariableOp_18^batch_normalization_162/FusedBatchNormV3/ReadVariableOp:^batch_normalization_162/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_162/ReadVariableOp)^batch_normalization_162/ReadVariableOp_11^batch_normalization_163/batchnorm/ReadVariableOp3^batch_normalization_163/batchnorm/ReadVariableOp_13^batch_normalization_163/batchnorm/ReadVariableOp_25^batch_normalization_163/batchnorm/mul/ReadVariableOp"^conv2d_120/BiasAdd/ReadVariableOp!^conv2d_120/Conv2D/ReadVariableOp"^conv2d_121/BiasAdd/ReadVariableOp!^conv2d_121/Conv2D/ReadVariableOp"^conv2d_122/BiasAdd/ReadVariableOp!^conv2d_122/Conv2D/ReadVariableOp!^dense_120/BiasAdd/ReadVariableOp ^dense_120/MatMul/ReadVariableOp!^dense_121/BiasAdd/ReadVariableOp ^dense_121/MatMul/ReadVariableOp!^dense_122/BiasAdd/ReadVariableOp ^dense_122/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2r
7batch_normalization_160/FusedBatchNormV3/ReadVariableOp7batch_normalization_160/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_160/FusedBatchNormV3/ReadVariableOp_19batch_normalization_160/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_160/ReadVariableOp&batch_normalization_160/ReadVariableOp2T
(batch_normalization_160/ReadVariableOp_1(batch_normalization_160/ReadVariableOp_12r
7batch_normalization_161/FusedBatchNormV3/ReadVariableOp7batch_normalization_161/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_161/FusedBatchNormV3/ReadVariableOp_19batch_normalization_161/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_161/ReadVariableOp&batch_normalization_161/ReadVariableOp2T
(batch_normalization_161/ReadVariableOp_1(batch_normalization_161/ReadVariableOp_12r
7batch_normalization_162/FusedBatchNormV3/ReadVariableOp7batch_normalization_162/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_162/FusedBatchNormV3/ReadVariableOp_19batch_normalization_162/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_162/ReadVariableOp&batch_normalization_162/ReadVariableOp2T
(batch_normalization_162/ReadVariableOp_1(batch_normalization_162/ReadVariableOp_12d
0batch_normalization_163/batchnorm/ReadVariableOp0batch_normalization_163/batchnorm/ReadVariableOp2h
2batch_normalization_163/batchnorm/ReadVariableOp_12batch_normalization_163/batchnorm/ReadVariableOp_12h
2batch_normalization_163/batchnorm/ReadVariableOp_22batch_normalization_163/batchnorm/ReadVariableOp_22l
4batch_normalization_163/batchnorm/mul/ReadVariableOp4batch_normalization_163/batchnorm/mul/ReadVariableOp2F
!conv2d_120/BiasAdd/ReadVariableOp!conv2d_120/BiasAdd/ReadVariableOp2D
 conv2d_120/Conv2D/ReadVariableOp conv2d_120/Conv2D/ReadVariableOp2F
!conv2d_121/BiasAdd/ReadVariableOp!conv2d_121/BiasAdd/ReadVariableOp2D
 conv2d_121/Conv2D/ReadVariableOp conv2d_121/Conv2D/ReadVariableOp2F
!conv2d_122/BiasAdd/ReadVariableOp!conv2d_122/BiasAdd/ReadVariableOp2D
 conv2d_122/Conv2D/ReadVariableOp conv2d_122/Conv2D/ReadVariableOp2D
 dense_120/BiasAdd/ReadVariableOp dense_120/BiasAdd/ReadVariableOp2B
dense_120/MatMul/ReadVariableOpdense_120/MatMul/ReadVariableOp2D
 dense_121/BiasAdd/ReadVariableOp dense_121/BiasAdd/ReadVariableOp2B
dense_121/MatMul/ReadVariableOpdense_121/MatMul/ReadVariableOp2D
 dense_122/BiasAdd/ReadVariableOp dense_122/BiasAdd/ReadVariableOp2B
dense_122/MatMul/ReadVariableOpdense_122/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_163_layer_call_fn_346662

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
S__inference_batch_normalization_163_layer_call_and_return_conditional_losses_3447362
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
J__inference_activation_200_layer_call_and_return_conditional_losses_346093

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
?
f
J__inference_activation_203_layer_call_and_return_conditional_losses_345135

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
?
$__inference_signature_wrapper_345700
input_41
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
StatefulPartitionedCallStatefulPartitionedCallinput_41unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
!__inference__wrapped_model_3442592
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
input_41
?
?
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_344321

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
8__inference_batch_normalization_162_layer_call_fn_346463

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
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_3445532
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
?
?
S__inference_batch_normalization_163_layer_call_and_return_conditional_losses_344736

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
?
?
8__inference_batch_normalization_161_layer_call_fn_346383

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
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_3444682
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
F__inference_conv2d_120_layer_call_and_return_conditional_losses_344761

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
?
f
J__inference_activation_204_layer_call_and_return_conditional_losses_345239

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
?
?
+__inference_conv2d_121_layer_call_fn_346245

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
F__inference_conv2d_121_layer_call_and_return_conditional_losses_3448742
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
?
?
8__inference_batch_normalization_160_layer_call_fn_346226

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
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_3448272
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
J__inference_activation_201_layer_call_and_return_conditional_losses_344895

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
E__inference_dense_121_layer_call_and_return_conditional_losses_345218

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
?
?
8__inference_batch_normalization_160_layer_call_fn_346162

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
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_3443522
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
?
?
8__inference_batch_normalization_161_layer_call_fn_346319

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
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_3449402
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
G
+__inference_flatten_40_layer_call_fn_346551

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
F__inference_flatten_40_layer_call_and_return_conditional_losses_3450962
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
F__inference_conv2d_122_layer_call_and_return_conditional_losses_346393

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
8__inference_batch_normalization_160_layer_call_fn_346213

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
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_3448092
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
?^
?

D__inference_model_40_layer_call_and_return_conditional_losses_345578

inputs
conv2d_120_345501
conv2d_120_345503"
batch_normalization_160_345507"
batch_normalization_160_345509"
batch_normalization_160_345511"
batch_normalization_160_345513
conv2d_121_345517
conv2d_121_345519"
batch_normalization_161_345523"
batch_normalization_161_345525"
batch_normalization_161_345527"
batch_normalization_161_345529
conv2d_122_345533
conv2d_122_345535"
batch_normalization_162_345539"
batch_normalization_162_345541"
batch_normalization_162_345543"
batch_normalization_162_345545
dense_120_345550
dense_120_345552"
batch_normalization_163_345556"
batch_normalization_163_345558"
batch_normalization_163_345560"
batch_normalization_163_345562
dense_121_345566
dense_121_345568
dense_122_345572
dense_122_345574
identity??/batch_normalization_160/StatefulPartitionedCall?/batch_normalization_161/StatefulPartitionedCall?/batch_normalization_162/StatefulPartitionedCall?/batch_normalization_163/StatefulPartitionedCall?"conv2d_120/StatefulPartitionedCall?"conv2d_121/StatefulPartitionedCall?"conv2d_122/StatefulPartitionedCall?!dense_120/StatefulPartitionedCall?!dense_121/StatefulPartitionedCall?!dense_122/StatefulPartitionedCall?
"conv2d_120/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_120_345501conv2d_120_345503*
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
F__inference_conv2d_120_layer_call_and_return_conditional_losses_3447612$
"conv2d_120/StatefulPartitionedCall?
activation_200/PartitionedCallPartitionedCall+conv2d_120/StatefulPartitionedCall:output:0*
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
J__inference_activation_200_layer_call_and_return_conditional_losses_3447822 
activation_200/PartitionedCall?
/batch_normalization_160/StatefulPartitionedCallStatefulPartitionedCall'activation_200/PartitionedCall:output:0batch_normalization_160_345507batch_normalization_160_345509batch_normalization_160_345511batch_normalization_160_345513*
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
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_34482721
/batch_normalization_160/StatefulPartitionedCall?
!max_pooling2d_120/PartitionedCallPartitionedCall8batch_normalization_160/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_3443692#
!max_pooling2d_120/PartitionedCall?
"conv2d_121/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_120/PartitionedCall:output:0conv2d_121_345517conv2d_121_345519*
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
F__inference_conv2d_121_layer_call_and_return_conditional_losses_3448742$
"conv2d_121/StatefulPartitionedCall?
activation_201/PartitionedCallPartitionedCall+conv2d_121/StatefulPartitionedCall:output:0*
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
J__inference_activation_201_layer_call_and_return_conditional_losses_3448952 
activation_201/PartitionedCall?
/batch_normalization_161/StatefulPartitionedCallStatefulPartitionedCall'activation_201/PartitionedCall:output:0batch_normalization_161_345523batch_normalization_161_345525batch_normalization_161_345527batch_normalization_161_345529*
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
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_34494021
/batch_normalization_161/StatefulPartitionedCall?
!max_pooling2d_121/PartitionedCallPartitionedCall8batch_normalization_161/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_3444852#
!max_pooling2d_121/PartitionedCall?
"conv2d_122/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_121/PartitionedCall:output:0conv2d_122_345533conv2d_122_345535*
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
F__inference_conv2d_122_layer_call_and_return_conditional_losses_3449872$
"conv2d_122/StatefulPartitionedCall?
activation_202/PartitionedCallPartitionedCall+conv2d_122/StatefulPartitionedCall:output:0*
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
J__inference_activation_202_layer_call_and_return_conditional_losses_3450082 
activation_202/PartitionedCall?
/batch_normalization_162/StatefulPartitionedCallStatefulPartitionedCall'activation_202/PartitionedCall:output:0batch_normalization_162_345539batch_normalization_162_345541batch_normalization_162_345543batch_normalization_162_345545*
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
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_34505321
/batch_normalization_162/StatefulPartitionedCall?
!max_pooling2d_122/PartitionedCallPartitionedCall8batch_normalization_162/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_3446012#
!max_pooling2d_122/PartitionedCall?
flatten_40/PartitionedCallPartitionedCall*max_pooling2d_122/PartitionedCall:output:0*
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
F__inference_flatten_40_layer_call_and_return_conditional_losses_3450962
flatten_40/PartitionedCall?
!dense_120/StatefulPartitionedCallStatefulPartitionedCall#flatten_40/PartitionedCall:output:0dense_120_345550dense_120_345552*
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
E__inference_dense_120_layer_call_and_return_conditional_losses_3451142#
!dense_120/StatefulPartitionedCall?
activation_203/PartitionedCallPartitionedCall*dense_120/StatefulPartitionedCall:output:0*
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
J__inference_activation_203_layer_call_and_return_conditional_losses_3451352 
activation_203/PartitionedCall?
/batch_normalization_163/StatefulPartitionedCallStatefulPartitionedCall'activation_203/PartitionedCall:output:0batch_normalization_163_345556batch_normalization_163_345558batch_normalization_163_345560batch_normalization_163_345562*
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
S__inference_batch_normalization_163_layer_call_and_return_conditional_losses_34473621
/batch_normalization_163/StatefulPartitionedCall?
dropout_40/PartitionedCallPartitionedCall8batch_normalization_163/StatefulPartitionedCall:output:0*
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
F__inference_dropout_40_layer_call_and_return_conditional_losses_3451952
dropout_40/PartitionedCall?
!dense_121/StatefulPartitionedCallStatefulPartitionedCall#dropout_40/PartitionedCall:output:0dense_121_345566dense_121_345568*
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
E__inference_dense_121_layer_call_and_return_conditional_losses_3452182#
!dense_121/StatefulPartitionedCall?
activation_204/PartitionedCallPartitionedCall*dense_121/StatefulPartitionedCall:output:0*
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
J__inference_activation_204_layer_call_and_return_conditional_losses_3452392 
activation_204/PartitionedCall?
!dense_122/StatefulPartitionedCallStatefulPartitionedCall'activation_204/PartitionedCall:output:0dense_122_345572dense_122_345574*
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
E__inference_dense_122_layer_call_and_return_conditional_losses_3452572#
!dense_122/StatefulPartitionedCall?
IdentityIdentity*dense_122/StatefulPartitionedCall:output:00^batch_normalization_160/StatefulPartitionedCall0^batch_normalization_161/StatefulPartitionedCall0^batch_normalization_162/StatefulPartitionedCall0^batch_normalization_163/StatefulPartitionedCall#^conv2d_120/StatefulPartitionedCall#^conv2d_121/StatefulPartitionedCall#^conv2d_122/StatefulPartitionedCall"^dense_120/StatefulPartitionedCall"^dense_121/StatefulPartitionedCall"^dense_122/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2b
/batch_normalization_160/StatefulPartitionedCall/batch_normalization_160/StatefulPartitionedCall2b
/batch_normalization_161/StatefulPartitionedCall/batch_normalization_161/StatefulPartitionedCall2b
/batch_normalization_162/StatefulPartitionedCall/batch_normalization_162/StatefulPartitionedCall2b
/batch_normalization_163/StatefulPartitionedCall/batch_normalization_163/StatefulPartitionedCall2H
"conv2d_120/StatefulPartitionedCall"conv2d_120/StatefulPartitionedCall2H
"conv2d_121/StatefulPartitionedCall"conv2d_121/StatefulPartitionedCall2H
"conv2d_122/StatefulPartitionedCall"conv2d_122/StatefulPartitionedCall2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2F
!dense_122/StatefulPartitionedCall!dense_122/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_346432

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

*__inference_dense_122_layer_call_fn_346737

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
E__inference_dense_122_layer_call_and_return_conditional_losses_3452572
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
?
?
8__inference_batch_normalization_160_layer_call_fn_346149

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
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_3443212
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
?
f
J__inference_activation_200_layer_call_and_return_conditional_losses_344782

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
?
F__inference_conv2d_121_layer_call_and_return_conditional_losses_344874

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
i
M__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_344485

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
d
F__inference_dropout_40_layer_call_and_return_conditional_losses_346679

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
J__inference_activation_204_layer_call_and_return_conditional_losses_346713

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
??
?
D__inference_model_40_layer_call_and_return_conditional_losses_345838

inputs-
)conv2d_120_conv2d_readvariableop_resource.
*conv2d_120_biasadd_readvariableop_resource3
/batch_normalization_160_readvariableop_resource5
1batch_normalization_160_readvariableop_1_resourceD
@batch_normalization_160_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_160_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_121_conv2d_readvariableop_resource.
*conv2d_121_biasadd_readvariableop_resource3
/batch_normalization_161_readvariableop_resource5
1batch_normalization_161_readvariableop_1_resourceD
@batch_normalization_161_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_161_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_122_conv2d_readvariableop_resource.
*conv2d_122_biasadd_readvariableop_resource3
/batch_normalization_162_readvariableop_resource5
1batch_normalization_162_readvariableop_1_resourceD
@batch_normalization_162_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_162_fusedbatchnormv3_readvariableop_1_resource,
(dense_120_matmul_readvariableop_resource-
)dense_120_biasadd_readvariableop_resource2
.batch_normalization_163_assignmovingavg_3457924
0batch_normalization_163_assignmovingavg_1_345798A
=batch_normalization_163_batchnorm_mul_readvariableop_resource=
9batch_normalization_163_batchnorm_readvariableop_resource,
(dense_121_matmul_readvariableop_resource-
)dense_121_biasadd_readvariableop_resource,
(dense_122_matmul_readvariableop_resource-
)dense_122_biasadd_readvariableop_resource
identity??&batch_normalization_160/AssignNewValue?(batch_normalization_160/AssignNewValue_1?7batch_normalization_160/FusedBatchNormV3/ReadVariableOp?9batch_normalization_160/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_160/ReadVariableOp?(batch_normalization_160/ReadVariableOp_1?&batch_normalization_161/AssignNewValue?(batch_normalization_161/AssignNewValue_1?7batch_normalization_161/FusedBatchNormV3/ReadVariableOp?9batch_normalization_161/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_161/ReadVariableOp?(batch_normalization_161/ReadVariableOp_1?&batch_normalization_162/AssignNewValue?(batch_normalization_162/AssignNewValue_1?7batch_normalization_162/FusedBatchNormV3/ReadVariableOp?9batch_normalization_162/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_162/ReadVariableOp?(batch_normalization_162/ReadVariableOp_1?;batch_normalization_163/AssignMovingAvg/AssignSubVariableOp?6batch_normalization_163/AssignMovingAvg/ReadVariableOp?=batch_normalization_163/AssignMovingAvg_1/AssignSubVariableOp?8batch_normalization_163/AssignMovingAvg_1/ReadVariableOp?0batch_normalization_163/batchnorm/ReadVariableOp?4batch_normalization_163/batchnorm/mul/ReadVariableOp?!conv2d_120/BiasAdd/ReadVariableOp? conv2d_120/Conv2D/ReadVariableOp?!conv2d_121/BiasAdd/ReadVariableOp? conv2d_121/Conv2D/ReadVariableOp?!conv2d_122/BiasAdd/ReadVariableOp? conv2d_122/Conv2D/ReadVariableOp? dense_120/BiasAdd/ReadVariableOp?dense_120/MatMul/ReadVariableOp? dense_121/BiasAdd/ReadVariableOp?dense_121/MatMul/ReadVariableOp? dense_122/BiasAdd/ReadVariableOp?dense_122/MatMul/ReadVariableOp?
 conv2d_120/Conv2D/ReadVariableOpReadVariableOp)conv2d_120_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_120/Conv2D/ReadVariableOp?
conv2d_120/Conv2DConv2Dinputs(conv2d_120/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2
conv2d_120/Conv2D?
!conv2d_120/BiasAdd/ReadVariableOpReadVariableOp*conv2d_120_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_120/BiasAdd/ReadVariableOp?
conv2d_120/BiasAddBiasAddconv2d_120/Conv2D:output:0)conv2d_120/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  2
conv2d_120/BiasAdd?
activation_200/ReluReluconv2d_120/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  2
activation_200/Relu?
&batch_normalization_160/ReadVariableOpReadVariableOp/batch_normalization_160_readvariableop_resource*
_output_shapes
:*
dtype02(
&batch_normalization_160/ReadVariableOp?
(batch_normalization_160/ReadVariableOp_1ReadVariableOp1batch_normalization_160_readvariableop_1_resource*
_output_shapes
:*
dtype02*
(batch_normalization_160/ReadVariableOp_1?
7batch_normalization_160/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_160_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype029
7batch_normalization_160/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_160/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_160_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02;
9batch_normalization_160/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_160/FusedBatchNormV3FusedBatchNormV3!activation_200/Relu:activations:0.batch_normalization_160/ReadVariableOp:value:00batch_normalization_160/ReadVariableOp_1:value:0?batch_normalization_160/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_160/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_160/FusedBatchNormV3?
&batch_normalization_160/AssignNewValueAssignVariableOp@batch_normalization_160_fusedbatchnormv3_readvariableop_resource5batch_normalization_160/FusedBatchNormV3:batch_mean:08^batch_normalization_160/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*S
_classI
GEloc:@batch_normalization_160/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_160/AssignNewValue?
(batch_normalization_160/AssignNewValue_1AssignVariableOpBbatch_normalization_160_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_160/FusedBatchNormV3:batch_variance:0:^batch_normalization_160/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*U
_classK
IGloc:@batch_normalization_160/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_160/AssignNewValue_1?
max_pooling2d_120/MaxPoolMaxPool,batch_normalization_160/FusedBatchNormV3:y:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_120/MaxPool?
 conv2d_121/Conv2D/ReadVariableOpReadVariableOp)conv2d_121_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_121/Conv2D/ReadVariableOp?
conv2d_121/Conv2DConv2D"max_pooling2d_120/MaxPool:output:0(conv2d_121/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_121/Conv2D?
!conv2d_121/BiasAdd/ReadVariableOpReadVariableOp*conv2d_121_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_121/BiasAdd/ReadVariableOp?
conv2d_121/BiasAddBiasAddconv2d_121/Conv2D:output:0)conv2d_121/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_121/BiasAdd?
activation_201/ReluReluconv2d_121/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
activation_201/Relu?
&batch_normalization_161/ReadVariableOpReadVariableOp/batch_normalization_161_readvariableop_resource*
_output_shapes
: *
dtype02(
&batch_normalization_161/ReadVariableOp?
(batch_normalization_161/ReadVariableOp_1ReadVariableOp1batch_normalization_161_readvariableop_1_resource*
_output_shapes
: *
dtype02*
(batch_normalization_161/ReadVariableOp_1?
7batch_normalization_161/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_161_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype029
7batch_normalization_161/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_161/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_161_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02;
9batch_normalization_161/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_161/FusedBatchNormV3FusedBatchNormV3!activation_201/Relu:activations:0.batch_normalization_161/ReadVariableOp:value:00batch_normalization_161/ReadVariableOp_1:value:0?batch_normalization_161/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_161/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_161/FusedBatchNormV3?
&batch_normalization_161/AssignNewValueAssignVariableOp@batch_normalization_161_fusedbatchnormv3_readvariableop_resource5batch_normalization_161/FusedBatchNormV3:batch_mean:08^batch_normalization_161/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*S
_classI
GEloc:@batch_normalization_161/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_161/AssignNewValue?
(batch_normalization_161/AssignNewValue_1AssignVariableOpBbatch_normalization_161_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_161/FusedBatchNormV3:batch_variance:0:^batch_normalization_161/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*U
_classK
IGloc:@batch_normalization_161/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_161/AssignNewValue_1?
max_pooling2d_121/MaxPoolMaxPool,batch_normalization_161/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_121/MaxPool?
 conv2d_122/Conv2D/ReadVariableOpReadVariableOp)conv2d_122_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_122/Conv2D/ReadVariableOp?
conv2d_122/Conv2DConv2D"max_pooling2d_121/MaxPool:output:0(conv2d_122/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_122/Conv2D?
!conv2d_122/BiasAdd/ReadVariableOpReadVariableOp*conv2d_122_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_122/BiasAdd/ReadVariableOp?
conv2d_122/BiasAddBiasAddconv2d_122/Conv2D:output:0)conv2d_122/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_122/BiasAdd?
activation_202/ReluReluconv2d_122/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_202/Relu?
&batch_normalization_162/ReadVariableOpReadVariableOp/batch_normalization_162_readvariableop_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_162/ReadVariableOp?
(batch_normalization_162/ReadVariableOp_1ReadVariableOp1batch_normalization_162_readvariableop_1_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_162/ReadVariableOp_1?
7batch_normalization_162/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_162_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype029
7batch_normalization_162/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_162/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_162_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9batch_normalization_162/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_162/FusedBatchNormV3FusedBatchNormV3!activation_202/Relu:activations:0.batch_normalization_162/ReadVariableOp:value:00batch_normalization_162/ReadVariableOp_1:value:0?batch_normalization_162/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_162/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_162/FusedBatchNormV3?
&batch_normalization_162/AssignNewValueAssignVariableOp@batch_normalization_162_fusedbatchnormv3_readvariableop_resource5batch_normalization_162/FusedBatchNormV3:batch_mean:08^batch_normalization_162/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*S
_classI
GEloc:@batch_normalization_162/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_162/AssignNewValue?
(batch_normalization_162/AssignNewValue_1AssignVariableOpBbatch_normalization_162_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_162/FusedBatchNormV3:batch_variance:0:^batch_normalization_162/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*U
_classK
IGloc:@batch_normalization_162/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_162/AssignNewValue_1?
max_pooling2d_122/MaxPoolMaxPool,batch_normalization_162/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_122/MaxPoolu
flatten_40/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_40/Const?
flatten_40/ReshapeReshape"max_pooling2d_122/MaxPool:output:0flatten_40/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_40/Reshape?
dense_120/MatMul/ReadVariableOpReadVariableOp(dense_120_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
dense_120/MatMul/ReadVariableOp?
dense_120/MatMulMatMulflatten_40/Reshape:output:0'dense_120/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_120/MatMul?
 dense_120/BiasAdd/ReadVariableOpReadVariableOp)dense_120_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_120/BiasAdd/ReadVariableOp?
dense_120/BiasAddBiasAdddense_120/MatMul:product:0(dense_120/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_120/BiasAdd?
activation_203/ReluReludense_120/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_203/Relu?
6batch_normalization_163/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 28
6batch_normalization_163/moments/mean/reduction_indices?
$batch_normalization_163/moments/meanMean!activation_203/Relu:activations:0?batch_normalization_163/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2&
$batch_normalization_163/moments/mean?
,batch_normalization_163/moments/StopGradientStopGradient-batch_normalization_163/moments/mean:output:0*
T0*
_output_shapes

:2.
,batch_normalization_163/moments/StopGradient?
1batch_normalization_163/moments/SquaredDifferenceSquaredDifference!activation_203/Relu:activations:05batch_normalization_163/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????23
1batch_normalization_163/moments/SquaredDifference?
:batch_normalization_163/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2<
:batch_normalization_163/moments/variance/reduction_indices?
(batch_normalization_163/moments/varianceMean5batch_normalization_163/moments/SquaredDifference:z:0Cbatch_normalization_163/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2*
(batch_normalization_163/moments/variance?
'batch_normalization_163/moments/SqueezeSqueeze-batch_normalization_163/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2)
'batch_normalization_163/moments/Squeeze?
)batch_normalization_163/moments/Squeeze_1Squeeze1batch_normalization_163/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2+
)batch_normalization_163/moments/Squeeze_1?
-batch_normalization_163/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_163/AssignMovingAvg/345792*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_163/AssignMovingAvg/decay?
6batch_normalization_163/AssignMovingAvg/ReadVariableOpReadVariableOp.batch_normalization_163_assignmovingavg_345792*
_output_shapes
:*
dtype028
6batch_normalization_163/AssignMovingAvg/ReadVariableOp?
+batch_normalization_163/AssignMovingAvg/subSub>batch_normalization_163/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_163/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_163/AssignMovingAvg/345792*
_output_shapes
:2-
+batch_normalization_163/AssignMovingAvg/sub?
+batch_normalization_163/AssignMovingAvg/mulMul/batch_normalization_163/AssignMovingAvg/sub:z:06batch_normalization_163/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_163/AssignMovingAvg/345792*
_output_shapes
:2-
+batch_normalization_163/AssignMovingAvg/mul?
;batch_normalization_163/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp.batch_normalization_163_assignmovingavg_345792/batch_normalization_163/AssignMovingAvg/mul:z:07^batch_normalization_163/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_163/AssignMovingAvg/345792*
_output_shapes
 *
dtype02=
;batch_normalization_163/AssignMovingAvg/AssignSubVariableOp?
/batch_normalization_163/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_163/AssignMovingAvg_1/345798*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/batch_normalization_163/AssignMovingAvg_1/decay?
8batch_normalization_163/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch_normalization_163_assignmovingavg_1_345798*
_output_shapes
:*
dtype02:
8batch_normalization_163/AssignMovingAvg_1/ReadVariableOp?
-batch_normalization_163/AssignMovingAvg_1/subSub@batch_normalization_163/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_163/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_163/AssignMovingAvg_1/345798*
_output_shapes
:2/
-batch_normalization_163/AssignMovingAvg_1/sub?
-batch_normalization_163/AssignMovingAvg_1/mulMul1batch_normalization_163/AssignMovingAvg_1/sub:z:08batch_normalization_163/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_163/AssignMovingAvg_1/345798*
_output_shapes
:2/
-batch_normalization_163/AssignMovingAvg_1/mul?
=batch_normalization_163/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp0batch_normalization_163_assignmovingavg_1_3457981batch_normalization_163/AssignMovingAvg_1/mul:z:09^batch_normalization_163/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_163/AssignMovingAvg_1/345798*
_output_shapes
 *
dtype02?
=batch_normalization_163/AssignMovingAvg_1/AssignSubVariableOp?
'batch_normalization_163/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2)
'batch_normalization_163/batchnorm/add/y?
%batch_normalization_163/batchnorm/addAddV22batch_normalization_163/moments/Squeeze_1:output:00batch_normalization_163/batchnorm/add/y:output:0*
T0*
_output_shapes
:2'
%batch_normalization_163/batchnorm/add?
'batch_normalization_163/batchnorm/RsqrtRsqrt)batch_normalization_163/batchnorm/add:z:0*
T0*
_output_shapes
:2)
'batch_normalization_163/batchnorm/Rsqrt?
4batch_normalization_163/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_163_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization_163/batchnorm/mul/ReadVariableOp?
%batch_normalization_163/batchnorm/mulMul+batch_normalization_163/batchnorm/Rsqrt:y:0<batch_normalization_163/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2'
%batch_normalization_163/batchnorm/mul?
'batch_normalization_163/batchnorm/mul_1Mul!activation_203/Relu:activations:0)batch_normalization_163/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2)
'batch_normalization_163/batchnorm/mul_1?
'batch_normalization_163/batchnorm/mul_2Mul0batch_normalization_163/moments/Squeeze:output:0)batch_normalization_163/batchnorm/mul:z:0*
T0*
_output_shapes
:2)
'batch_normalization_163/batchnorm/mul_2?
0batch_normalization_163/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_163_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype022
0batch_normalization_163/batchnorm/ReadVariableOp?
%batch_normalization_163/batchnorm/subSub8batch_normalization_163/batchnorm/ReadVariableOp:value:0+batch_normalization_163/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2'
%batch_normalization_163/batchnorm/sub?
'batch_normalization_163/batchnorm/add_1AddV2+batch_normalization_163/batchnorm/mul_1:z:0)batch_normalization_163/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2)
'batch_normalization_163/batchnorm/add_1y
dropout_40/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_40/dropout/Const?
dropout_40/dropout/MulMul+batch_normalization_163/batchnorm/add_1:z:0!dropout_40/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_40/dropout/Mul?
dropout_40/dropout/ShapeShape+batch_normalization_163/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_40/dropout/Shape?
/dropout_40/dropout/random_uniform/RandomUniformRandomUniform!dropout_40/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype021
/dropout_40/dropout/random_uniform/RandomUniform?
!dropout_40/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_40/dropout/GreaterEqual/y?
dropout_40/dropout/GreaterEqualGreaterEqual8dropout_40/dropout/random_uniform/RandomUniform:output:0*dropout_40/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2!
dropout_40/dropout/GreaterEqual?
dropout_40/dropout/CastCast#dropout_40/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_40/dropout/Cast?
dropout_40/dropout/Mul_1Muldropout_40/dropout/Mul:z:0dropout_40/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_40/dropout/Mul_1?
dense_121/MatMul/ReadVariableOpReadVariableOp(dense_121_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_121/MatMul/ReadVariableOp?
dense_121/MatMulMatMuldropout_40/dropout/Mul_1:z:0'dense_121/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_121/MatMul?
 dense_121/BiasAdd/ReadVariableOpReadVariableOp)dense_121_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_121/BiasAdd/ReadVariableOp?
dense_121/BiasAddBiasAdddense_121/MatMul:product:0(dense_121/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_121/BiasAdd?
activation_204/ReluReludense_121/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_204/Relu?
dense_122/MatMul/ReadVariableOpReadVariableOp(dense_122_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_122/MatMul/ReadVariableOp?
dense_122/MatMulMatMul!activation_204/Relu:activations:0'dense_122/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_122/MatMul?
 dense_122/BiasAdd/ReadVariableOpReadVariableOp)dense_122_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_122/BiasAdd/ReadVariableOp?
dense_122/BiasAddBiasAdddense_122/MatMul:product:0(dense_122/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_122/BiasAdd?
IdentityIdentitydense_122/BiasAdd:output:0'^batch_normalization_160/AssignNewValue)^batch_normalization_160/AssignNewValue_18^batch_normalization_160/FusedBatchNormV3/ReadVariableOp:^batch_normalization_160/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_160/ReadVariableOp)^batch_normalization_160/ReadVariableOp_1'^batch_normalization_161/AssignNewValue)^batch_normalization_161/AssignNewValue_18^batch_normalization_161/FusedBatchNormV3/ReadVariableOp:^batch_normalization_161/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_161/ReadVariableOp)^batch_normalization_161/ReadVariableOp_1'^batch_normalization_162/AssignNewValue)^batch_normalization_162/AssignNewValue_18^batch_normalization_162/FusedBatchNormV3/ReadVariableOp:^batch_normalization_162/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_162/ReadVariableOp)^batch_normalization_162/ReadVariableOp_1<^batch_normalization_163/AssignMovingAvg/AssignSubVariableOp7^batch_normalization_163/AssignMovingAvg/ReadVariableOp>^batch_normalization_163/AssignMovingAvg_1/AssignSubVariableOp9^batch_normalization_163/AssignMovingAvg_1/ReadVariableOp1^batch_normalization_163/batchnorm/ReadVariableOp5^batch_normalization_163/batchnorm/mul/ReadVariableOp"^conv2d_120/BiasAdd/ReadVariableOp!^conv2d_120/Conv2D/ReadVariableOp"^conv2d_121/BiasAdd/ReadVariableOp!^conv2d_121/Conv2D/ReadVariableOp"^conv2d_122/BiasAdd/ReadVariableOp!^conv2d_122/Conv2D/ReadVariableOp!^dense_120/BiasAdd/ReadVariableOp ^dense_120/MatMul/ReadVariableOp!^dense_121/BiasAdd/ReadVariableOp ^dense_121/MatMul/ReadVariableOp!^dense_122/BiasAdd/ReadVariableOp ^dense_122/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2P
&batch_normalization_160/AssignNewValue&batch_normalization_160/AssignNewValue2T
(batch_normalization_160/AssignNewValue_1(batch_normalization_160/AssignNewValue_12r
7batch_normalization_160/FusedBatchNormV3/ReadVariableOp7batch_normalization_160/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_160/FusedBatchNormV3/ReadVariableOp_19batch_normalization_160/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_160/ReadVariableOp&batch_normalization_160/ReadVariableOp2T
(batch_normalization_160/ReadVariableOp_1(batch_normalization_160/ReadVariableOp_12P
&batch_normalization_161/AssignNewValue&batch_normalization_161/AssignNewValue2T
(batch_normalization_161/AssignNewValue_1(batch_normalization_161/AssignNewValue_12r
7batch_normalization_161/FusedBatchNormV3/ReadVariableOp7batch_normalization_161/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_161/FusedBatchNormV3/ReadVariableOp_19batch_normalization_161/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_161/ReadVariableOp&batch_normalization_161/ReadVariableOp2T
(batch_normalization_161/ReadVariableOp_1(batch_normalization_161/ReadVariableOp_12P
&batch_normalization_162/AssignNewValue&batch_normalization_162/AssignNewValue2T
(batch_normalization_162/AssignNewValue_1(batch_normalization_162/AssignNewValue_12r
7batch_normalization_162/FusedBatchNormV3/ReadVariableOp7batch_normalization_162/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_162/FusedBatchNormV3/ReadVariableOp_19batch_normalization_162/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_162/ReadVariableOp&batch_normalization_162/ReadVariableOp2T
(batch_normalization_162/ReadVariableOp_1(batch_normalization_162/ReadVariableOp_12z
;batch_normalization_163/AssignMovingAvg/AssignSubVariableOp;batch_normalization_163/AssignMovingAvg/AssignSubVariableOp2p
6batch_normalization_163/AssignMovingAvg/ReadVariableOp6batch_normalization_163/AssignMovingAvg/ReadVariableOp2~
=batch_normalization_163/AssignMovingAvg_1/AssignSubVariableOp=batch_normalization_163/AssignMovingAvg_1/AssignSubVariableOp2t
8batch_normalization_163/AssignMovingAvg_1/ReadVariableOp8batch_normalization_163/AssignMovingAvg_1/ReadVariableOp2d
0batch_normalization_163/batchnorm/ReadVariableOp0batch_normalization_163/batchnorm/ReadVariableOp2l
4batch_normalization_163/batchnorm/mul/ReadVariableOp4batch_normalization_163/batchnorm/mul/ReadVariableOp2F
!conv2d_120/BiasAdd/ReadVariableOp!conv2d_120/BiasAdd/ReadVariableOp2D
 conv2d_120/Conv2D/ReadVariableOp conv2d_120/Conv2D/ReadVariableOp2F
!conv2d_121/BiasAdd/ReadVariableOp!conv2d_121/BiasAdd/ReadVariableOp2D
 conv2d_121/Conv2D/ReadVariableOp conv2d_121/Conv2D/ReadVariableOp2F
!conv2d_122/BiasAdd/ReadVariableOp!conv2d_122/BiasAdd/ReadVariableOp2D
 conv2d_122/Conv2D/ReadVariableOp conv2d_122/Conv2D/ReadVariableOp2D
 dense_120/BiasAdd/ReadVariableOp dense_120/BiasAdd/ReadVariableOp2B
dense_120/MatMul/ReadVariableOpdense_120/MatMul/ReadVariableOp2D
 dense_121/BiasAdd/ReadVariableOp dense_121/BiasAdd/ReadVariableOp2B
dense_121/MatMul/ReadVariableOpdense_121/MatMul/ReadVariableOp2D
 dense_122/BiasAdd/ReadVariableOp dense_122/BiasAdd/ReadVariableOp2B
dense_122/MatMul/ReadVariableOpdense_122/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_346182

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
?
N
2__inference_max_pooling2d_121_layer_call_fn_344491

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
M__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_3444852
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
/__inference_activation_204_layer_call_fn_346718

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
J__inference_activation_204_layer_call_and_return_conditional_losses_3452392
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
?
N
2__inference_max_pooling2d_120_layer_call_fn_344375

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
M__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_3443692
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
?
N
2__inference_max_pooling2d_122_layer_call_fn_344607

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
M__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_3446012
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
?
)__inference_model_40_layer_call_fn_346069

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
D__inference_model_40_layer_call_and_return_conditional_losses_3455782
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
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_344468

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
ô
?
!__inference__wrapped_model_344259
input_416
2model_40_conv2d_120_conv2d_readvariableop_resource7
3model_40_conv2d_120_biasadd_readvariableop_resource<
8model_40_batch_normalization_160_readvariableop_resource>
:model_40_batch_normalization_160_readvariableop_1_resourceM
Imodel_40_batch_normalization_160_fusedbatchnormv3_readvariableop_resourceO
Kmodel_40_batch_normalization_160_fusedbatchnormv3_readvariableop_1_resource6
2model_40_conv2d_121_conv2d_readvariableop_resource7
3model_40_conv2d_121_biasadd_readvariableop_resource<
8model_40_batch_normalization_161_readvariableop_resource>
:model_40_batch_normalization_161_readvariableop_1_resourceM
Imodel_40_batch_normalization_161_fusedbatchnormv3_readvariableop_resourceO
Kmodel_40_batch_normalization_161_fusedbatchnormv3_readvariableop_1_resource6
2model_40_conv2d_122_conv2d_readvariableop_resource7
3model_40_conv2d_122_biasadd_readvariableop_resource<
8model_40_batch_normalization_162_readvariableop_resource>
:model_40_batch_normalization_162_readvariableop_1_resourceM
Imodel_40_batch_normalization_162_fusedbatchnormv3_readvariableop_resourceO
Kmodel_40_batch_normalization_162_fusedbatchnormv3_readvariableop_1_resource5
1model_40_dense_120_matmul_readvariableop_resource6
2model_40_dense_120_biasadd_readvariableop_resourceF
Bmodel_40_batch_normalization_163_batchnorm_readvariableop_resourceJ
Fmodel_40_batch_normalization_163_batchnorm_mul_readvariableop_resourceH
Dmodel_40_batch_normalization_163_batchnorm_readvariableop_1_resourceH
Dmodel_40_batch_normalization_163_batchnorm_readvariableop_2_resource5
1model_40_dense_121_matmul_readvariableop_resource6
2model_40_dense_121_biasadd_readvariableop_resource5
1model_40_dense_122_matmul_readvariableop_resource6
2model_40_dense_122_biasadd_readvariableop_resource
identity??@model_40/batch_normalization_160/FusedBatchNormV3/ReadVariableOp?Bmodel_40/batch_normalization_160/FusedBatchNormV3/ReadVariableOp_1?/model_40/batch_normalization_160/ReadVariableOp?1model_40/batch_normalization_160/ReadVariableOp_1?@model_40/batch_normalization_161/FusedBatchNormV3/ReadVariableOp?Bmodel_40/batch_normalization_161/FusedBatchNormV3/ReadVariableOp_1?/model_40/batch_normalization_161/ReadVariableOp?1model_40/batch_normalization_161/ReadVariableOp_1?@model_40/batch_normalization_162/FusedBatchNormV3/ReadVariableOp?Bmodel_40/batch_normalization_162/FusedBatchNormV3/ReadVariableOp_1?/model_40/batch_normalization_162/ReadVariableOp?1model_40/batch_normalization_162/ReadVariableOp_1?9model_40/batch_normalization_163/batchnorm/ReadVariableOp?;model_40/batch_normalization_163/batchnorm/ReadVariableOp_1?;model_40/batch_normalization_163/batchnorm/ReadVariableOp_2?=model_40/batch_normalization_163/batchnorm/mul/ReadVariableOp?*model_40/conv2d_120/BiasAdd/ReadVariableOp?)model_40/conv2d_120/Conv2D/ReadVariableOp?*model_40/conv2d_121/BiasAdd/ReadVariableOp?)model_40/conv2d_121/Conv2D/ReadVariableOp?*model_40/conv2d_122/BiasAdd/ReadVariableOp?)model_40/conv2d_122/Conv2D/ReadVariableOp?)model_40/dense_120/BiasAdd/ReadVariableOp?(model_40/dense_120/MatMul/ReadVariableOp?)model_40/dense_121/BiasAdd/ReadVariableOp?(model_40/dense_121/MatMul/ReadVariableOp?)model_40/dense_122/BiasAdd/ReadVariableOp?(model_40/dense_122/MatMul/ReadVariableOp?
)model_40/conv2d_120/Conv2D/ReadVariableOpReadVariableOp2model_40_conv2d_120_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02+
)model_40/conv2d_120/Conv2D/ReadVariableOp?
model_40/conv2d_120/Conv2DConv2Dinput_411model_40/conv2d_120/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2
model_40/conv2d_120/Conv2D?
*model_40/conv2d_120/BiasAdd/ReadVariableOpReadVariableOp3model_40_conv2d_120_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_40/conv2d_120/BiasAdd/ReadVariableOp?
model_40/conv2d_120/BiasAddBiasAdd#model_40/conv2d_120/Conv2D:output:02model_40/conv2d_120/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  2
model_40/conv2d_120/BiasAdd?
model_40/activation_200/ReluRelu$model_40/conv2d_120/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  2
model_40/activation_200/Relu?
/model_40/batch_normalization_160/ReadVariableOpReadVariableOp8model_40_batch_normalization_160_readvariableop_resource*
_output_shapes
:*
dtype021
/model_40/batch_normalization_160/ReadVariableOp?
1model_40/batch_normalization_160/ReadVariableOp_1ReadVariableOp:model_40_batch_normalization_160_readvariableop_1_resource*
_output_shapes
:*
dtype023
1model_40/batch_normalization_160/ReadVariableOp_1?
@model_40/batch_normalization_160/FusedBatchNormV3/ReadVariableOpReadVariableOpImodel_40_batch_normalization_160_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02B
@model_40/batch_normalization_160/FusedBatchNormV3/ReadVariableOp?
Bmodel_40/batch_normalization_160/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKmodel_40_batch_normalization_160_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02D
Bmodel_40/batch_normalization_160/FusedBatchNormV3/ReadVariableOp_1?
1model_40/batch_normalization_160/FusedBatchNormV3FusedBatchNormV3*model_40/activation_200/Relu:activations:07model_40/batch_normalization_160/ReadVariableOp:value:09model_40/batch_normalization_160/ReadVariableOp_1:value:0Hmodel_40/batch_normalization_160/FusedBatchNormV3/ReadVariableOp:value:0Jmodel_40/batch_normalization_160/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
is_training( 23
1model_40/batch_normalization_160/FusedBatchNormV3?
"model_40/max_pooling2d_120/MaxPoolMaxPool5model_40/batch_normalization_160/FusedBatchNormV3:y:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2$
"model_40/max_pooling2d_120/MaxPool?
)model_40/conv2d_121/Conv2D/ReadVariableOpReadVariableOp2model_40_conv2d_121_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02+
)model_40/conv2d_121/Conv2D/ReadVariableOp?
model_40/conv2d_121/Conv2DConv2D+model_40/max_pooling2d_120/MaxPool:output:01model_40/conv2d_121/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
model_40/conv2d_121/Conv2D?
*model_40/conv2d_121/BiasAdd/ReadVariableOpReadVariableOp3model_40_conv2d_121_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_40/conv2d_121/BiasAdd/ReadVariableOp?
model_40/conv2d_121/BiasAddBiasAdd#model_40/conv2d_121/Conv2D:output:02model_40/conv2d_121/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
model_40/conv2d_121/BiasAdd?
model_40/activation_201/ReluRelu$model_40/conv2d_121/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
model_40/activation_201/Relu?
/model_40/batch_normalization_161/ReadVariableOpReadVariableOp8model_40_batch_normalization_161_readvariableop_resource*
_output_shapes
: *
dtype021
/model_40/batch_normalization_161/ReadVariableOp?
1model_40/batch_normalization_161/ReadVariableOp_1ReadVariableOp:model_40_batch_normalization_161_readvariableop_1_resource*
_output_shapes
: *
dtype023
1model_40/batch_normalization_161/ReadVariableOp_1?
@model_40/batch_normalization_161/FusedBatchNormV3/ReadVariableOpReadVariableOpImodel_40_batch_normalization_161_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02B
@model_40/batch_normalization_161/FusedBatchNormV3/ReadVariableOp?
Bmodel_40/batch_normalization_161/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKmodel_40_batch_normalization_161_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02D
Bmodel_40/batch_normalization_161/FusedBatchNormV3/ReadVariableOp_1?
1model_40/batch_normalization_161/FusedBatchNormV3FusedBatchNormV3*model_40/activation_201/Relu:activations:07model_40/batch_normalization_161/ReadVariableOp:value:09model_40/batch_normalization_161/ReadVariableOp_1:value:0Hmodel_40/batch_normalization_161/FusedBatchNormV3/ReadVariableOp:value:0Jmodel_40/batch_normalization_161/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 23
1model_40/batch_normalization_161/FusedBatchNormV3?
"model_40/max_pooling2d_121/MaxPoolMaxPool5model_40/batch_normalization_161/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2$
"model_40/max_pooling2d_121/MaxPool?
)model_40/conv2d_122/Conv2D/ReadVariableOpReadVariableOp2model_40_conv2d_122_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02+
)model_40/conv2d_122/Conv2D/ReadVariableOp?
model_40/conv2d_122/Conv2DConv2D+model_40/max_pooling2d_121/MaxPool:output:01model_40/conv2d_122/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
model_40/conv2d_122/Conv2D?
*model_40/conv2d_122/BiasAdd/ReadVariableOpReadVariableOp3model_40_conv2d_122_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model_40/conv2d_122/BiasAdd/ReadVariableOp?
model_40/conv2d_122/BiasAddBiasAdd#model_40/conv2d_122/Conv2D:output:02model_40/conv2d_122/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
model_40/conv2d_122/BiasAdd?
model_40/activation_202/ReluRelu$model_40/conv2d_122/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
model_40/activation_202/Relu?
/model_40/batch_normalization_162/ReadVariableOpReadVariableOp8model_40_batch_normalization_162_readvariableop_resource*
_output_shapes
:@*
dtype021
/model_40/batch_normalization_162/ReadVariableOp?
1model_40/batch_normalization_162/ReadVariableOp_1ReadVariableOp:model_40_batch_normalization_162_readvariableop_1_resource*
_output_shapes
:@*
dtype023
1model_40/batch_normalization_162/ReadVariableOp_1?
@model_40/batch_normalization_162/FusedBatchNormV3/ReadVariableOpReadVariableOpImodel_40_batch_normalization_162_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02B
@model_40/batch_normalization_162/FusedBatchNormV3/ReadVariableOp?
Bmodel_40/batch_normalization_162/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKmodel_40_batch_normalization_162_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02D
Bmodel_40/batch_normalization_162/FusedBatchNormV3/ReadVariableOp_1?
1model_40/batch_normalization_162/FusedBatchNormV3FusedBatchNormV3*model_40/activation_202/Relu:activations:07model_40/batch_normalization_162/ReadVariableOp:value:09model_40/batch_normalization_162/ReadVariableOp_1:value:0Hmodel_40/batch_normalization_162/FusedBatchNormV3/ReadVariableOp:value:0Jmodel_40/batch_normalization_162/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 23
1model_40/batch_normalization_162/FusedBatchNormV3?
"model_40/max_pooling2d_122/MaxPoolMaxPool5model_40/batch_normalization_162/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2$
"model_40/max_pooling2d_122/MaxPool?
model_40/flatten_40/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
model_40/flatten_40/Const?
model_40/flatten_40/ReshapeReshape+model_40/max_pooling2d_122/MaxPool:output:0"model_40/flatten_40/Const:output:0*
T0*(
_output_shapes
:??????????2
model_40/flatten_40/Reshape?
(model_40/dense_120/MatMul/ReadVariableOpReadVariableOp1model_40_dense_120_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(model_40/dense_120/MatMul/ReadVariableOp?
model_40/dense_120/MatMulMatMul$model_40/flatten_40/Reshape:output:00model_40/dense_120/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_40/dense_120/MatMul?
)model_40/dense_120/BiasAdd/ReadVariableOpReadVariableOp2model_40_dense_120_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_40/dense_120/BiasAdd/ReadVariableOp?
model_40/dense_120/BiasAddBiasAdd#model_40/dense_120/MatMul:product:01model_40/dense_120/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_40/dense_120/BiasAdd?
model_40/activation_203/ReluRelu#model_40/dense_120/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_40/activation_203/Relu?
9model_40/batch_normalization_163/batchnorm/ReadVariableOpReadVariableOpBmodel_40_batch_normalization_163_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02;
9model_40/batch_normalization_163/batchnorm/ReadVariableOp?
0model_40/batch_normalization_163/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:22
0model_40/batch_normalization_163/batchnorm/add/y?
.model_40/batch_normalization_163/batchnorm/addAddV2Amodel_40/batch_normalization_163/batchnorm/ReadVariableOp:value:09model_40/batch_normalization_163/batchnorm/add/y:output:0*
T0*
_output_shapes
:20
.model_40/batch_normalization_163/batchnorm/add?
0model_40/batch_normalization_163/batchnorm/RsqrtRsqrt2model_40/batch_normalization_163/batchnorm/add:z:0*
T0*
_output_shapes
:22
0model_40/batch_normalization_163/batchnorm/Rsqrt?
=model_40/batch_normalization_163/batchnorm/mul/ReadVariableOpReadVariableOpFmodel_40_batch_normalization_163_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02?
=model_40/batch_normalization_163/batchnorm/mul/ReadVariableOp?
.model_40/batch_normalization_163/batchnorm/mulMul4model_40/batch_normalization_163/batchnorm/Rsqrt:y:0Emodel_40/batch_normalization_163/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:20
.model_40/batch_normalization_163/batchnorm/mul?
0model_40/batch_normalization_163/batchnorm/mul_1Mul*model_40/activation_203/Relu:activations:02model_40/batch_normalization_163/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????22
0model_40/batch_normalization_163/batchnorm/mul_1?
;model_40/batch_normalization_163/batchnorm/ReadVariableOp_1ReadVariableOpDmodel_40_batch_normalization_163_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02=
;model_40/batch_normalization_163/batchnorm/ReadVariableOp_1?
0model_40/batch_normalization_163/batchnorm/mul_2MulCmodel_40/batch_normalization_163/batchnorm/ReadVariableOp_1:value:02model_40/batch_normalization_163/batchnorm/mul:z:0*
T0*
_output_shapes
:22
0model_40/batch_normalization_163/batchnorm/mul_2?
;model_40/batch_normalization_163/batchnorm/ReadVariableOp_2ReadVariableOpDmodel_40_batch_normalization_163_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02=
;model_40/batch_normalization_163/batchnorm/ReadVariableOp_2?
.model_40/batch_normalization_163/batchnorm/subSubCmodel_40/batch_normalization_163/batchnorm/ReadVariableOp_2:value:04model_40/batch_normalization_163/batchnorm/mul_2:z:0*
T0*
_output_shapes
:20
.model_40/batch_normalization_163/batchnorm/sub?
0model_40/batch_normalization_163/batchnorm/add_1AddV24model_40/batch_normalization_163/batchnorm/mul_1:z:02model_40/batch_normalization_163/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????22
0model_40/batch_normalization_163/batchnorm/add_1?
model_40/dropout_40/IdentityIdentity4model_40/batch_normalization_163/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????2
model_40/dropout_40/Identity?
(model_40/dense_121/MatMul/ReadVariableOpReadVariableOp1model_40_dense_121_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(model_40/dense_121/MatMul/ReadVariableOp?
model_40/dense_121/MatMulMatMul%model_40/dropout_40/Identity:output:00model_40/dense_121/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_40/dense_121/MatMul?
)model_40/dense_121/BiasAdd/ReadVariableOpReadVariableOp2model_40_dense_121_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_40/dense_121/BiasAdd/ReadVariableOp?
model_40/dense_121/BiasAddBiasAdd#model_40/dense_121/MatMul:product:01model_40/dense_121/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_40/dense_121/BiasAdd?
model_40/activation_204/ReluRelu#model_40/dense_121/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_40/activation_204/Relu?
(model_40/dense_122/MatMul/ReadVariableOpReadVariableOp1model_40_dense_122_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(model_40/dense_122/MatMul/ReadVariableOp?
model_40/dense_122/MatMulMatMul*model_40/activation_204/Relu:activations:00model_40/dense_122/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_40/dense_122/MatMul?
)model_40/dense_122/BiasAdd/ReadVariableOpReadVariableOp2model_40_dense_122_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_40/dense_122/BiasAdd/ReadVariableOp?
model_40/dense_122/BiasAddBiasAdd#model_40/dense_122/MatMul:product:01model_40/dense_122/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_40/dense_122/BiasAdd?
IdentityIdentity#model_40/dense_122/BiasAdd:output:0A^model_40/batch_normalization_160/FusedBatchNormV3/ReadVariableOpC^model_40/batch_normalization_160/FusedBatchNormV3/ReadVariableOp_10^model_40/batch_normalization_160/ReadVariableOp2^model_40/batch_normalization_160/ReadVariableOp_1A^model_40/batch_normalization_161/FusedBatchNormV3/ReadVariableOpC^model_40/batch_normalization_161/FusedBatchNormV3/ReadVariableOp_10^model_40/batch_normalization_161/ReadVariableOp2^model_40/batch_normalization_161/ReadVariableOp_1A^model_40/batch_normalization_162/FusedBatchNormV3/ReadVariableOpC^model_40/batch_normalization_162/FusedBatchNormV3/ReadVariableOp_10^model_40/batch_normalization_162/ReadVariableOp2^model_40/batch_normalization_162/ReadVariableOp_1:^model_40/batch_normalization_163/batchnorm/ReadVariableOp<^model_40/batch_normalization_163/batchnorm/ReadVariableOp_1<^model_40/batch_normalization_163/batchnorm/ReadVariableOp_2>^model_40/batch_normalization_163/batchnorm/mul/ReadVariableOp+^model_40/conv2d_120/BiasAdd/ReadVariableOp*^model_40/conv2d_120/Conv2D/ReadVariableOp+^model_40/conv2d_121/BiasAdd/ReadVariableOp*^model_40/conv2d_121/Conv2D/ReadVariableOp+^model_40/conv2d_122/BiasAdd/ReadVariableOp*^model_40/conv2d_122/Conv2D/ReadVariableOp*^model_40/dense_120/BiasAdd/ReadVariableOp)^model_40/dense_120/MatMul/ReadVariableOp*^model_40/dense_121/BiasAdd/ReadVariableOp)^model_40/dense_121/MatMul/ReadVariableOp*^model_40/dense_122/BiasAdd/ReadVariableOp)^model_40/dense_122/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2?
@model_40/batch_normalization_160/FusedBatchNormV3/ReadVariableOp@model_40/batch_normalization_160/FusedBatchNormV3/ReadVariableOp2?
Bmodel_40/batch_normalization_160/FusedBatchNormV3/ReadVariableOp_1Bmodel_40/batch_normalization_160/FusedBatchNormV3/ReadVariableOp_12b
/model_40/batch_normalization_160/ReadVariableOp/model_40/batch_normalization_160/ReadVariableOp2f
1model_40/batch_normalization_160/ReadVariableOp_11model_40/batch_normalization_160/ReadVariableOp_12?
@model_40/batch_normalization_161/FusedBatchNormV3/ReadVariableOp@model_40/batch_normalization_161/FusedBatchNormV3/ReadVariableOp2?
Bmodel_40/batch_normalization_161/FusedBatchNormV3/ReadVariableOp_1Bmodel_40/batch_normalization_161/FusedBatchNormV3/ReadVariableOp_12b
/model_40/batch_normalization_161/ReadVariableOp/model_40/batch_normalization_161/ReadVariableOp2f
1model_40/batch_normalization_161/ReadVariableOp_11model_40/batch_normalization_161/ReadVariableOp_12?
@model_40/batch_normalization_162/FusedBatchNormV3/ReadVariableOp@model_40/batch_normalization_162/FusedBatchNormV3/ReadVariableOp2?
Bmodel_40/batch_normalization_162/FusedBatchNormV3/ReadVariableOp_1Bmodel_40/batch_normalization_162/FusedBatchNormV3/ReadVariableOp_12b
/model_40/batch_normalization_162/ReadVariableOp/model_40/batch_normalization_162/ReadVariableOp2f
1model_40/batch_normalization_162/ReadVariableOp_11model_40/batch_normalization_162/ReadVariableOp_12v
9model_40/batch_normalization_163/batchnorm/ReadVariableOp9model_40/batch_normalization_163/batchnorm/ReadVariableOp2z
;model_40/batch_normalization_163/batchnorm/ReadVariableOp_1;model_40/batch_normalization_163/batchnorm/ReadVariableOp_12z
;model_40/batch_normalization_163/batchnorm/ReadVariableOp_2;model_40/batch_normalization_163/batchnorm/ReadVariableOp_22~
=model_40/batch_normalization_163/batchnorm/mul/ReadVariableOp=model_40/batch_normalization_163/batchnorm/mul/ReadVariableOp2X
*model_40/conv2d_120/BiasAdd/ReadVariableOp*model_40/conv2d_120/BiasAdd/ReadVariableOp2V
)model_40/conv2d_120/Conv2D/ReadVariableOp)model_40/conv2d_120/Conv2D/ReadVariableOp2X
*model_40/conv2d_121/BiasAdd/ReadVariableOp*model_40/conv2d_121/BiasAdd/ReadVariableOp2V
)model_40/conv2d_121/Conv2D/ReadVariableOp)model_40/conv2d_121/Conv2D/ReadVariableOp2X
*model_40/conv2d_122/BiasAdd/ReadVariableOp*model_40/conv2d_122/BiasAdd/ReadVariableOp2V
)model_40/conv2d_122/Conv2D/ReadVariableOp)model_40/conv2d_122/Conv2D/ReadVariableOp2V
)model_40/dense_120/BiasAdd/ReadVariableOp)model_40/dense_120/BiasAdd/ReadVariableOp2T
(model_40/dense_120/MatMul/ReadVariableOp(model_40/dense_120/MatMul/ReadVariableOp2V
)model_40/dense_121/BiasAdd/ReadVariableOp)model_40/dense_121/BiasAdd/ReadVariableOp2T
(model_40/dense_121/MatMul/ReadVariableOp(model_40/dense_121/MatMul/ReadVariableOp2V
)model_40/dense_122/BiasAdd/ReadVariableOp)model_40/dense_122/BiasAdd/ReadVariableOp2T
(model_40/dense_122/MatMul/ReadVariableOp(model_40/dense_122/MatMul/ReadVariableOp:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_41
?
?
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_344827

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
?0
?
S__inference_batch_normalization_163_layer_call_and_return_conditional_losses_344703

inputs
assignmovingavg_344678
assignmovingavg_1_344684)
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
loc:@AssignMovingAvg/344678*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_344678*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/344678*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/344678*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_344678AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/344678*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/344684*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_344684*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/344684*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/344684*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_344684AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/344684*
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
?
?
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_346357

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
E__inference_dense_122_layer_call_and_return_conditional_losses_346728

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

D__inference_model_40_layer_call_and_return_conditional_losses_345354
input_41
conv2d_120_345277
conv2d_120_345279"
batch_normalization_160_345283"
batch_normalization_160_345285"
batch_normalization_160_345287"
batch_normalization_160_345289
conv2d_121_345293
conv2d_121_345295"
batch_normalization_161_345299"
batch_normalization_161_345301"
batch_normalization_161_345303"
batch_normalization_161_345305
conv2d_122_345309
conv2d_122_345311"
batch_normalization_162_345315"
batch_normalization_162_345317"
batch_normalization_162_345319"
batch_normalization_162_345321
dense_120_345326
dense_120_345328"
batch_normalization_163_345332"
batch_normalization_163_345334"
batch_normalization_163_345336"
batch_normalization_163_345338
dense_121_345342
dense_121_345344
dense_122_345348
dense_122_345350
identity??/batch_normalization_160/StatefulPartitionedCall?/batch_normalization_161/StatefulPartitionedCall?/batch_normalization_162/StatefulPartitionedCall?/batch_normalization_163/StatefulPartitionedCall?"conv2d_120/StatefulPartitionedCall?"conv2d_121/StatefulPartitionedCall?"conv2d_122/StatefulPartitionedCall?!dense_120/StatefulPartitionedCall?!dense_121/StatefulPartitionedCall?!dense_122/StatefulPartitionedCall?
"conv2d_120/StatefulPartitionedCallStatefulPartitionedCallinput_41conv2d_120_345277conv2d_120_345279*
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
F__inference_conv2d_120_layer_call_and_return_conditional_losses_3447612$
"conv2d_120/StatefulPartitionedCall?
activation_200/PartitionedCallPartitionedCall+conv2d_120/StatefulPartitionedCall:output:0*
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
J__inference_activation_200_layer_call_and_return_conditional_losses_3447822 
activation_200/PartitionedCall?
/batch_normalization_160/StatefulPartitionedCallStatefulPartitionedCall'activation_200/PartitionedCall:output:0batch_normalization_160_345283batch_normalization_160_345285batch_normalization_160_345287batch_normalization_160_345289*
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
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_34482721
/batch_normalization_160/StatefulPartitionedCall?
!max_pooling2d_120/PartitionedCallPartitionedCall8batch_normalization_160/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_3443692#
!max_pooling2d_120/PartitionedCall?
"conv2d_121/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_120/PartitionedCall:output:0conv2d_121_345293conv2d_121_345295*
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
F__inference_conv2d_121_layer_call_and_return_conditional_losses_3448742$
"conv2d_121/StatefulPartitionedCall?
activation_201/PartitionedCallPartitionedCall+conv2d_121/StatefulPartitionedCall:output:0*
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
J__inference_activation_201_layer_call_and_return_conditional_losses_3448952 
activation_201/PartitionedCall?
/batch_normalization_161/StatefulPartitionedCallStatefulPartitionedCall'activation_201/PartitionedCall:output:0batch_normalization_161_345299batch_normalization_161_345301batch_normalization_161_345303batch_normalization_161_345305*
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
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_34494021
/batch_normalization_161/StatefulPartitionedCall?
!max_pooling2d_121/PartitionedCallPartitionedCall8batch_normalization_161/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_3444852#
!max_pooling2d_121/PartitionedCall?
"conv2d_122/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_121/PartitionedCall:output:0conv2d_122_345309conv2d_122_345311*
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
F__inference_conv2d_122_layer_call_and_return_conditional_losses_3449872$
"conv2d_122/StatefulPartitionedCall?
activation_202/PartitionedCallPartitionedCall+conv2d_122/StatefulPartitionedCall:output:0*
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
J__inference_activation_202_layer_call_and_return_conditional_losses_3450082 
activation_202/PartitionedCall?
/batch_normalization_162/StatefulPartitionedCallStatefulPartitionedCall'activation_202/PartitionedCall:output:0batch_normalization_162_345315batch_normalization_162_345317batch_normalization_162_345319batch_normalization_162_345321*
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
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_34505321
/batch_normalization_162/StatefulPartitionedCall?
!max_pooling2d_122/PartitionedCallPartitionedCall8batch_normalization_162/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_3446012#
!max_pooling2d_122/PartitionedCall?
flatten_40/PartitionedCallPartitionedCall*max_pooling2d_122/PartitionedCall:output:0*
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
F__inference_flatten_40_layer_call_and_return_conditional_losses_3450962
flatten_40/PartitionedCall?
!dense_120/StatefulPartitionedCallStatefulPartitionedCall#flatten_40/PartitionedCall:output:0dense_120_345326dense_120_345328*
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
E__inference_dense_120_layer_call_and_return_conditional_losses_3451142#
!dense_120/StatefulPartitionedCall?
activation_203/PartitionedCallPartitionedCall*dense_120/StatefulPartitionedCall:output:0*
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
J__inference_activation_203_layer_call_and_return_conditional_losses_3451352 
activation_203/PartitionedCall?
/batch_normalization_163/StatefulPartitionedCallStatefulPartitionedCall'activation_203/PartitionedCall:output:0batch_normalization_163_345332batch_normalization_163_345334batch_normalization_163_345336batch_normalization_163_345338*
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
S__inference_batch_normalization_163_layer_call_and_return_conditional_losses_34473621
/batch_normalization_163/StatefulPartitionedCall?
dropout_40/PartitionedCallPartitionedCall8batch_normalization_163/StatefulPartitionedCall:output:0*
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
F__inference_dropout_40_layer_call_and_return_conditional_losses_3451952
dropout_40/PartitionedCall?
!dense_121/StatefulPartitionedCallStatefulPartitionedCall#dropout_40/PartitionedCall:output:0dense_121_345342dense_121_345344*
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
E__inference_dense_121_layer_call_and_return_conditional_losses_3452182#
!dense_121/StatefulPartitionedCall?
activation_204/PartitionedCallPartitionedCall*dense_121/StatefulPartitionedCall:output:0*
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
J__inference_activation_204_layer_call_and_return_conditional_losses_3452392 
activation_204/PartitionedCall?
!dense_122/StatefulPartitionedCallStatefulPartitionedCall'activation_204/PartitionedCall:output:0dense_122_345348dense_122_345350*
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
E__inference_dense_122_layer_call_and_return_conditional_losses_3452572#
!dense_122/StatefulPartitionedCall?
IdentityIdentity*dense_122/StatefulPartitionedCall:output:00^batch_normalization_160/StatefulPartitionedCall0^batch_normalization_161/StatefulPartitionedCall0^batch_normalization_162/StatefulPartitionedCall0^batch_normalization_163/StatefulPartitionedCall#^conv2d_120/StatefulPartitionedCall#^conv2d_121/StatefulPartitionedCall#^conv2d_122/StatefulPartitionedCall"^dense_120/StatefulPartitionedCall"^dense_121/StatefulPartitionedCall"^dense_122/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2b
/batch_normalization_160/StatefulPartitionedCall/batch_normalization_160/StatefulPartitionedCall2b
/batch_normalization_161/StatefulPartitionedCall/batch_normalization_161/StatefulPartitionedCall2b
/batch_normalization_162/StatefulPartitionedCall/batch_normalization_162/StatefulPartitionedCall2b
/batch_normalization_163/StatefulPartitionedCall/batch_normalization_163/StatefulPartitionedCall2H
"conv2d_120/StatefulPartitionedCall"conv2d_120/StatefulPartitionedCall2H
"conv2d_121/StatefulPartitionedCall"conv2d_121/StatefulPartitionedCall2H
"conv2d_122/StatefulPartitionedCall"conv2d_122/StatefulPartitionedCall2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2F
!dense_122/StatefulPartitionedCall!dense_122/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_41
?
f
J__inference_activation_202_layer_call_and_return_conditional_losses_346407

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
?0
?
S__inference_batch_normalization_163_layer_call_and_return_conditional_losses_346616

inputs
assignmovingavg_346591
assignmovingavg_1_346597)
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
loc:@AssignMovingAvg/346591*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_346591*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/346591*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/346591*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_346591AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/346591*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/346597*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_346597*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/346597*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/346597*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_346597AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/346597*
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
?
K
/__inference_activation_200_layer_call_fn_346098

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
J__inference_activation_200_layer_call_and_return_conditional_losses_3447822
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
?
e
F__inference_dropout_40_layer_call_and_return_conditional_losses_346674

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
?
?
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_344940

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
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_344553

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
?	
?
F__inference_conv2d_120_layer_call_and_return_conditional_losses_346079

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
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_344584

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
i
M__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_344369

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
?D
?
__inference__traced_save_346850
file_prefix0
,savev2_conv2d_120_kernel_read_readvariableop.
*savev2_conv2d_120_bias_read_readvariableop<
8savev2_batch_normalization_160_gamma_read_readvariableop;
7savev2_batch_normalization_160_beta_read_readvariableopB
>savev2_batch_normalization_160_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_160_moving_variance_read_readvariableop0
,savev2_conv2d_121_kernel_read_readvariableop.
*savev2_conv2d_121_bias_read_readvariableop<
8savev2_batch_normalization_161_gamma_read_readvariableop;
7savev2_batch_normalization_161_beta_read_readvariableopB
>savev2_batch_normalization_161_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_161_moving_variance_read_readvariableop0
,savev2_conv2d_122_kernel_read_readvariableop.
*savev2_conv2d_122_bias_read_readvariableop<
8savev2_batch_normalization_162_gamma_read_readvariableop;
7savev2_batch_normalization_162_beta_read_readvariableopB
>savev2_batch_normalization_162_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_162_moving_variance_read_readvariableop/
+savev2_dense_120_kernel_read_readvariableop-
)savev2_dense_120_bias_read_readvariableop<
8savev2_batch_normalization_163_gamma_read_readvariableop;
7savev2_batch_normalization_163_beta_read_readvariableopB
>savev2_batch_normalization_163_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_163_moving_variance_read_readvariableop/
+savev2_dense_121_kernel_read_readvariableop-
)savev2_dense_121_bias_read_readvariableop/
+savev2_dense_122_kernel_read_readvariableop-
)savev2_dense_122_bias_read_readvariableop$
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_120_kernel_read_readvariableop*savev2_conv2d_120_bias_read_readvariableop8savev2_batch_normalization_160_gamma_read_readvariableop7savev2_batch_normalization_160_beta_read_readvariableop>savev2_batch_normalization_160_moving_mean_read_readvariableopBsavev2_batch_normalization_160_moving_variance_read_readvariableop,savev2_conv2d_121_kernel_read_readvariableop*savev2_conv2d_121_bias_read_readvariableop8savev2_batch_normalization_161_gamma_read_readvariableop7savev2_batch_normalization_161_beta_read_readvariableop>savev2_batch_normalization_161_moving_mean_read_readvariableopBsavev2_batch_normalization_161_moving_variance_read_readvariableop,savev2_conv2d_122_kernel_read_readvariableop*savev2_conv2d_122_bias_read_readvariableop8savev2_batch_normalization_162_gamma_read_readvariableop7savev2_batch_normalization_162_beta_read_readvariableop>savev2_batch_normalization_162_moving_mean_read_readvariableopBsavev2_batch_normalization_162_moving_variance_read_readvariableop+savev2_dense_120_kernel_read_readvariableop)savev2_dense_120_bias_read_readvariableop8savev2_batch_normalization_163_gamma_read_readvariableop7savev2_batch_normalization_163_beta_read_readvariableop>savev2_batch_normalization_163_moving_mean_read_readvariableopBsavev2_batch_normalization_163_moving_variance_read_readvariableop+savev2_dense_121_kernel_read_readvariableop)savev2_dense_121_bias_read_readvariableop+savev2_dense_122_kernel_read_readvariableop)savev2_dense_122_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
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
K
/__inference_activation_203_layer_call_fn_346580

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
J__inference_activation_203_layer_call_and_return_conditional_losses_3451352
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
?
i
M__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_344601

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
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_345053

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
8__inference_batch_normalization_163_layer_call_fn_346649

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
S__inference_batch_normalization_163_layer_call_and_return_conditional_losses_3447032
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
?
e
F__inference_dropout_40_layer_call_and_return_conditional_losses_345190

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
?
?
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_346118

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
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_346200

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
?
K
/__inference_activation_201_layer_call_fn_346255

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
J__inference_activation_201_layer_call_and_return_conditional_losses_3448952
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
?
f
J__inference_activation_201_layer_call_and_return_conditional_losses_346250

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
G
+__inference_dropout_40_layer_call_fn_346689

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
F__inference_dropout_40_layer_call_and_return_conditional_losses_3451952
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
?
?
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_344809

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
?
b
F__inference_flatten_40_layer_call_and_return_conditional_losses_346546

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
?	
?
F__inference_conv2d_122_layer_call_and_return_conditional_losses_344987

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
)__inference_model_40_layer_call_fn_346008

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
D__inference_model_40_layer_call_and_return_conditional_losses_3454372
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
F__inference_conv2d_121_layer_call_and_return_conditional_losses_346236

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
8__inference_batch_normalization_161_layer_call_fn_346306

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
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_3449222
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
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_345035

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
?
?
8__inference_batch_normalization_162_layer_call_fn_346476

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
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_3445842
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
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_344922

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
J__inference_activation_203_layer_call_and_return_conditional_losses_346575

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
8__inference_batch_normalization_162_layer_call_fn_346527

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
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_3450352
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
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_346339

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
?
)__inference_model_40_layer_call_fn_345637
input_41
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
StatefulPartitionedCallStatefulPartitionedCallinput_41unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
D__inference_model_40_layer_call_and_return_conditional_losses_3455782
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
input_41
?
?
+__inference_conv2d_120_layer_call_fn_346088

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
F__inference_conv2d_120_layer_call_and_return_conditional_losses_3447612
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
?
?
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_344437

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
?
?
S__inference_batch_normalization_163_layer_call_and_return_conditional_losses_346636

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
?
?
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_346514

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

*__inference_dense_121_layer_call_fn_346708

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
E__inference_dense_121_layer_call_and_return_conditional_losses_3452182
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
?`
?

D__inference_model_40_layer_call_and_return_conditional_losses_345437

inputs
conv2d_120_345360
conv2d_120_345362"
batch_normalization_160_345366"
batch_normalization_160_345368"
batch_normalization_160_345370"
batch_normalization_160_345372
conv2d_121_345376
conv2d_121_345378"
batch_normalization_161_345382"
batch_normalization_161_345384"
batch_normalization_161_345386"
batch_normalization_161_345388
conv2d_122_345392
conv2d_122_345394"
batch_normalization_162_345398"
batch_normalization_162_345400"
batch_normalization_162_345402"
batch_normalization_162_345404
dense_120_345409
dense_120_345411"
batch_normalization_163_345415"
batch_normalization_163_345417"
batch_normalization_163_345419"
batch_normalization_163_345421
dense_121_345425
dense_121_345427
dense_122_345431
dense_122_345433
identity??/batch_normalization_160/StatefulPartitionedCall?/batch_normalization_161/StatefulPartitionedCall?/batch_normalization_162/StatefulPartitionedCall?/batch_normalization_163/StatefulPartitionedCall?"conv2d_120/StatefulPartitionedCall?"conv2d_121/StatefulPartitionedCall?"conv2d_122/StatefulPartitionedCall?!dense_120/StatefulPartitionedCall?!dense_121/StatefulPartitionedCall?!dense_122/StatefulPartitionedCall?"dropout_40/StatefulPartitionedCall?
"conv2d_120/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_120_345360conv2d_120_345362*
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
F__inference_conv2d_120_layer_call_and_return_conditional_losses_3447612$
"conv2d_120/StatefulPartitionedCall?
activation_200/PartitionedCallPartitionedCall+conv2d_120/StatefulPartitionedCall:output:0*
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
J__inference_activation_200_layer_call_and_return_conditional_losses_3447822 
activation_200/PartitionedCall?
/batch_normalization_160/StatefulPartitionedCallStatefulPartitionedCall'activation_200/PartitionedCall:output:0batch_normalization_160_345366batch_normalization_160_345368batch_normalization_160_345370batch_normalization_160_345372*
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
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_34480921
/batch_normalization_160/StatefulPartitionedCall?
!max_pooling2d_120/PartitionedCallPartitionedCall8batch_normalization_160/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_3443692#
!max_pooling2d_120/PartitionedCall?
"conv2d_121/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_120/PartitionedCall:output:0conv2d_121_345376conv2d_121_345378*
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
F__inference_conv2d_121_layer_call_and_return_conditional_losses_3448742$
"conv2d_121/StatefulPartitionedCall?
activation_201/PartitionedCallPartitionedCall+conv2d_121/StatefulPartitionedCall:output:0*
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
J__inference_activation_201_layer_call_and_return_conditional_losses_3448952 
activation_201/PartitionedCall?
/batch_normalization_161/StatefulPartitionedCallStatefulPartitionedCall'activation_201/PartitionedCall:output:0batch_normalization_161_345382batch_normalization_161_345384batch_normalization_161_345386batch_normalization_161_345388*
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
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_34492221
/batch_normalization_161/StatefulPartitionedCall?
!max_pooling2d_121/PartitionedCallPartitionedCall8batch_normalization_161/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_3444852#
!max_pooling2d_121/PartitionedCall?
"conv2d_122/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_121/PartitionedCall:output:0conv2d_122_345392conv2d_122_345394*
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
F__inference_conv2d_122_layer_call_and_return_conditional_losses_3449872$
"conv2d_122/StatefulPartitionedCall?
activation_202/PartitionedCallPartitionedCall+conv2d_122/StatefulPartitionedCall:output:0*
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
J__inference_activation_202_layer_call_and_return_conditional_losses_3450082 
activation_202/PartitionedCall?
/batch_normalization_162/StatefulPartitionedCallStatefulPartitionedCall'activation_202/PartitionedCall:output:0batch_normalization_162_345398batch_normalization_162_345400batch_normalization_162_345402batch_normalization_162_345404*
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
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_34503521
/batch_normalization_162/StatefulPartitionedCall?
!max_pooling2d_122/PartitionedCallPartitionedCall8batch_normalization_162/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_3446012#
!max_pooling2d_122/PartitionedCall?
flatten_40/PartitionedCallPartitionedCall*max_pooling2d_122/PartitionedCall:output:0*
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
F__inference_flatten_40_layer_call_and_return_conditional_losses_3450962
flatten_40/PartitionedCall?
!dense_120/StatefulPartitionedCallStatefulPartitionedCall#flatten_40/PartitionedCall:output:0dense_120_345409dense_120_345411*
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
E__inference_dense_120_layer_call_and_return_conditional_losses_3451142#
!dense_120/StatefulPartitionedCall?
activation_203/PartitionedCallPartitionedCall*dense_120/StatefulPartitionedCall:output:0*
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
J__inference_activation_203_layer_call_and_return_conditional_losses_3451352 
activation_203/PartitionedCall?
/batch_normalization_163/StatefulPartitionedCallStatefulPartitionedCall'activation_203/PartitionedCall:output:0batch_normalization_163_345415batch_normalization_163_345417batch_normalization_163_345419batch_normalization_163_345421*
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
S__inference_batch_normalization_163_layer_call_and_return_conditional_losses_34470321
/batch_normalization_163/StatefulPartitionedCall?
"dropout_40/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_163/StatefulPartitionedCall:output:0*
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
F__inference_dropout_40_layer_call_and_return_conditional_losses_3451902$
"dropout_40/StatefulPartitionedCall?
!dense_121/StatefulPartitionedCallStatefulPartitionedCall+dropout_40/StatefulPartitionedCall:output:0dense_121_345425dense_121_345427*
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
E__inference_dense_121_layer_call_and_return_conditional_losses_3452182#
!dense_121/StatefulPartitionedCall?
activation_204/PartitionedCallPartitionedCall*dense_121/StatefulPartitionedCall:output:0*
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
J__inference_activation_204_layer_call_and_return_conditional_losses_3452392 
activation_204/PartitionedCall?
!dense_122/StatefulPartitionedCallStatefulPartitionedCall'activation_204/PartitionedCall:output:0dense_122_345431dense_122_345433*
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
E__inference_dense_122_layer_call_and_return_conditional_losses_3452572#
!dense_122/StatefulPartitionedCall?
IdentityIdentity*dense_122/StatefulPartitionedCall:output:00^batch_normalization_160/StatefulPartitionedCall0^batch_normalization_161/StatefulPartitionedCall0^batch_normalization_162/StatefulPartitionedCall0^batch_normalization_163/StatefulPartitionedCall#^conv2d_120/StatefulPartitionedCall#^conv2d_121/StatefulPartitionedCall#^conv2d_122/StatefulPartitionedCall"^dense_120/StatefulPartitionedCall"^dense_121/StatefulPartitionedCall"^dense_122/StatefulPartitionedCall#^dropout_40/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2b
/batch_normalization_160/StatefulPartitionedCall/batch_normalization_160/StatefulPartitionedCall2b
/batch_normalization_161/StatefulPartitionedCall/batch_normalization_161/StatefulPartitionedCall2b
/batch_normalization_162/StatefulPartitionedCall/batch_normalization_162/StatefulPartitionedCall2b
/batch_normalization_163/StatefulPartitionedCall/batch_normalization_163/StatefulPartitionedCall2H
"conv2d_120/StatefulPartitionedCall"conv2d_120/StatefulPartitionedCall2H
"conv2d_121/StatefulPartitionedCall"conv2d_121/StatefulPartitionedCall2H
"conv2d_122/StatefulPartitionedCall"conv2d_122/StatefulPartitionedCall2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2F
!dense_122/StatefulPartitionedCall!dense_122/StatefulPartitionedCall2H
"dropout_40/StatefulPartitionedCall"dropout_40/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
+__inference_conv2d_122_layer_call_fn_346402

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
F__inference_conv2d_122_layer_call_and_return_conditional_losses_3449872
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
?
?
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_346275

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
input_419
serving_default_input_41:0?????????  =
	dense_1220
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
_tf_keras_networkߗ{"class_name": "Functional", "name": "model_40", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_40", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_41"}, "name": "input_41", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_120", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_120", "inbound_nodes": [[["input_41", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_200", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_200", "inbound_nodes": [[["conv2d_120", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_160", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_160", "inbound_nodes": [[["activation_200", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_120", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_120", "inbound_nodes": [[["batch_normalization_160", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_121", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_121", "inbound_nodes": [[["max_pooling2d_120", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_201", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_201", "inbound_nodes": [[["conv2d_121", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_161", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_161", "inbound_nodes": [[["activation_201", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_121", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_121", "inbound_nodes": [[["batch_normalization_161", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_122", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_122", "inbound_nodes": [[["max_pooling2d_121", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_202", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_202", "inbound_nodes": [[["conv2d_122", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_162", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_162", "inbound_nodes": [[["activation_202", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_122", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_122", "inbound_nodes": [[["batch_normalization_162", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_40", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_40", "inbound_nodes": [[["max_pooling2d_122", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_120", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_120", "inbound_nodes": [[["flatten_40", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_203", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_203", "inbound_nodes": [[["dense_120", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_163", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_163", "inbound_nodes": [[["activation_203", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_40", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_40", "inbound_nodes": [[["batch_normalization_163", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_121", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_121", "inbound_nodes": [[["dropout_40", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_204", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_204", "inbound_nodes": [[["dense_121", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_122", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_122", "inbound_nodes": [[["activation_204", 0, 0, {}]]]}], "input_layers": [["input_41", 0, 0]], "output_layers": [["dense_122", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_40", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_41"}, "name": "input_41", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_120", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_120", "inbound_nodes": [[["input_41", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_200", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_200", "inbound_nodes": [[["conv2d_120", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_160", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_160", "inbound_nodes": [[["activation_200", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_120", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_120", "inbound_nodes": [[["batch_normalization_160", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_121", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_121", "inbound_nodes": [[["max_pooling2d_120", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_201", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_201", "inbound_nodes": [[["conv2d_121", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_161", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_161", "inbound_nodes": [[["activation_201", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_121", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_121", "inbound_nodes": [[["batch_normalization_161", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_122", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_122", "inbound_nodes": [[["max_pooling2d_121", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_202", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_202", "inbound_nodes": [[["conv2d_122", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_162", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_162", "inbound_nodes": [[["activation_202", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_122", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_122", "inbound_nodes": [[["batch_normalization_162", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_40", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_40", "inbound_nodes": [[["max_pooling2d_122", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_120", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_120", "inbound_nodes": [[["flatten_40", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_203", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_203", "inbound_nodes": [[["dense_120", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_163", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_163", "inbound_nodes": [[["activation_203", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_40", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_40", "inbound_nodes": [[["batch_normalization_163", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_121", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_121", "inbound_nodes": [[["dropout_40", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_204", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_204", "inbound_nodes": [[["dense_121", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_122", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_122", "inbound_nodes": [[["activation_204", 0, 0, {}]]]}], "input_layers": [["input_41", 0, 0]], "output_layers": [["dense_122", 0, 0]]}}, "training_config": {"loss": "mean_absolute_percentage_error", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 4.999999873689376e-06, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
#_self_saveable_object_factories"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_41", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_41"}}
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
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_120", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_120", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
?
#%_self_saveable_object_factories
&regularization_losses
'trainable_variables
(	variables
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_200", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_200", "trainable": true, "dtype": "float32", "activation": "relu"}}
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
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_160", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_160", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 16]}}
?
#4_self_saveable_object_factories
5regularization_losses
6trainable_variables
7	variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_120", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_120", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
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
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_121", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_121", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 16]}}
?
#@_self_saveable_object_factories
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_201", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_201", "trainable": true, "dtype": "float32", "activation": "relu"}}
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
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_161", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_161", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
?
#O_self_saveable_object_factories
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_121", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_121", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
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
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_122", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_122", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 32]}}
?
#[_self_saveable_object_factories
\regularization_losses
]trainable_variables
^	variables
_	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_202", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_202", "trainable": true, "dtype": "float32", "activation": "relu"}}
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
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_162", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_162", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
?
#j_self_saveable_object_factories
kregularization_losses
ltrainable_variables
m	variables
n	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_122", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_122", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
#o_self_saveable_object_factories
pregularization_losses
qtrainable_variables
r	variables
s	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_40", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_40", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
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
_tf_keras_layer?{"class_name": "Dense", "name": "dense_120", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_120", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?
#{_self_saveable_object_factories
|regularization_losses
}trainable_variables
~	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_203", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_203", "trainable": true, "dtype": "float32", "activation": "relu"}}
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
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_163", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_163", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
?
$?_self_saveable_object_factories
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_40", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_40", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
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
_tf_keras_layer?{"class_name": "Dense", "name": "dense_121", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_121", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
?
$?_self_saveable_object_factories
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_204", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_204", "trainable": true, "dtype": "float32", "activation": "relu"}}
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
_tf_keras_layer?{"class_name": "Dense", "name": "dense_122", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_122", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4]}}
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
+:)2conv2d_120/kernel
:2conv2d_120/bias
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
+:)2batch_normalization_160/gamma
*:(2batch_normalization_160/beta
3:1 (2#batch_normalization_160/moving_mean
7:5 (2'batch_normalization_160/moving_variance
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
+:) 2conv2d_121/kernel
: 2conv2d_121/bias
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
+:) 2batch_normalization_161/gamma
*:( 2batch_normalization_161/beta
3:1  (2#batch_normalization_161/moving_mean
7:5  (2'batch_normalization_161/moving_variance
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
+:) @2conv2d_122/kernel
:@2conv2d_122/bias
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
+:)@2batch_normalization_162/gamma
*:(@2batch_normalization_162/beta
3:1@ (2#batch_normalization_162/moving_mean
7:5@ (2'batch_normalization_162/moving_variance
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
#:!	?2dense_120/kernel
:2dense_120/bias
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
+:)2batch_normalization_163/gamma
*:(2batch_normalization_163/beta
3:1 (2#batch_normalization_163/moving_mean
7:5 (2'batch_normalization_163/moving_variance
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
": 2dense_121/kernel
:2dense_121/bias
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
": 2dense_122/kernel
:2dense_122/bias
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
)__inference_model_40_layer_call_fn_345637
)__inference_model_40_layer_call_fn_346008
)__inference_model_40_layer_call_fn_345496
)__inference_model_40_layer_call_fn_346069?
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
D__inference_model_40_layer_call_and_return_conditional_losses_345947
D__inference_model_40_layer_call_and_return_conditional_losses_345838
D__inference_model_40_layer_call_and_return_conditional_losses_345274
D__inference_model_40_layer_call_and_return_conditional_losses_345354?
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
!__inference__wrapped_model_344259?
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
input_41?????????  
?2?
+__inference_conv2d_120_layer_call_fn_346088?
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
F__inference_conv2d_120_layer_call_and_return_conditional_losses_346079?
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
/__inference_activation_200_layer_call_fn_346098?
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
J__inference_activation_200_layer_call_and_return_conditional_losses_346093?
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
8__inference_batch_normalization_160_layer_call_fn_346213
8__inference_batch_normalization_160_layer_call_fn_346149
8__inference_batch_normalization_160_layer_call_fn_346162
8__inference_batch_normalization_160_layer_call_fn_346226?
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
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_346182
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_346136
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_346118
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_346200?
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
2__inference_max_pooling2d_120_layer_call_fn_344375?
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
M__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_344369?
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
+__inference_conv2d_121_layer_call_fn_346245?
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
F__inference_conv2d_121_layer_call_and_return_conditional_losses_346236?
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
/__inference_activation_201_layer_call_fn_346255?
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
J__inference_activation_201_layer_call_and_return_conditional_losses_346250?
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
8__inference_batch_normalization_161_layer_call_fn_346370
8__inference_batch_normalization_161_layer_call_fn_346319
8__inference_batch_normalization_161_layer_call_fn_346383
8__inference_batch_normalization_161_layer_call_fn_346306?
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
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_346357
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_346339
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_346275
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_346293?
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
2__inference_max_pooling2d_121_layer_call_fn_344491?
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
M__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_344485?
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
+__inference_conv2d_122_layer_call_fn_346402?
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
F__inference_conv2d_122_layer_call_and_return_conditional_losses_346393?
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
/__inference_activation_202_layer_call_fn_346412?
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
J__inference_activation_202_layer_call_and_return_conditional_losses_346407?
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
8__inference_batch_normalization_162_layer_call_fn_346463
8__inference_batch_normalization_162_layer_call_fn_346527
8__inference_batch_normalization_162_layer_call_fn_346540
8__inference_batch_normalization_162_layer_call_fn_346476?
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
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_346496
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_346450
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_346514
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_346432?
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
2__inference_max_pooling2d_122_layer_call_fn_344607?
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
M__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_344601?
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
+__inference_flatten_40_layer_call_fn_346551?
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
F__inference_flatten_40_layer_call_and_return_conditional_losses_346546?
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
*__inference_dense_120_layer_call_fn_346570?
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
E__inference_dense_120_layer_call_and_return_conditional_losses_346561?
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
/__inference_activation_203_layer_call_fn_346580?
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
J__inference_activation_203_layer_call_and_return_conditional_losses_346575?
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
8__inference_batch_normalization_163_layer_call_fn_346662
8__inference_batch_normalization_163_layer_call_fn_346649?
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
S__inference_batch_normalization_163_layer_call_and_return_conditional_losses_346636
S__inference_batch_normalization_163_layer_call_and_return_conditional_losses_346616?
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
+__inference_dropout_40_layer_call_fn_346689
+__inference_dropout_40_layer_call_fn_346684?
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
F__inference_dropout_40_layer_call_and_return_conditional_losses_346679
F__inference_dropout_40_layer_call_and_return_conditional_losses_346674?
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
*__inference_dense_121_layer_call_fn_346708?
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
E__inference_dense_121_layer_call_and_return_conditional_losses_346699?
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
/__inference_activation_204_layer_call_fn_346718?
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
J__inference_activation_204_layer_call_and_return_conditional_losses_346713?
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
*__inference_dense_122_layer_call_fn_346737?
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
E__inference_dense_122_layer_call_and_return_conditional_losses_346728?
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
$__inference_signature_wrapper_345700input_41"?
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
!__inference__wrapped_model_344259?$+,-.9:FGHITUabcdtu????????9?6
/?,
*?'
input_41?????????  
? "5?2
0
	dense_122#? 
	dense_122??????????
J__inference_activation_200_layer_call_and_return_conditional_losses_346093h7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????  
? ?
/__inference_activation_200_layer_call_fn_346098[7?4
-?*
(?%
inputs?????????  
? " ??????????  ?
J__inference_activation_201_layer_call_and_return_conditional_losses_346250h7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
/__inference_activation_201_layer_call_fn_346255[7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
J__inference_activation_202_layer_call_and_return_conditional_losses_346407h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
/__inference_activation_202_layer_call_fn_346412[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
J__inference_activation_203_layer_call_and_return_conditional_losses_346575X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
/__inference_activation_203_layer_call_fn_346580K/?,
%?"
 ?
inputs?????????
? "???????????
J__inference_activation_204_layer_call_and_return_conditional_losses_346713X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
/__inference_activation_204_layer_call_fn_346718K/?,
%?"
 ?
inputs?????????
? "???????????
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_346118?+,-.M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_346136?+,-.M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_346182r+,-.;?8
1?.
(?%
inputs?????????  
p
? "-?*
#? 
0?????????  
? ?
S__inference_batch_normalization_160_layer_call_and_return_conditional_losses_346200r+,-.;?8
1?.
(?%
inputs?????????  
p 
? "-?*
#? 
0?????????  
? ?
8__inference_batch_normalization_160_layer_call_fn_346149?+,-.M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
8__inference_batch_normalization_160_layer_call_fn_346162?+,-.M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
8__inference_batch_normalization_160_layer_call_fn_346213e+,-.;?8
1?.
(?%
inputs?????????  
p
? " ??????????  ?
8__inference_batch_normalization_160_layer_call_fn_346226e+,-.;?8
1?.
(?%
inputs?????????  
p 
? " ??????????  ?
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_346275rFGHI;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_346293rFGHI;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_346339?FGHIM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
S__inference_batch_normalization_161_layer_call_and_return_conditional_losses_346357?FGHIM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
8__inference_batch_normalization_161_layer_call_fn_346306eFGHI;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
8__inference_batch_normalization_161_layer_call_fn_346319eFGHI;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
8__inference_batch_normalization_161_layer_call_fn_346370?FGHIM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
8__inference_batch_normalization_161_layer_call_fn_346383?FGHIM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_346432?abcdM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_346450?abcdM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_346496rabcd;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
S__inference_batch_normalization_162_layer_call_and_return_conditional_losses_346514rabcd;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
8__inference_batch_normalization_162_layer_call_fn_346463?abcdM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
8__inference_batch_normalization_162_layer_call_fn_346476?abcdM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
8__inference_batch_normalization_162_layer_call_fn_346527eabcd;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
8__inference_batch_normalization_162_layer_call_fn_346540eabcd;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
S__inference_batch_normalization_163_layer_call_and_return_conditional_losses_346616f????3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
S__inference_batch_normalization_163_layer_call_and_return_conditional_losses_346636f????3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
8__inference_batch_normalization_163_layer_call_fn_346649Y????3?0
)?&
 ?
inputs?????????
p
? "???????????
8__inference_batch_normalization_163_layer_call_fn_346662Y????3?0
)?&
 ?
inputs?????????
p 
? "???????????
F__inference_conv2d_120_layer_call_and_return_conditional_losses_346079l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????  
? ?
+__inference_conv2d_120_layer_call_fn_346088_7?4
-?*
(?%
inputs?????????  
? " ??????????  ?
F__inference_conv2d_121_layer_call_and_return_conditional_losses_346236l9:7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0????????? 
? ?
+__inference_conv2d_121_layer_call_fn_346245_9:7?4
-?*
(?%
inputs?????????
? " ?????????? ?
F__inference_conv2d_122_layer_call_and_return_conditional_losses_346393lTU7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
+__inference_conv2d_122_layer_call_fn_346402_TU7?4
-?*
(?%
inputs????????? 
? " ??????????@?
E__inference_dense_120_layer_call_and_return_conditional_losses_346561]tu0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ~
*__inference_dense_120_layer_call_fn_346570Ptu0?-
&?#
!?
inputs??????????
? "???????????
E__inference_dense_121_layer_call_and_return_conditional_losses_346699^??/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? 
*__inference_dense_121_layer_call_fn_346708Q??/?,
%?"
 ?
inputs?????????
? "???????????
E__inference_dense_122_layer_call_and_return_conditional_losses_346728^??/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? 
*__inference_dense_122_layer_call_fn_346737Q??/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_dropout_40_layer_call_and_return_conditional_losses_346674\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
F__inference_dropout_40_layer_call_and_return_conditional_losses_346679\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ~
+__inference_dropout_40_layer_call_fn_346684O3?0
)?&
 ?
inputs?????????
p
? "??????????~
+__inference_dropout_40_layer_call_fn_346689O3?0
)?&
 ?
inputs?????????
p 
? "???????????
F__inference_flatten_40_layer_call_and_return_conditional_losses_346546a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????
? ?
+__inference_flatten_40_layer_call_fn_346551T7?4
-?*
(?%
inputs?????????@
? "????????????
M__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_344369?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_120_layer_call_fn_344375?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_344485?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_121_layer_call_fn_344491?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_344601?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_122_layer_call_fn_344607?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
D__inference_model_40_layer_call_and_return_conditional_losses_345274?$+,-.9:FGHITUabcdtu????????A?>
7?4
*?'
input_41?????????  
p

 
? "%?"
?
0?????????
? ?
D__inference_model_40_layer_call_and_return_conditional_losses_345354?$+,-.9:FGHITUabcdtu????????A?>
7?4
*?'
input_41?????????  
p 

 
? "%?"
?
0?????????
? ?
D__inference_model_40_layer_call_and_return_conditional_losses_345838?$+,-.9:FGHITUabcdtu??????????<
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
D__inference_model_40_layer_call_and_return_conditional_losses_345947?$+,-.9:FGHITUabcdtu??????????<
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
)__inference_model_40_layer_call_fn_345496?$+,-.9:FGHITUabcdtu????????A?>
7?4
*?'
input_41?????????  
p

 
? "???????????
)__inference_model_40_layer_call_fn_345637?$+,-.9:FGHITUabcdtu????????A?>
7?4
*?'
input_41?????????  
p 

 
? "???????????
)__inference_model_40_layer_call_fn_346008?$+,-.9:FGHITUabcdtu??????????<
5?2
(?%
inputs?????????  
p

 
? "???????????
)__inference_model_40_layer_call_fn_346069?$+,-.9:FGHITUabcdtu??????????<
5?2
(?%
inputs?????????  
p 

 
? "???????????
$__inference_signature_wrapper_345700?$+,-.9:FGHITUabcdtu????????E?B
? 
;?8
6
input_41*?'
input_41?????????  "5?2
0
	dense_122#? 
	dense_122?????????