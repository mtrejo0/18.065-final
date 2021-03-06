??
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
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
?
conv2d_135/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_135/kernel

%conv2d_135/kernel/Read/ReadVariableOpReadVariableOpconv2d_135/kernel*&
_output_shapes
:*
dtype0
v
conv2d_135/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_135/bias
o
#conv2d_135/bias/Read/ReadVariableOpReadVariableOpconv2d_135/bias*
_output_shapes
:*
dtype0
?
batch_normalization_180/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_180/gamma
?
1batch_normalization_180/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_180/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_180/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_180/beta
?
0batch_normalization_180/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_180/beta*
_output_shapes
:*
dtype0
?
#batch_normalization_180/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_180/moving_mean
?
7batch_normalization_180/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_180/moving_mean*
_output_shapes
:*
dtype0
?
'batch_normalization_180/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_180/moving_variance
?
;batch_normalization_180/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_180/moving_variance*
_output_shapes
:*
dtype0
?
conv2d_136/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_136/kernel

%conv2d_136/kernel/Read/ReadVariableOpReadVariableOpconv2d_136/kernel*&
_output_shapes
: *
dtype0
v
conv2d_136/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_136/bias
o
#conv2d_136/bias/Read/ReadVariableOpReadVariableOpconv2d_136/bias*
_output_shapes
: *
dtype0
?
batch_normalization_181/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namebatch_normalization_181/gamma
?
1batch_normalization_181/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_181/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_181/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_181/beta
?
0batch_normalization_181/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_181/beta*
_output_shapes
: *
dtype0
?
#batch_normalization_181/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#batch_normalization_181/moving_mean
?
7batch_normalization_181/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_181/moving_mean*
_output_shapes
: *
dtype0
?
'batch_normalization_181/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'batch_normalization_181/moving_variance
?
;batch_normalization_181/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_181/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_137/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_137/kernel

%conv2d_137/kernel/Read/ReadVariableOpReadVariableOpconv2d_137/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_137/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_137/bias
o
#conv2d_137/bias/Read/ReadVariableOpReadVariableOpconv2d_137/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_182/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namebatch_normalization_182/gamma
?
1batch_normalization_182/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_182/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_182/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_182/beta
?
0batch_normalization_182/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_182/beta*
_output_shapes
:@*
dtype0
?
#batch_normalization_182/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization_182/moving_mean
?
7batch_normalization_182/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_182/moving_mean*
_output_shapes
:@*
dtype0
?
'batch_normalization_182/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'batch_normalization_182/moving_variance
?
;batch_normalization_182/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_182/moving_variance*
_output_shapes
:@*
dtype0
}
dense_135/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*!
shared_namedense_135/kernel
v
$dense_135/kernel/Read/ReadVariableOpReadVariableOpdense_135/kernel*
_output_shapes
:	?*
dtype0
t
dense_135/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_135/bias
m
"dense_135/bias/Read/ReadVariableOpReadVariableOpdense_135/bias*
_output_shapes
:*
dtype0
?
batch_normalization_183/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_183/gamma
?
1batch_normalization_183/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_183/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_183/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_183/beta
?
0batch_normalization_183/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_183/beta*
_output_shapes
:*
dtype0
?
#batch_normalization_183/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_183/moving_mean
?
7batch_normalization_183/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_183/moving_mean*
_output_shapes
:*
dtype0
?
'batch_normalization_183/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_183/moving_variance
?
;batch_normalization_183/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_183/moving_variance*
_output_shapes
:*
dtype0
|
dense_136/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_136/kernel
u
$dense_136/kernel/Read/ReadVariableOpReadVariableOpdense_136/kernel*
_output_shapes

:*
dtype0
t
dense_136/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_136/bias
m
"dense_136/bias/Read/ReadVariableOpReadVariableOpdense_136/bias*
_output_shapes
:*
dtype0
|
dense_137/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_137/kernel
u
$dense_137/kernel/Read/ReadVariableOpReadVariableOpdense_137/kernel*
_output_shapes

:*
dtype0
t
dense_137/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_137/bias
m
"dense_137/bias/Read/ReadVariableOpReadVariableOpdense_137/bias*
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
?
Adam/conv2d_135/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_135/kernel/m
?
,Adam/conv2d_135/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_135/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_135/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_135/bias/m
}
*Adam/conv2d_135/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_135/bias/m*
_output_shapes
:*
dtype0
?
$Adam/batch_normalization_180/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_180/gamma/m
?
8Adam/batch_normalization_180/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_180/gamma/m*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_180/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_180/beta/m
?
7Adam/batch_normalization_180/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_180/beta/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_136/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_136/kernel/m
?
,Adam/conv2d_136/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_136/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_136/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_136/bias/m
}
*Adam/conv2d_136/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_136/bias/m*
_output_shapes
: *
dtype0
?
$Adam/batch_normalization_181/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_181/gamma/m
?
8Adam/batch_normalization_181/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_181/gamma/m*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_181/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_181/beta/m
?
7Adam/batch_normalization_181/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_181/beta/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_137/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_137/kernel/m
?
,Adam/conv2d_137/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_137/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_137/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_137/bias/m
}
*Adam/conv2d_137/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_137/bias/m*
_output_shapes
:@*
dtype0
?
$Adam/batch_normalization_182/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/batch_normalization_182/gamma/m
?
8Adam/batch_normalization_182/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_182/gamma/m*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_182/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_182/beta/m
?
7Adam/batch_normalization_182/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_182/beta/m*
_output_shapes
:@*
dtype0
?
Adam/dense_135/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*(
shared_nameAdam/dense_135/kernel/m
?
+Adam/dense_135/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_135/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/dense_135/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_135/bias/m
{
)Adam/dense_135/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_135/bias/m*
_output_shapes
:*
dtype0
?
$Adam/batch_normalization_183/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_183/gamma/m
?
8Adam/batch_normalization_183/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_183/gamma/m*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_183/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_183/beta/m
?
7Adam/batch_normalization_183/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_183/beta/m*
_output_shapes
:*
dtype0
?
Adam/dense_136/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_136/kernel/m
?
+Adam/dense_136/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_136/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_136/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_136/bias/m
{
)Adam/dense_136/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_136/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_137/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_137/kernel/m
?
+Adam/dense_137/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_137/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_137/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_137/bias/m
{
)Adam/dense_137/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_137/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_135/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_135/kernel/v
?
,Adam/conv2d_135/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_135/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_135/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_135/bias/v
}
*Adam/conv2d_135/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_135/bias/v*
_output_shapes
:*
dtype0
?
$Adam/batch_normalization_180/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_180/gamma/v
?
8Adam/batch_normalization_180/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_180/gamma/v*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_180/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_180/beta/v
?
7Adam/batch_normalization_180/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_180/beta/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_136/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_136/kernel/v
?
,Adam/conv2d_136/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_136/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_136/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_136/bias/v
}
*Adam/conv2d_136/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_136/bias/v*
_output_shapes
: *
dtype0
?
$Adam/batch_normalization_181/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_181/gamma/v
?
8Adam/batch_normalization_181/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_181/gamma/v*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_181/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_181/beta/v
?
7Adam/batch_normalization_181/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_181/beta/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_137/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_137/kernel/v
?
,Adam/conv2d_137/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_137/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_137/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_137/bias/v
}
*Adam/conv2d_137/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_137/bias/v*
_output_shapes
:@*
dtype0
?
$Adam/batch_normalization_182/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/batch_normalization_182/gamma/v
?
8Adam/batch_normalization_182/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_182/gamma/v*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_182/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_182/beta/v
?
7Adam/batch_normalization_182/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_182/beta/v*
_output_shapes
:@*
dtype0
?
Adam/dense_135/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*(
shared_nameAdam/dense_135/kernel/v
?
+Adam/dense_135/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_135/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dense_135/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_135/bias/v
{
)Adam/dense_135/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_135/bias/v*
_output_shapes
:*
dtype0
?
$Adam/batch_normalization_183/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_183/gamma/v
?
8Adam/batch_normalization_183/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_183/gamma/v*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_183/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_183/beta/v
?
7Adam/batch_normalization_183/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_183/beta/v*
_output_shapes
:*
dtype0
?
Adam/dense_136/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_136/kernel/v
?
+Adam/dense_136/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_136/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_136/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_136/bias/v
{
)Adam/dense_136/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_136/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_137/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_137/kernel/v
?
+Adam/dense_137/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_137/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_137/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_137/bias/v
{
)Adam/dense_137/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_137/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
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
regularization_losses
trainable_variables
	variables
	keras_api

signatures
 
h

kernel
bias
regularization_losses
trainable_variables
 	variables
!	keras_api
R
"regularization_losses
#trainable_variables
$	variables
%	keras_api
?
&axis
	'gamma
(beta
)moving_mean
*moving_variance
+regularization_losses
,trainable_variables
-	variables
.	keras_api
R
/regularization_losses
0trainable_variables
1	variables
2	keras_api
h

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
?
=axis
	>gamma
?beta
@moving_mean
Amoving_variance
Bregularization_losses
Ctrainable_variables
D	variables
E	keras_api
R
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
h

Jkernel
Kbias
Lregularization_losses
Mtrainable_variables
N	variables
O	keras_api
R
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
?
Taxis
	Ugamma
Vbeta
Wmoving_mean
Xmoving_variance
Yregularization_losses
Ztrainable_variables
[	variables
\	keras_api
R
]regularization_losses
^trainable_variables
_	variables
`	keras_api
R
aregularization_losses
btrainable_variables
c	variables
d	keras_api
h

ekernel
fbias
gregularization_losses
htrainable_variables
i	variables
j	keras_api
R
kregularization_losses
ltrainable_variables
m	variables
n	keras_api
?
oaxis
	pgamma
qbeta
rmoving_mean
smoving_variance
tregularization_losses
utrainable_variables
v	variables
w	keras_api
R
xregularization_losses
ytrainable_variables
z	variables
{	keras_api
j

|kernel
}bias
~regularization_losses
trainable_variables
?	variables
?	keras_api
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
n
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?
	?iter
?beta_1
?beta_2

?decay
?learning_ratem?m?'m?(m?3m?4m?>m??m?Jm?Km?Um?Vm?em?fm?pm?qm?|m?}m?	?m?	?m?v?v?'v?(v?3v?4v?>v??v?Jv?Kv?Uv?Vv?ev?fv?pv?qv?|v?}v?	?v?	?v?
 
?
0
1
'2
(3
34
45
>6
?7
J8
K9
U10
V11
e12
f13
p14
q15
|16
}17
?18
?19
?
0
1
'2
(3
)4
*5
36
47
>8
?9
@10
A11
J12
K13
U14
V15
W16
X17
e18
f19
p20
q21
r22
s23
|24
}25
?26
?27
?
 ?layer_regularization_losses
?metrics
?layer_metrics
regularization_losses
trainable_variables
?layers
	variables
?non_trainable_variables
 
][
VARIABLE_VALUEconv2d_135/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_135/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
 ?layer_regularization_losses
?metrics
?layer_metrics
regularization_losses
trainable_variables
?layers
 	variables
?non_trainable_variables
 
 
 
?
 ?layer_regularization_losses
?metrics
?layer_metrics
"regularization_losses
#trainable_variables
?layers
$	variables
?non_trainable_variables
 
hf
VARIABLE_VALUEbatch_normalization_180/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_180/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_180/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_180/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

'0
(1

'0
(1
)2
*3
?
 ?layer_regularization_losses
?metrics
?layer_metrics
+regularization_losses
,trainable_variables
?layers
-	variables
?non_trainable_variables
 
 
 
?
 ?layer_regularization_losses
?metrics
?layer_metrics
/regularization_losses
0trainable_variables
?layers
1	variables
?non_trainable_variables
][
VARIABLE_VALUEconv2d_136/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_136/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

30
41

30
41
?
 ?layer_regularization_losses
?metrics
?layer_metrics
5regularization_losses
6trainable_variables
?layers
7	variables
?non_trainable_variables
 
 
 
?
 ?layer_regularization_losses
?metrics
?layer_metrics
9regularization_losses
:trainable_variables
?layers
;	variables
?non_trainable_variables
 
hf
VARIABLE_VALUEbatch_normalization_181/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_181/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_181/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_181/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

>0
?1

>0
?1
@2
A3
?
 ?layer_regularization_losses
?metrics
?layer_metrics
Bregularization_losses
Ctrainable_variables
?layers
D	variables
?non_trainable_variables
 
 
 
?
 ?layer_regularization_losses
?metrics
?layer_metrics
Fregularization_losses
Gtrainable_variables
?layers
H	variables
?non_trainable_variables
][
VARIABLE_VALUEconv2d_137/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_137/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

J0
K1

J0
K1
?
 ?layer_regularization_losses
?metrics
?layer_metrics
Lregularization_losses
Mtrainable_variables
?layers
N	variables
?non_trainable_variables
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
 
hf
VARIABLE_VALUEbatch_normalization_182/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_182/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_182/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_182/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

U0
V1

U0
V1
W2
X3
?
 ?layer_regularization_losses
?metrics
?layer_metrics
Yregularization_losses
Ztrainable_variables
?layers
[	variables
?non_trainable_variables
 
 
 
?
 ?layer_regularization_losses
?metrics
?layer_metrics
]regularization_losses
^trainable_variables
?layers
_	variables
?non_trainable_variables
 
 
 
?
 ?layer_regularization_losses
?metrics
?layer_metrics
aregularization_losses
btrainable_variables
?layers
c	variables
?non_trainable_variables
\Z
VARIABLE_VALUEdense_135/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_135/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

e0
f1

e0
f1
?
 ?layer_regularization_losses
?metrics
?layer_metrics
gregularization_losses
htrainable_variables
?layers
i	variables
?non_trainable_variables
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
hf
VARIABLE_VALUEbatch_normalization_183/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_183/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_183/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_183/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

p0
q1

p0
q1
r2
s3
?
 ?layer_regularization_losses
?metrics
?layer_metrics
tregularization_losses
utrainable_variables
?layers
v	variables
?non_trainable_variables
 
 
 
?
 ?layer_regularization_losses
?metrics
?layer_metrics
xregularization_losses
ytrainable_variables
?layers
z	variables
?non_trainable_variables
\Z
VARIABLE_VALUEdense_136/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_136/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

|0
}1

|0
}1
?
 ?layer_regularization_losses
?metrics
?layer_metrics
~regularization_losses
trainable_variables
?layers
?	variables
?non_trainable_variables
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
VARIABLE_VALUEdense_137/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_137/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
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
?non_trainable_variables
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
 

?0
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
8
)0
*1
@2
A3
W4
X5
r6
s7
 
 
 
 
 
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
)0
*1
 
 
 
 
 
 
 
 
 
 
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
@0
A1
 
 
 
 
 
 
 
 
 
 
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
W0
X1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
r0
s1
 
 
 
 
 
 
 
 
 
 
 
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

?total

?count
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
?~
VARIABLE_VALUEAdam/conv2d_135/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_135/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_180/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_180/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_136/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_136/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_181/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_181/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_137/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_137/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_182/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_182/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_135/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_135/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_183/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_183/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_136/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_136/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_137/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_137/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_135/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_135/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_180/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_180/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_136/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_136/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_181/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_181/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_137/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_137/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_182/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_182/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_135/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_135/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_183/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_183/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_136/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_136/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_137/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_137/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_46Placeholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_46conv2d_135/kernelconv2d_135/biasbatch_normalization_180/gammabatch_normalization_180/beta#batch_normalization_180/moving_mean'batch_normalization_180/moving_varianceconv2d_136/kernelconv2d_136/biasbatch_normalization_181/gammabatch_normalization_181/beta#batch_normalization_181/moving_mean'batch_normalization_181/moving_varianceconv2d_137/kernelconv2d_137/biasbatch_normalization_182/gammabatch_normalization_182/beta#batch_normalization_182/moving_mean'batch_normalization_182/moving_variancedense_135/kerneldense_135/bias'batch_normalization_183/moving_variancebatch_normalization_183/gamma#batch_normalization_183/moving_meanbatch_normalization_183/betadense_136/kerneldense_136/biasdense_137/kerneldense_137/bias*(
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
$__inference_signature_wrapper_381852
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_135/kernel/Read/ReadVariableOp#conv2d_135/bias/Read/ReadVariableOp1batch_normalization_180/gamma/Read/ReadVariableOp0batch_normalization_180/beta/Read/ReadVariableOp7batch_normalization_180/moving_mean/Read/ReadVariableOp;batch_normalization_180/moving_variance/Read/ReadVariableOp%conv2d_136/kernel/Read/ReadVariableOp#conv2d_136/bias/Read/ReadVariableOp1batch_normalization_181/gamma/Read/ReadVariableOp0batch_normalization_181/beta/Read/ReadVariableOp7batch_normalization_181/moving_mean/Read/ReadVariableOp;batch_normalization_181/moving_variance/Read/ReadVariableOp%conv2d_137/kernel/Read/ReadVariableOp#conv2d_137/bias/Read/ReadVariableOp1batch_normalization_182/gamma/Read/ReadVariableOp0batch_normalization_182/beta/Read/ReadVariableOp7batch_normalization_182/moving_mean/Read/ReadVariableOp;batch_normalization_182/moving_variance/Read/ReadVariableOp$dense_135/kernel/Read/ReadVariableOp"dense_135/bias/Read/ReadVariableOp1batch_normalization_183/gamma/Read/ReadVariableOp0batch_normalization_183/beta/Read/ReadVariableOp7batch_normalization_183/moving_mean/Read/ReadVariableOp;batch_normalization_183/moving_variance/Read/ReadVariableOp$dense_136/kernel/Read/ReadVariableOp"dense_136/bias/Read/ReadVariableOp$dense_137/kernel/Read/ReadVariableOp"dense_137/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/conv2d_135/kernel/m/Read/ReadVariableOp*Adam/conv2d_135/bias/m/Read/ReadVariableOp8Adam/batch_normalization_180/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_180/beta/m/Read/ReadVariableOp,Adam/conv2d_136/kernel/m/Read/ReadVariableOp*Adam/conv2d_136/bias/m/Read/ReadVariableOp8Adam/batch_normalization_181/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_181/beta/m/Read/ReadVariableOp,Adam/conv2d_137/kernel/m/Read/ReadVariableOp*Adam/conv2d_137/bias/m/Read/ReadVariableOp8Adam/batch_normalization_182/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_182/beta/m/Read/ReadVariableOp+Adam/dense_135/kernel/m/Read/ReadVariableOp)Adam/dense_135/bias/m/Read/ReadVariableOp8Adam/batch_normalization_183/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_183/beta/m/Read/ReadVariableOp+Adam/dense_136/kernel/m/Read/ReadVariableOp)Adam/dense_136/bias/m/Read/ReadVariableOp+Adam/dense_137/kernel/m/Read/ReadVariableOp)Adam/dense_137/bias/m/Read/ReadVariableOp,Adam/conv2d_135/kernel/v/Read/ReadVariableOp*Adam/conv2d_135/bias/v/Read/ReadVariableOp8Adam/batch_normalization_180/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_180/beta/v/Read/ReadVariableOp,Adam/conv2d_136/kernel/v/Read/ReadVariableOp*Adam/conv2d_136/bias/v/Read/ReadVariableOp8Adam/batch_normalization_181/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_181/beta/v/Read/ReadVariableOp,Adam/conv2d_137/kernel/v/Read/ReadVariableOp*Adam/conv2d_137/bias/v/Read/ReadVariableOp8Adam/batch_normalization_182/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_182/beta/v/Read/ReadVariableOp+Adam/dense_135/kernel/v/Read/ReadVariableOp)Adam/dense_135/bias/v/Read/ReadVariableOp8Adam/batch_normalization_183/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_183/beta/v/Read/ReadVariableOp+Adam/dense_136/kernel/v/Read/ReadVariableOp)Adam/dense_136/bias/v/Read/ReadVariableOp+Adam/dense_137/kernel/v/Read/ReadVariableOp)Adam/dense_137/bias/v/Read/ReadVariableOpConst*X
TinQ
O2M	*
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
__inference__traced_save_383137
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_135/kernelconv2d_135/biasbatch_normalization_180/gammabatch_normalization_180/beta#batch_normalization_180/moving_mean'batch_normalization_180/moving_varianceconv2d_136/kernelconv2d_136/biasbatch_normalization_181/gammabatch_normalization_181/beta#batch_normalization_181/moving_mean'batch_normalization_181/moving_varianceconv2d_137/kernelconv2d_137/biasbatch_normalization_182/gammabatch_normalization_182/beta#batch_normalization_182/moving_mean'batch_normalization_182/moving_variancedense_135/kerneldense_135/biasbatch_normalization_183/gammabatch_normalization_183/beta#batch_normalization_183/moving_mean'batch_normalization_183/moving_variancedense_136/kerneldense_136/biasdense_137/kerneldense_137/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv2d_135/kernel/mAdam/conv2d_135/bias/m$Adam/batch_normalization_180/gamma/m#Adam/batch_normalization_180/beta/mAdam/conv2d_136/kernel/mAdam/conv2d_136/bias/m$Adam/batch_normalization_181/gamma/m#Adam/batch_normalization_181/beta/mAdam/conv2d_137/kernel/mAdam/conv2d_137/bias/m$Adam/batch_normalization_182/gamma/m#Adam/batch_normalization_182/beta/mAdam/dense_135/kernel/mAdam/dense_135/bias/m$Adam/batch_normalization_183/gamma/m#Adam/batch_normalization_183/beta/mAdam/dense_136/kernel/mAdam/dense_136/bias/mAdam/dense_137/kernel/mAdam/dense_137/bias/mAdam/conv2d_135/kernel/vAdam/conv2d_135/bias/v$Adam/batch_normalization_180/gamma/v#Adam/batch_normalization_180/beta/vAdam/conv2d_136/kernel/vAdam/conv2d_136/bias/v$Adam/batch_normalization_181/gamma/v#Adam/batch_normalization_181/beta/vAdam/conv2d_137/kernel/vAdam/conv2d_137/bias/v$Adam/batch_normalization_182/gamma/v#Adam/batch_normalization_182/beta/vAdam/dense_135/kernel/vAdam/dense_135/bias/v$Adam/batch_normalization_183/gamma/v#Adam/batch_normalization_183/beta/vAdam/dense_136/kernel/vAdam/dense_136/bias/vAdam/dense_137/kernel/vAdam/dense_137/bias/v*W
TinP
N2L*
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
"__inference__traced_restore_383372??
?
?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_382352

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
J__inference_activation_225_layer_call_and_return_conditional_losses_382245

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
?
?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_380612

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
?
?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_382288

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
/__inference_activation_228_layer_call_fn_382732

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
J__inference_activation_228_layer_call_and_return_conditional_losses_3812792
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
?
f
J__inference_activation_227_layer_call_and_return_conditional_losses_381152

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
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_380581

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
8__inference_batch_normalization_180_layer_call_fn_382301

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
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_3809532
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
?
?
8__inference_batch_normalization_180_layer_call_fn_382365

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
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_3804652
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
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_382270

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
i
M__inference_max_pooling2d_137_layer_call_and_return_conditional_losses_380745

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
F__inference_dropout_45_layer_call_and_return_conditional_losses_382831

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
?
?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_382509

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
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_380465

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
?
E__inference_dense_136_layer_call_and_return_conditional_losses_381362

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
?`
?

D__inference_model_45_layer_call_and_return_conditional_losses_381418
input_46
conv2d_135_380916
conv2d_135_380918"
batch_normalization_180_380998"
batch_normalization_180_381000"
batch_normalization_180_381002"
batch_normalization_180_381004
conv2d_136_381029
conv2d_136_381031"
batch_normalization_181_381111"
batch_normalization_181_381113"
batch_normalization_181_381115"
batch_normalization_181_381117
conv2d_137_381142
conv2d_137_381144"
batch_normalization_182_381224"
batch_normalization_182_381226"
batch_normalization_182_381228"
batch_normalization_182_381230
dense_135_381269
dense_135_381271"
batch_normalization_183_381313"
batch_normalization_183_381315"
batch_normalization_183_381317"
batch_normalization_183_381319
dense_136_381373
dense_136_381375
dense_137_381412
dense_137_381414
identity??/batch_normalization_180/StatefulPartitionedCall?/batch_normalization_181/StatefulPartitionedCall?/batch_normalization_182/StatefulPartitionedCall?/batch_normalization_183/StatefulPartitionedCall?"conv2d_135/StatefulPartitionedCall?"conv2d_136/StatefulPartitionedCall?"conv2d_137/StatefulPartitionedCall?!dense_135/StatefulPartitionedCall?!dense_136/StatefulPartitionedCall?!dense_137/StatefulPartitionedCall?"dropout_45/StatefulPartitionedCall?
"conv2d_135/StatefulPartitionedCallStatefulPartitionedCallinput_46conv2d_135_380916conv2d_135_380918*
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
F__inference_conv2d_135_layer_call_and_return_conditional_losses_3809052$
"conv2d_135/StatefulPartitionedCall?
activation_225/PartitionedCallPartitionedCall+conv2d_135/StatefulPartitionedCall:output:0*
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
J__inference_activation_225_layer_call_and_return_conditional_losses_3809262 
activation_225/PartitionedCall?
/batch_normalization_180/StatefulPartitionedCallStatefulPartitionedCall'activation_225/PartitionedCall:output:0batch_normalization_180_380998batch_normalization_180_381000batch_normalization_180_381002batch_normalization_180_381004*
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
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_38095321
/batch_normalization_180/StatefulPartitionedCall?
!max_pooling2d_135/PartitionedCallPartitionedCall8batch_normalization_180/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_135_layer_call_and_return_conditional_losses_3805132#
!max_pooling2d_135/PartitionedCall?
"conv2d_136/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_135/PartitionedCall:output:0conv2d_136_381029conv2d_136_381031*
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
F__inference_conv2d_136_layer_call_and_return_conditional_losses_3810182$
"conv2d_136/StatefulPartitionedCall?
activation_226/PartitionedCallPartitionedCall+conv2d_136/StatefulPartitionedCall:output:0*
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
J__inference_activation_226_layer_call_and_return_conditional_losses_3810392 
activation_226/PartitionedCall?
/batch_normalization_181/StatefulPartitionedCallStatefulPartitionedCall'activation_226/PartitionedCall:output:0batch_normalization_181_381111batch_normalization_181_381113batch_normalization_181_381115batch_normalization_181_381117*
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
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_38106621
/batch_normalization_181/StatefulPartitionedCall?
!max_pooling2d_136/PartitionedCallPartitionedCall8batch_normalization_181/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_136_layer_call_and_return_conditional_losses_3806292#
!max_pooling2d_136/PartitionedCall?
"conv2d_137/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_136/PartitionedCall:output:0conv2d_137_381142conv2d_137_381144*
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
F__inference_conv2d_137_layer_call_and_return_conditional_losses_3811312$
"conv2d_137/StatefulPartitionedCall?
activation_227/PartitionedCallPartitionedCall+conv2d_137/StatefulPartitionedCall:output:0*
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
J__inference_activation_227_layer_call_and_return_conditional_losses_3811522 
activation_227/PartitionedCall?
/batch_normalization_182/StatefulPartitionedCallStatefulPartitionedCall'activation_227/PartitionedCall:output:0batch_normalization_182_381224batch_normalization_182_381226batch_normalization_182_381228batch_normalization_182_381230*
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
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_38117921
/batch_normalization_182/StatefulPartitionedCall?
!max_pooling2d_137/PartitionedCallPartitionedCall8batch_normalization_182/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_137_layer_call_and_return_conditional_losses_3807452#
!max_pooling2d_137/PartitionedCall?
flatten_45/PartitionedCallPartitionedCall*max_pooling2d_137/PartitionedCall:output:0*
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
F__inference_flatten_45_layer_call_and_return_conditional_losses_3812402
flatten_45/PartitionedCall?
!dense_135/StatefulPartitionedCallStatefulPartitionedCall#flatten_45/PartitionedCall:output:0dense_135_381269dense_135_381271*
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
E__inference_dense_135_layer_call_and_return_conditional_losses_3812582#
!dense_135/StatefulPartitionedCall?
activation_228/PartitionedCallPartitionedCall*dense_135/StatefulPartitionedCall:output:0*
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
J__inference_activation_228_layer_call_and_return_conditional_losses_3812792 
activation_228/PartitionedCall?
/batch_normalization_183/StatefulPartitionedCallStatefulPartitionedCall'activation_228/PartitionedCall:output:0batch_normalization_183_381313batch_normalization_183_381315batch_normalization_183_381317batch_normalization_183_381319*
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
S__inference_batch_normalization_183_layer_call_and_return_conditional_losses_38084721
/batch_normalization_183/StatefulPartitionedCall?
"dropout_45/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_183/StatefulPartitionedCall:output:0*
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
F__inference_dropout_45_layer_call_and_return_conditional_losses_3813342$
"dropout_45/StatefulPartitionedCall?
!dense_136/StatefulPartitionedCallStatefulPartitionedCall+dropout_45/StatefulPartitionedCall:output:0dense_136_381373dense_136_381375*
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
E__inference_dense_136_layer_call_and_return_conditional_losses_3813622#
!dense_136/StatefulPartitionedCall?
activation_229/PartitionedCallPartitionedCall*dense_136/StatefulPartitionedCall:output:0*
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
J__inference_activation_229_layer_call_and_return_conditional_losses_3813832 
activation_229/PartitionedCall?
!dense_137/StatefulPartitionedCallStatefulPartitionedCall'activation_229/PartitionedCall:output:0dense_137_381412dense_137_381414*
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
E__inference_dense_137_layer_call_and_return_conditional_losses_3814012#
!dense_137/StatefulPartitionedCall?
IdentityIdentity*dense_137/StatefulPartitionedCall:output:00^batch_normalization_180/StatefulPartitionedCall0^batch_normalization_181/StatefulPartitionedCall0^batch_normalization_182/StatefulPartitionedCall0^batch_normalization_183/StatefulPartitionedCall#^conv2d_135/StatefulPartitionedCall#^conv2d_136/StatefulPartitionedCall#^conv2d_137/StatefulPartitionedCall"^dense_135/StatefulPartitionedCall"^dense_136/StatefulPartitionedCall"^dense_137/StatefulPartitionedCall#^dropout_45/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2b
/batch_normalization_180/StatefulPartitionedCall/batch_normalization_180/StatefulPartitionedCall2b
/batch_normalization_181/StatefulPartitionedCall/batch_normalization_181/StatefulPartitionedCall2b
/batch_normalization_182/StatefulPartitionedCall/batch_normalization_182/StatefulPartitionedCall2b
/batch_normalization_183/StatefulPartitionedCall/batch_normalization_183/StatefulPartitionedCall2H
"conv2d_135/StatefulPartitionedCall"conv2d_135/StatefulPartitionedCall2H
"conv2d_136/StatefulPartitionedCall"conv2d_136/StatefulPartitionedCall2H
"conv2d_137/StatefulPartitionedCall"conv2d_137/StatefulPartitionedCall2F
!dense_135/StatefulPartitionedCall!dense_135/StatefulPartitionedCall2F
!dense_136/StatefulPartitionedCall!dense_136/StatefulPartitionedCall2F
!dense_137/StatefulPartitionedCall!dense_137/StatefulPartitionedCall2H
"dropout_45/StatefulPartitionedCall"dropout_45/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_46
?
?
8__inference_batch_normalization_182_layer_call_fn_382679

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
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_3806972
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
?
f
J__inference_activation_227_layer_call_and_return_conditional_losses_382559

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
f
J__inference_activation_228_layer_call_and_return_conditional_losses_382727

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
?`
?

D__inference_model_45_layer_call_and_return_conditional_losses_381581

inputs
conv2d_135_381504
conv2d_135_381506"
batch_normalization_180_381510"
batch_normalization_180_381512"
batch_normalization_180_381514"
batch_normalization_180_381516
conv2d_136_381520
conv2d_136_381522"
batch_normalization_181_381526"
batch_normalization_181_381528"
batch_normalization_181_381530"
batch_normalization_181_381532
conv2d_137_381536
conv2d_137_381538"
batch_normalization_182_381542"
batch_normalization_182_381544"
batch_normalization_182_381546"
batch_normalization_182_381548
dense_135_381553
dense_135_381555"
batch_normalization_183_381559"
batch_normalization_183_381561"
batch_normalization_183_381563"
batch_normalization_183_381565
dense_136_381569
dense_136_381571
dense_137_381575
dense_137_381577
identity??/batch_normalization_180/StatefulPartitionedCall?/batch_normalization_181/StatefulPartitionedCall?/batch_normalization_182/StatefulPartitionedCall?/batch_normalization_183/StatefulPartitionedCall?"conv2d_135/StatefulPartitionedCall?"conv2d_136/StatefulPartitionedCall?"conv2d_137/StatefulPartitionedCall?!dense_135/StatefulPartitionedCall?!dense_136/StatefulPartitionedCall?!dense_137/StatefulPartitionedCall?"dropout_45/StatefulPartitionedCall?
"conv2d_135/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_135_381504conv2d_135_381506*
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
F__inference_conv2d_135_layer_call_and_return_conditional_losses_3809052$
"conv2d_135/StatefulPartitionedCall?
activation_225/PartitionedCallPartitionedCall+conv2d_135/StatefulPartitionedCall:output:0*
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
J__inference_activation_225_layer_call_and_return_conditional_losses_3809262 
activation_225/PartitionedCall?
/batch_normalization_180/StatefulPartitionedCallStatefulPartitionedCall'activation_225/PartitionedCall:output:0batch_normalization_180_381510batch_normalization_180_381512batch_normalization_180_381514batch_normalization_180_381516*
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
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_38095321
/batch_normalization_180/StatefulPartitionedCall?
!max_pooling2d_135/PartitionedCallPartitionedCall8batch_normalization_180/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_135_layer_call_and_return_conditional_losses_3805132#
!max_pooling2d_135/PartitionedCall?
"conv2d_136/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_135/PartitionedCall:output:0conv2d_136_381520conv2d_136_381522*
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
F__inference_conv2d_136_layer_call_and_return_conditional_losses_3810182$
"conv2d_136/StatefulPartitionedCall?
activation_226/PartitionedCallPartitionedCall+conv2d_136/StatefulPartitionedCall:output:0*
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
J__inference_activation_226_layer_call_and_return_conditional_losses_3810392 
activation_226/PartitionedCall?
/batch_normalization_181/StatefulPartitionedCallStatefulPartitionedCall'activation_226/PartitionedCall:output:0batch_normalization_181_381526batch_normalization_181_381528batch_normalization_181_381530batch_normalization_181_381532*
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
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_38106621
/batch_normalization_181/StatefulPartitionedCall?
!max_pooling2d_136/PartitionedCallPartitionedCall8batch_normalization_181/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_136_layer_call_and_return_conditional_losses_3806292#
!max_pooling2d_136/PartitionedCall?
"conv2d_137/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_136/PartitionedCall:output:0conv2d_137_381536conv2d_137_381538*
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
F__inference_conv2d_137_layer_call_and_return_conditional_losses_3811312$
"conv2d_137/StatefulPartitionedCall?
activation_227/PartitionedCallPartitionedCall+conv2d_137/StatefulPartitionedCall:output:0*
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
J__inference_activation_227_layer_call_and_return_conditional_losses_3811522 
activation_227/PartitionedCall?
/batch_normalization_182/StatefulPartitionedCallStatefulPartitionedCall'activation_227/PartitionedCall:output:0batch_normalization_182_381542batch_normalization_182_381544batch_normalization_182_381546batch_normalization_182_381548*
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
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_38117921
/batch_normalization_182/StatefulPartitionedCall?
!max_pooling2d_137/PartitionedCallPartitionedCall8batch_normalization_182/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_137_layer_call_and_return_conditional_losses_3807452#
!max_pooling2d_137/PartitionedCall?
flatten_45/PartitionedCallPartitionedCall*max_pooling2d_137/PartitionedCall:output:0*
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
F__inference_flatten_45_layer_call_and_return_conditional_losses_3812402
flatten_45/PartitionedCall?
!dense_135/StatefulPartitionedCallStatefulPartitionedCall#flatten_45/PartitionedCall:output:0dense_135_381553dense_135_381555*
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
E__inference_dense_135_layer_call_and_return_conditional_losses_3812582#
!dense_135/StatefulPartitionedCall?
activation_228/PartitionedCallPartitionedCall*dense_135/StatefulPartitionedCall:output:0*
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
J__inference_activation_228_layer_call_and_return_conditional_losses_3812792 
activation_228/PartitionedCall?
/batch_normalization_183/StatefulPartitionedCallStatefulPartitionedCall'activation_228/PartitionedCall:output:0batch_normalization_183_381559batch_normalization_183_381561batch_normalization_183_381563batch_normalization_183_381565*
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
S__inference_batch_normalization_183_layer_call_and_return_conditional_losses_38084721
/batch_normalization_183/StatefulPartitionedCall?
"dropout_45/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_183/StatefulPartitionedCall:output:0*
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
F__inference_dropout_45_layer_call_and_return_conditional_losses_3813342$
"dropout_45/StatefulPartitionedCall?
!dense_136/StatefulPartitionedCallStatefulPartitionedCall+dropout_45/StatefulPartitionedCall:output:0dense_136_381569dense_136_381571*
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
E__inference_dense_136_layer_call_and_return_conditional_losses_3813622#
!dense_136/StatefulPartitionedCall?
activation_229/PartitionedCallPartitionedCall*dense_136/StatefulPartitionedCall:output:0*
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
J__inference_activation_229_layer_call_and_return_conditional_losses_3813832 
activation_229/PartitionedCall?
!dense_137/StatefulPartitionedCallStatefulPartitionedCall'activation_229/PartitionedCall:output:0dense_137_381575dense_137_381577*
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
E__inference_dense_137_layer_call_and_return_conditional_losses_3814012#
!dense_137/StatefulPartitionedCall?
IdentityIdentity*dense_137/StatefulPartitionedCall:output:00^batch_normalization_180/StatefulPartitionedCall0^batch_normalization_181/StatefulPartitionedCall0^batch_normalization_182/StatefulPartitionedCall0^batch_normalization_183/StatefulPartitionedCall#^conv2d_135/StatefulPartitionedCall#^conv2d_136/StatefulPartitionedCall#^conv2d_137/StatefulPartitionedCall"^dense_135/StatefulPartitionedCall"^dense_136/StatefulPartitionedCall"^dense_137/StatefulPartitionedCall#^dropout_45/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2b
/batch_normalization_180/StatefulPartitionedCall/batch_normalization_180/StatefulPartitionedCall2b
/batch_normalization_181/StatefulPartitionedCall/batch_normalization_181/StatefulPartitionedCall2b
/batch_normalization_182/StatefulPartitionedCall/batch_normalization_182/StatefulPartitionedCall2b
/batch_normalization_183/StatefulPartitionedCall/batch_normalization_183/StatefulPartitionedCall2H
"conv2d_135/StatefulPartitionedCall"conv2d_135/StatefulPartitionedCall2H
"conv2d_136/StatefulPartitionedCall"conv2d_136/StatefulPartitionedCall2H
"conv2d_137/StatefulPartitionedCall"conv2d_137/StatefulPartitionedCall2F
!dense_135/StatefulPartitionedCall!dense_135/StatefulPartitionedCall2F
!dense_136/StatefulPartitionedCall!dense_136/StatefulPartitionedCall2F
!dense_137/StatefulPartitionedCall!dense_137/StatefulPartitionedCall2H
"dropout_45/StatefulPartitionedCall"dropout_45/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
E__inference_dense_135_layer_call_and_return_conditional_losses_381258

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
d
+__inference_dropout_45_layer_call_fn_382836

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
F__inference_dropout_45_layer_call_and_return_conditional_losses_3813342
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
ô
?
!__inference__wrapped_model_380403
input_466
2model_45_conv2d_135_conv2d_readvariableop_resource7
3model_45_conv2d_135_biasadd_readvariableop_resource<
8model_45_batch_normalization_180_readvariableop_resource>
:model_45_batch_normalization_180_readvariableop_1_resourceM
Imodel_45_batch_normalization_180_fusedbatchnormv3_readvariableop_resourceO
Kmodel_45_batch_normalization_180_fusedbatchnormv3_readvariableop_1_resource6
2model_45_conv2d_136_conv2d_readvariableop_resource7
3model_45_conv2d_136_biasadd_readvariableop_resource<
8model_45_batch_normalization_181_readvariableop_resource>
:model_45_batch_normalization_181_readvariableop_1_resourceM
Imodel_45_batch_normalization_181_fusedbatchnormv3_readvariableop_resourceO
Kmodel_45_batch_normalization_181_fusedbatchnormv3_readvariableop_1_resource6
2model_45_conv2d_137_conv2d_readvariableop_resource7
3model_45_conv2d_137_biasadd_readvariableop_resource<
8model_45_batch_normalization_182_readvariableop_resource>
:model_45_batch_normalization_182_readvariableop_1_resourceM
Imodel_45_batch_normalization_182_fusedbatchnormv3_readvariableop_resourceO
Kmodel_45_batch_normalization_182_fusedbatchnormv3_readvariableop_1_resource5
1model_45_dense_135_matmul_readvariableop_resource6
2model_45_dense_135_biasadd_readvariableop_resourceF
Bmodel_45_batch_normalization_183_batchnorm_readvariableop_resourceJ
Fmodel_45_batch_normalization_183_batchnorm_mul_readvariableop_resourceH
Dmodel_45_batch_normalization_183_batchnorm_readvariableop_1_resourceH
Dmodel_45_batch_normalization_183_batchnorm_readvariableop_2_resource5
1model_45_dense_136_matmul_readvariableop_resource6
2model_45_dense_136_biasadd_readvariableop_resource5
1model_45_dense_137_matmul_readvariableop_resource6
2model_45_dense_137_biasadd_readvariableop_resource
identity??@model_45/batch_normalization_180/FusedBatchNormV3/ReadVariableOp?Bmodel_45/batch_normalization_180/FusedBatchNormV3/ReadVariableOp_1?/model_45/batch_normalization_180/ReadVariableOp?1model_45/batch_normalization_180/ReadVariableOp_1?@model_45/batch_normalization_181/FusedBatchNormV3/ReadVariableOp?Bmodel_45/batch_normalization_181/FusedBatchNormV3/ReadVariableOp_1?/model_45/batch_normalization_181/ReadVariableOp?1model_45/batch_normalization_181/ReadVariableOp_1?@model_45/batch_normalization_182/FusedBatchNormV3/ReadVariableOp?Bmodel_45/batch_normalization_182/FusedBatchNormV3/ReadVariableOp_1?/model_45/batch_normalization_182/ReadVariableOp?1model_45/batch_normalization_182/ReadVariableOp_1?9model_45/batch_normalization_183/batchnorm/ReadVariableOp?;model_45/batch_normalization_183/batchnorm/ReadVariableOp_1?;model_45/batch_normalization_183/batchnorm/ReadVariableOp_2?=model_45/batch_normalization_183/batchnorm/mul/ReadVariableOp?*model_45/conv2d_135/BiasAdd/ReadVariableOp?)model_45/conv2d_135/Conv2D/ReadVariableOp?*model_45/conv2d_136/BiasAdd/ReadVariableOp?)model_45/conv2d_136/Conv2D/ReadVariableOp?*model_45/conv2d_137/BiasAdd/ReadVariableOp?)model_45/conv2d_137/Conv2D/ReadVariableOp?)model_45/dense_135/BiasAdd/ReadVariableOp?(model_45/dense_135/MatMul/ReadVariableOp?)model_45/dense_136/BiasAdd/ReadVariableOp?(model_45/dense_136/MatMul/ReadVariableOp?)model_45/dense_137/BiasAdd/ReadVariableOp?(model_45/dense_137/MatMul/ReadVariableOp?
)model_45/conv2d_135/Conv2D/ReadVariableOpReadVariableOp2model_45_conv2d_135_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02+
)model_45/conv2d_135/Conv2D/ReadVariableOp?
model_45/conv2d_135/Conv2DConv2Dinput_461model_45/conv2d_135/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2
model_45/conv2d_135/Conv2D?
*model_45/conv2d_135/BiasAdd/ReadVariableOpReadVariableOp3model_45_conv2d_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_45/conv2d_135/BiasAdd/ReadVariableOp?
model_45/conv2d_135/BiasAddBiasAdd#model_45/conv2d_135/Conv2D:output:02model_45/conv2d_135/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  2
model_45/conv2d_135/BiasAdd?
model_45/activation_225/ReluRelu$model_45/conv2d_135/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  2
model_45/activation_225/Relu?
/model_45/batch_normalization_180/ReadVariableOpReadVariableOp8model_45_batch_normalization_180_readvariableop_resource*
_output_shapes
:*
dtype021
/model_45/batch_normalization_180/ReadVariableOp?
1model_45/batch_normalization_180/ReadVariableOp_1ReadVariableOp:model_45_batch_normalization_180_readvariableop_1_resource*
_output_shapes
:*
dtype023
1model_45/batch_normalization_180/ReadVariableOp_1?
@model_45/batch_normalization_180/FusedBatchNormV3/ReadVariableOpReadVariableOpImodel_45_batch_normalization_180_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02B
@model_45/batch_normalization_180/FusedBatchNormV3/ReadVariableOp?
Bmodel_45/batch_normalization_180/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKmodel_45_batch_normalization_180_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02D
Bmodel_45/batch_normalization_180/FusedBatchNormV3/ReadVariableOp_1?
1model_45/batch_normalization_180/FusedBatchNormV3FusedBatchNormV3*model_45/activation_225/Relu:activations:07model_45/batch_normalization_180/ReadVariableOp:value:09model_45/batch_normalization_180/ReadVariableOp_1:value:0Hmodel_45/batch_normalization_180/FusedBatchNormV3/ReadVariableOp:value:0Jmodel_45/batch_normalization_180/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
is_training( 23
1model_45/batch_normalization_180/FusedBatchNormV3?
"model_45/max_pooling2d_135/MaxPoolMaxPool5model_45/batch_normalization_180/FusedBatchNormV3:y:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2$
"model_45/max_pooling2d_135/MaxPool?
)model_45/conv2d_136/Conv2D/ReadVariableOpReadVariableOp2model_45_conv2d_136_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02+
)model_45/conv2d_136/Conv2D/ReadVariableOp?
model_45/conv2d_136/Conv2DConv2D+model_45/max_pooling2d_135/MaxPool:output:01model_45/conv2d_136/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
model_45/conv2d_136/Conv2D?
*model_45/conv2d_136/BiasAdd/ReadVariableOpReadVariableOp3model_45_conv2d_136_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_45/conv2d_136/BiasAdd/ReadVariableOp?
model_45/conv2d_136/BiasAddBiasAdd#model_45/conv2d_136/Conv2D:output:02model_45/conv2d_136/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
model_45/conv2d_136/BiasAdd?
model_45/activation_226/ReluRelu$model_45/conv2d_136/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
model_45/activation_226/Relu?
/model_45/batch_normalization_181/ReadVariableOpReadVariableOp8model_45_batch_normalization_181_readvariableop_resource*
_output_shapes
: *
dtype021
/model_45/batch_normalization_181/ReadVariableOp?
1model_45/batch_normalization_181/ReadVariableOp_1ReadVariableOp:model_45_batch_normalization_181_readvariableop_1_resource*
_output_shapes
: *
dtype023
1model_45/batch_normalization_181/ReadVariableOp_1?
@model_45/batch_normalization_181/FusedBatchNormV3/ReadVariableOpReadVariableOpImodel_45_batch_normalization_181_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02B
@model_45/batch_normalization_181/FusedBatchNormV3/ReadVariableOp?
Bmodel_45/batch_normalization_181/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKmodel_45_batch_normalization_181_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02D
Bmodel_45/batch_normalization_181/FusedBatchNormV3/ReadVariableOp_1?
1model_45/batch_normalization_181/FusedBatchNormV3FusedBatchNormV3*model_45/activation_226/Relu:activations:07model_45/batch_normalization_181/ReadVariableOp:value:09model_45/batch_normalization_181/ReadVariableOp_1:value:0Hmodel_45/batch_normalization_181/FusedBatchNormV3/ReadVariableOp:value:0Jmodel_45/batch_normalization_181/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 23
1model_45/batch_normalization_181/FusedBatchNormV3?
"model_45/max_pooling2d_136/MaxPoolMaxPool5model_45/batch_normalization_181/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2$
"model_45/max_pooling2d_136/MaxPool?
)model_45/conv2d_137/Conv2D/ReadVariableOpReadVariableOp2model_45_conv2d_137_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02+
)model_45/conv2d_137/Conv2D/ReadVariableOp?
model_45/conv2d_137/Conv2DConv2D+model_45/max_pooling2d_136/MaxPool:output:01model_45/conv2d_137/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
model_45/conv2d_137/Conv2D?
*model_45/conv2d_137/BiasAdd/ReadVariableOpReadVariableOp3model_45_conv2d_137_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model_45/conv2d_137/BiasAdd/ReadVariableOp?
model_45/conv2d_137/BiasAddBiasAdd#model_45/conv2d_137/Conv2D:output:02model_45/conv2d_137/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
model_45/conv2d_137/BiasAdd?
model_45/activation_227/ReluRelu$model_45/conv2d_137/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
model_45/activation_227/Relu?
/model_45/batch_normalization_182/ReadVariableOpReadVariableOp8model_45_batch_normalization_182_readvariableop_resource*
_output_shapes
:@*
dtype021
/model_45/batch_normalization_182/ReadVariableOp?
1model_45/batch_normalization_182/ReadVariableOp_1ReadVariableOp:model_45_batch_normalization_182_readvariableop_1_resource*
_output_shapes
:@*
dtype023
1model_45/batch_normalization_182/ReadVariableOp_1?
@model_45/batch_normalization_182/FusedBatchNormV3/ReadVariableOpReadVariableOpImodel_45_batch_normalization_182_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02B
@model_45/batch_normalization_182/FusedBatchNormV3/ReadVariableOp?
Bmodel_45/batch_normalization_182/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKmodel_45_batch_normalization_182_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02D
Bmodel_45/batch_normalization_182/FusedBatchNormV3/ReadVariableOp_1?
1model_45/batch_normalization_182/FusedBatchNormV3FusedBatchNormV3*model_45/activation_227/Relu:activations:07model_45/batch_normalization_182/ReadVariableOp:value:09model_45/batch_normalization_182/ReadVariableOp_1:value:0Hmodel_45/batch_normalization_182/FusedBatchNormV3/ReadVariableOp:value:0Jmodel_45/batch_normalization_182/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 23
1model_45/batch_normalization_182/FusedBatchNormV3?
"model_45/max_pooling2d_137/MaxPoolMaxPool5model_45/batch_normalization_182/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2$
"model_45/max_pooling2d_137/MaxPool?
model_45/flatten_45/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
model_45/flatten_45/Const?
model_45/flatten_45/ReshapeReshape+model_45/max_pooling2d_137/MaxPool:output:0"model_45/flatten_45/Const:output:0*
T0*(
_output_shapes
:??????????2
model_45/flatten_45/Reshape?
(model_45/dense_135/MatMul/ReadVariableOpReadVariableOp1model_45_dense_135_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(model_45/dense_135/MatMul/ReadVariableOp?
model_45/dense_135/MatMulMatMul$model_45/flatten_45/Reshape:output:00model_45/dense_135/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_45/dense_135/MatMul?
)model_45/dense_135/BiasAdd/ReadVariableOpReadVariableOp2model_45_dense_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_45/dense_135/BiasAdd/ReadVariableOp?
model_45/dense_135/BiasAddBiasAdd#model_45/dense_135/MatMul:product:01model_45/dense_135/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_45/dense_135/BiasAdd?
model_45/activation_228/ReluRelu#model_45/dense_135/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_45/activation_228/Relu?
9model_45/batch_normalization_183/batchnorm/ReadVariableOpReadVariableOpBmodel_45_batch_normalization_183_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02;
9model_45/batch_normalization_183/batchnorm/ReadVariableOp?
0model_45/batch_normalization_183/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:22
0model_45/batch_normalization_183/batchnorm/add/y?
.model_45/batch_normalization_183/batchnorm/addAddV2Amodel_45/batch_normalization_183/batchnorm/ReadVariableOp:value:09model_45/batch_normalization_183/batchnorm/add/y:output:0*
T0*
_output_shapes
:20
.model_45/batch_normalization_183/batchnorm/add?
0model_45/batch_normalization_183/batchnorm/RsqrtRsqrt2model_45/batch_normalization_183/batchnorm/add:z:0*
T0*
_output_shapes
:22
0model_45/batch_normalization_183/batchnorm/Rsqrt?
=model_45/batch_normalization_183/batchnorm/mul/ReadVariableOpReadVariableOpFmodel_45_batch_normalization_183_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02?
=model_45/batch_normalization_183/batchnorm/mul/ReadVariableOp?
.model_45/batch_normalization_183/batchnorm/mulMul4model_45/batch_normalization_183/batchnorm/Rsqrt:y:0Emodel_45/batch_normalization_183/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:20
.model_45/batch_normalization_183/batchnorm/mul?
0model_45/batch_normalization_183/batchnorm/mul_1Mul*model_45/activation_228/Relu:activations:02model_45/batch_normalization_183/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????22
0model_45/batch_normalization_183/batchnorm/mul_1?
;model_45/batch_normalization_183/batchnorm/ReadVariableOp_1ReadVariableOpDmodel_45_batch_normalization_183_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02=
;model_45/batch_normalization_183/batchnorm/ReadVariableOp_1?
0model_45/batch_normalization_183/batchnorm/mul_2MulCmodel_45/batch_normalization_183/batchnorm/ReadVariableOp_1:value:02model_45/batch_normalization_183/batchnorm/mul:z:0*
T0*
_output_shapes
:22
0model_45/batch_normalization_183/batchnorm/mul_2?
;model_45/batch_normalization_183/batchnorm/ReadVariableOp_2ReadVariableOpDmodel_45_batch_normalization_183_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02=
;model_45/batch_normalization_183/batchnorm/ReadVariableOp_2?
.model_45/batch_normalization_183/batchnorm/subSubCmodel_45/batch_normalization_183/batchnorm/ReadVariableOp_2:value:04model_45/batch_normalization_183/batchnorm/mul_2:z:0*
T0*
_output_shapes
:20
.model_45/batch_normalization_183/batchnorm/sub?
0model_45/batch_normalization_183/batchnorm/add_1AddV24model_45/batch_normalization_183/batchnorm/mul_1:z:02model_45/batch_normalization_183/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????22
0model_45/batch_normalization_183/batchnorm/add_1?
model_45/dropout_45/IdentityIdentity4model_45/batch_normalization_183/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????2
model_45/dropout_45/Identity?
(model_45/dense_136/MatMul/ReadVariableOpReadVariableOp1model_45_dense_136_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(model_45/dense_136/MatMul/ReadVariableOp?
model_45/dense_136/MatMulMatMul%model_45/dropout_45/Identity:output:00model_45/dense_136/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_45/dense_136/MatMul?
)model_45/dense_136/BiasAdd/ReadVariableOpReadVariableOp2model_45_dense_136_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_45/dense_136/BiasAdd/ReadVariableOp?
model_45/dense_136/BiasAddBiasAdd#model_45/dense_136/MatMul:product:01model_45/dense_136/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_45/dense_136/BiasAdd?
model_45/activation_229/ReluRelu#model_45/dense_136/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_45/activation_229/Relu?
(model_45/dense_137/MatMul/ReadVariableOpReadVariableOp1model_45_dense_137_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(model_45/dense_137/MatMul/ReadVariableOp?
model_45/dense_137/MatMulMatMul*model_45/activation_229/Relu:activations:00model_45/dense_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_45/dense_137/MatMul?
)model_45/dense_137/BiasAdd/ReadVariableOpReadVariableOp2model_45_dense_137_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_45/dense_137/BiasAdd/ReadVariableOp?
model_45/dense_137/BiasAddBiasAdd#model_45/dense_137/MatMul:product:01model_45/dense_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_45/dense_137/BiasAdd?
IdentityIdentity#model_45/dense_137/BiasAdd:output:0A^model_45/batch_normalization_180/FusedBatchNormV3/ReadVariableOpC^model_45/batch_normalization_180/FusedBatchNormV3/ReadVariableOp_10^model_45/batch_normalization_180/ReadVariableOp2^model_45/batch_normalization_180/ReadVariableOp_1A^model_45/batch_normalization_181/FusedBatchNormV3/ReadVariableOpC^model_45/batch_normalization_181/FusedBatchNormV3/ReadVariableOp_10^model_45/batch_normalization_181/ReadVariableOp2^model_45/batch_normalization_181/ReadVariableOp_1A^model_45/batch_normalization_182/FusedBatchNormV3/ReadVariableOpC^model_45/batch_normalization_182/FusedBatchNormV3/ReadVariableOp_10^model_45/batch_normalization_182/ReadVariableOp2^model_45/batch_normalization_182/ReadVariableOp_1:^model_45/batch_normalization_183/batchnorm/ReadVariableOp<^model_45/batch_normalization_183/batchnorm/ReadVariableOp_1<^model_45/batch_normalization_183/batchnorm/ReadVariableOp_2>^model_45/batch_normalization_183/batchnorm/mul/ReadVariableOp+^model_45/conv2d_135/BiasAdd/ReadVariableOp*^model_45/conv2d_135/Conv2D/ReadVariableOp+^model_45/conv2d_136/BiasAdd/ReadVariableOp*^model_45/conv2d_136/Conv2D/ReadVariableOp+^model_45/conv2d_137/BiasAdd/ReadVariableOp*^model_45/conv2d_137/Conv2D/ReadVariableOp*^model_45/dense_135/BiasAdd/ReadVariableOp)^model_45/dense_135/MatMul/ReadVariableOp*^model_45/dense_136/BiasAdd/ReadVariableOp)^model_45/dense_136/MatMul/ReadVariableOp*^model_45/dense_137/BiasAdd/ReadVariableOp)^model_45/dense_137/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2?
@model_45/batch_normalization_180/FusedBatchNormV3/ReadVariableOp@model_45/batch_normalization_180/FusedBatchNormV3/ReadVariableOp2?
Bmodel_45/batch_normalization_180/FusedBatchNormV3/ReadVariableOp_1Bmodel_45/batch_normalization_180/FusedBatchNormV3/ReadVariableOp_12b
/model_45/batch_normalization_180/ReadVariableOp/model_45/batch_normalization_180/ReadVariableOp2f
1model_45/batch_normalization_180/ReadVariableOp_11model_45/batch_normalization_180/ReadVariableOp_12?
@model_45/batch_normalization_181/FusedBatchNormV3/ReadVariableOp@model_45/batch_normalization_181/FusedBatchNormV3/ReadVariableOp2?
Bmodel_45/batch_normalization_181/FusedBatchNormV3/ReadVariableOp_1Bmodel_45/batch_normalization_181/FusedBatchNormV3/ReadVariableOp_12b
/model_45/batch_normalization_181/ReadVariableOp/model_45/batch_normalization_181/ReadVariableOp2f
1model_45/batch_normalization_181/ReadVariableOp_11model_45/batch_normalization_181/ReadVariableOp_12?
@model_45/batch_normalization_182/FusedBatchNormV3/ReadVariableOp@model_45/batch_normalization_182/FusedBatchNormV3/ReadVariableOp2?
Bmodel_45/batch_normalization_182/FusedBatchNormV3/ReadVariableOp_1Bmodel_45/batch_normalization_182/FusedBatchNormV3/ReadVariableOp_12b
/model_45/batch_normalization_182/ReadVariableOp/model_45/batch_normalization_182/ReadVariableOp2f
1model_45/batch_normalization_182/ReadVariableOp_11model_45/batch_normalization_182/ReadVariableOp_12v
9model_45/batch_normalization_183/batchnorm/ReadVariableOp9model_45/batch_normalization_183/batchnorm/ReadVariableOp2z
;model_45/batch_normalization_183/batchnorm/ReadVariableOp_1;model_45/batch_normalization_183/batchnorm/ReadVariableOp_12z
;model_45/batch_normalization_183/batchnorm/ReadVariableOp_2;model_45/batch_normalization_183/batchnorm/ReadVariableOp_22~
=model_45/batch_normalization_183/batchnorm/mul/ReadVariableOp=model_45/batch_normalization_183/batchnorm/mul/ReadVariableOp2X
*model_45/conv2d_135/BiasAdd/ReadVariableOp*model_45/conv2d_135/BiasAdd/ReadVariableOp2V
)model_45/conv2d_135/Conv2D/ReadVariableOp)model_45/conv2d_135/Conv2D/ReadVariableOp2X
*model_45/conv2d_136/BiasAdd/ReadVariableOp*model_45/conv2d_136/BiasAdd/ReadVariableOp2V
)model_45/conv2d_136/Conv2D/ReadVariableOp)model_45/conv2d_136/Conv2D/ReadVariableOp2X
*model_45/conv2d_137/BiasAdd/ReadVariableOp*model_45/conv2d_137/BiasAdd/ReadVariableOp2V
)model_45/conv2d_137/Conv2D/ReadVariableOp)model_45/conv2d_137/Conv2D/ReadVariableOp2V
)model_45/dense_135/BiasAdd/ReadVariableOp)model_45/dense_135/BiasAdd/ReadVariableOp2T
(model_45/dense_135/MatMul/ReadVariableOp(model_45/dense_135/MatMul/ReadVariableOp2V
)model_45/dense_136/BiasAdd/ReadVariableOp)model_45/dense_136/BiasAdd/ReadVariableOp2T
(model_45/dense_136/MatMul/ReadVariableOp(model_45/dense_136/MatMul/ReadVariableOp2V
)model_45/dense_137/BiasAdd/ReadVariableOp)model_45/dense_137/BiasAdd/ReadVariableOp2T
(model_45/dense_137/MatMul/ReadVariableOp(model_45/dense_137/MatMul/ReadVariableOp:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_46
?	
?
F__inference_conv2d_136_layer_call_and_return_conditional_losses_381018

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
N
2__inference_max_pooling2d_136_layer_call_fn_380635

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
M__inference_max_pooling2d_136_layer_call_and_return_conditional_losses_3806292
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
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_380728

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
?
?
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_380697

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
??
?+
"__inference__traced_restore_383372
file_prefix&
"assignvariableop_conv2d_135_kernel&
"assignvariableop_1_conv2d_135_bias4
0assignvariableop_2_batch_normalization_180_gamma3
/assignvariableop_3_batch_normalization_180_beta:
6assignvariableop_4_batch_normalization_180_moving_mean>
:assignvariableop_5_batch_normalization_180_moving_variance(
$assignvariableop_6_conv2d_136_kernel&
"assignvariableop_7_conv2d_136_bias4
0assignvariableop_8_batch_normalization_181_gamma3
/assignvariableop_9_batch_normalization_181_beta;
7assignvariableop_10_batch_normalization_181_moving_mean?
;assignvariableop_11_batch_normalization_181_moving_variance)
%assignvariableop_12_conv2d_137_kernel'
#assignvariableop_13_conv2d_137_bias5
1assignvariableop_14_batch_normalization_182_gamma4
0assignvariableop_15_batch_normalization_182_beta;
7assignvariableop_16_batch_normalization_182_moving_mean?
;assignvariableop_17_batch_normalization_182_moving_variance(
$assignvariableop_18_dense_135_kernel&
"assignvariableop_19_dense_135_bias5
1assignvariableop_20_batch_normalization_183_gamma4
0assignvariableop_21_batch_normalization_183_beta;
7assignvariableop_22_batch_normalization_183_moving_mean?
;assignvariableop_23_batch_normalization_183_moving_variance(
$assignvariableop_24_dense_136_kernel&
"assignvariableop_25_dense_136_bias(
$assignvariableop_26_dense_137_kernel&
"assignvariableop_27_dense_137_bias!
assignvariableop_28_adam_iter#
assignvariableop_29_adam_beta_1#
assignvariableop_30_adam_beta_2"
assignvariableop_31_adam_decay*
&assignvariableop_32_adam_learning_rate
assignvariableop_33_total
assignvariableop_34_count0
,assignvariableop_35_adam_conv2d_135_kernel_m.
*assignvariableop_36_adam_conv2d_135_bias_m<
8assignvariableop_37_adam_batch_normalization_180_gamma_m;
7assignvariableop_38_adam_batch_normalization_180_beta_m0
,assignvariableop_39_adam_conv2d_136_kernel_m.
*assignvariableop_40_adam_conv2d_136_bias_m<
8assignvariableop_41_adam_batch_normalization_181_gamma_m;
7assignvariableop_42_adam_batch_normalization_181_beta_m0
,assignvariableop_43_adam_conv2d_137_kernel_m.
*assignvariableop_44_adam_conv2d_137_bias_m<
8assignvariableop_45_adam_batch_normalization_182_gamma_m;
7assignvariableop_46_adam_batch_normalization_182_beta_m/
+assignvariableop_47_adam_dense_135_kernel_m-
)assignvariableop_48_adam_dense_135_bias_m<
8assignvariableop_49_adam_batch_normalization_183_gamma_m;
7assignvariableop_50_adam_batch_normalization_183_beta_m/
+assignvariableop_51_adam_dense_136_kernel_m-
)assignvariableop_52_adam_dense_136_bias_m/
+assignvariableop_53_adam_dense_137_kernel_m-
)assignvariableop_54_adam_dense_137_bias_m0
,assignvariableop_55_adam_conv2d_135_kernel_v.
*assignvariableop_56_adam_conv2d_135_bias_v<
8assignvariableop_57_adam_batch_normalization_180_gamma_v;
7assignvariableop_58_adam_batch_normalization_180_beta_v0
,assignvariableop_59_adam_conv2d_136_kernel_v.
*assignvariableop_60_adam_conv2d_136_bias_v<
8assignvariableop_61_adam_batch_normalization_181_gamma_v;
7assignvariableop_62_adam_batch_normalization_181_beta_v0
,assignvariableop_63_adam_conv2d_137_kernel_v.
*assignvariableop_64_adam_conv2d_137_bias_v<
8assignvariableop_65_adam_batch_normalization_182_gamma_v;
7assignvariableop_66_adam_batch_normalization_182_beta_v/
+assignvariableop_67_adam_dense_135_kernel_v-
)assignvariableop_68_adam_dense_135_bias_v<
8assignvariableop_69_adam_batch_normalization_183_gamma_v;
7assignvariableop_70_adam_batch_normalization_183_beta_v/
+assignvariableop_71_adam_dense_136_kernel_v-
)assignvariableop_72_adam_dense_136_bias_v/
+assignvariableop_73_adam_dense_137_kernel_v-
)assignvariableop_74_adam_dense_137_bias_v
identity_76??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_8?AssignVariableOp_9?*
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?)
value?)B?)LB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?
value?B?LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Z
dtypesP
N2L	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_135_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_135_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_180_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_180_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_180_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_180_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_136_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_136_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_181_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_181_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_181_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_181_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_137_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_137_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_182_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_182_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_182_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_182_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp$assignvariableop_18_dense_135_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_dense_135_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_183_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_183_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_183_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_183_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp$assignvariableop_24_dense_136_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp"assignvariableop_25_dense_136_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp$assignvariableop_26_dense_137_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp"assignvariableop_27_dense_137_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOpassignvariableop_28_adam_iterIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpassignvariableop_29_adam_beta_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOpassignvariableop_30_adam_beta_2Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOpassignvariableop_31_adam_decayIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_learning_rateIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOpassignvariableop_33_totalIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOpassignvariableop_34_countIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp,assignvariableop_35_adam_conv2d_135_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_conv2d_135_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_batch_normalization_180_gamma_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp7assignvariableop_38_adam_batch_normalization_180_beta_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp,assignvariableop_39_adam_conv2d_136_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_conv2d_136_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp8assignvariableop_41_adam_batch_normalization_181_gamma_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp7assignvariableop_42_adam_batch_normalization_181_beta_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp,assignvariableop_43_adam_conv2d_137_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp*assignvariableop_44_adam_conv2d_137_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp8assignvariableop_45_adam_batch_normalization_182_gamma_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp7assignvariableop_46_adam_batch_normalization_182_beta_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_dense_135_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_dense_135_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp8assignvariableop_49_adam_batch_normalization_183_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp7assignvariableop_50_adam_batch_normalization_183_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_dense_136_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_dense_136_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_dense_137_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_dense_137_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp,assignvariableop_55_adam_conv2d_135_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp*assignvariableop_56_adam_conv2d_135_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp8assignvariableop_57_adam_batch_normalization_180_gamma_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp7assignvariableop_58_adam_batch_normalization_180_beta_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp,assignvariableop_59_adam_conv2d_136_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp*assignvariableop_60_adam_conv2d_136_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp8assignvariableop_61_adam_batch_normalization_181_gamma_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp7assignvariableop_62_adam_batch_normalization_181_beta_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp,assignvariableop_63_adam_conv2d_137_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp*assignvariableop_64_adam_conv2d_137_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp8assignvariableop_65_adam_batch_normalization_182_gamma_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp7assignvariableop_66_adam_batch_normalization_182_beta_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp+assignvariableop_67_adam_dense_135_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp)assignvariableop_68_adam_dense_135_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp8assignvariableop_69_adam_batch_normalization_183_gamma_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp7assignvariableop_70_adam_batch_normalization_183_beta_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp+assignvariableop_71_adam_dense_136_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp)assignvariableop_72_adam_dense_136_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOp+assignvariableop_73_adam_dense_137_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOp)assignvariableop_74_adam_dense_137_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_749
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_75Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_75?
Identity_76IdentityIdentity_75:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_76"#
identity_76Identity_76:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?	
?
E__inference_dense_136_layer_call_and_return_conditional_losses_382851

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
?
?
S__inference_batch_normalization_183_layer_call_and_return_conditional_losses_380880

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
?
?
8__inference_batch_normalization_181_layer_call_fn_382535

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
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_3810842
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
?
?
8__inference_batch_normalization_181_layer_call_fn_382471

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
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_3806122
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
?
K
/__inference_activation_229_layer_call_fn_382870

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
J__inference_activation_229_layer_call_and_return_conditional_losses_3813832
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
d
F__inference_dropout_45_layer_call_and_return_conditional_losses_381339

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
?	
?
F__inference_conv2d_137_layer_call_and_return_conditional_losses_381131

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
?
f
J__inference_activation_228_layer_call_and_return_conditional_losses_381279

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
?
?
S__inference_batch_normalization_183_layer_call_and_return_conditional_losses_382788

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
?
?
+__inference_conv2d_135_layer_call_fn_382240

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
F__inference_conv2d_135_layer_call_and_return_conditional_losses_3809052
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
?
K
/__inference_activation_225_layer_call_fn_382250

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
J__inference_activation_225_layer_call_and_return_conditional_losses_3809262
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
?
?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_382334

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
?
K
/__inference_activation_226_layer_call_fn_382407

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
J__inference_activation_226_layer_call_and_return_conditional_losses_3810392
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
?
?
8__inference_batch_normalization_181_layer_call_fn_382458

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
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_3805812
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
?0
?
S__inference_batch_normalization_183_layer_call_and_return_conditional_losses_382768

inputs
assignmovingavg_382743
assignmovingavg_1_382749)
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
loc:@AssignMovingAvg/382743*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_382743*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/382743*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/382743*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_382743AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/382743*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/382749*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_382749*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/382749*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/382749*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_382749AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/382749*
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
?
N
2__inference_max_pooling2d_135_layer_call_fn_380519

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
M__inference_max_pooling2d_135_layer_call_and_return_conditional_losses_3805132
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
G
+__inference_dropout_45_layer_call_fn_382841

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
F__inference_dropout_45_layer_call_and_return_conditional_losses_3813392
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
?
?
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_382666

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
?
?
8__inference_batch_normalization_182_layer_call_fn_382615

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
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_3811792
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
?
N
2__inference_max_pooling2d_137_layer_call_fn_380751

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
M__inference_max_pooling2d_137_layer_call_and_return_conditional_losses_3807452
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
8__inference_batch_normalization_182_layer_call_fn_382692

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
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_3807282
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
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_381066

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
?
?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_381084

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

D__inference_model_45_layer_call_and_return_conditional_losses_381722

inputs
conv2d_135_381645
conv2d_135_381647"
batch_normalization_180_381651"
batch_normalization_180_381653"
batch_normalization_180_381655"
batch_normalization_180_381657
conv2d_136_381661
conv2d_136_381663"
batch_normalization_181_381667"
batch_normalization_181_381669"
batch_normalization_181_381671"
batch_normalization_181_381673
conv2d_137_381677
conv2d_137_381679"
batch_normalization_182_381683"
batch_normalization_182_381685"
batch_normalization_182_381687"
batch_normalization_182_381689
dense_135_381694
dense_135_381696"
batch_normalization_183_381700"
batch_normalization_183_381702"
batch_normalization_183_381704"
batch_normalization_183_381706
dense_136_381710
dense_136_381712
dense_137_381716
dense_137_381718
identity??/batch_normalization_180/StatefulPartitionedCall?/batch_normalization_181/StatefulPartitionedCall?/batch_normalization_182/StatefulPartitionedCall?/batch_normalization_183/StatefulPartitionedCall?"conv2d_135/StatefulPartitionedCall?"conv2d_136/StatefulPartitionedCall?"conv2d_137/StatefulPartitionedCall?!dense_135/StatefulPartitionedCall?!dense_136/StatefulPartitionedCall?!dense_137/StatefulPartitionedCall?
"conv2d_135/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_135_381645conv2d_135_381647*
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
F__inference_conv2d_135_layer_call_and_return_conditional_losses_3809052$
"conv2d_135/StatefulPartitionedCall?
activation_225/PartitionedCallPartitionedCall+conv2d_135/StatefulPartitionedCall:output:0*
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
J__inference_activation_225_layer_call_and_return_conditional_losses_3809262 
activation_225/PartitionedCall?
/batch_normalization_180/StatefulPartitionedCallStatefulPartitionedCall'activation_225/PartitionedCall:output:0batch_normalization_180_381651batch_normalization_180_381653batch_normalization_180_381655batch_normalization_180_381657*
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
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_38097121
/batch_normalization_180/StatefulPartitionedCall?
!max_pooling2d_135/PartitionedCallPartitionedCall8batch_normalization_180/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_135_layer_call_and_return_conditional_losses_3805132#
!max_pooling2d_135/PartitionedCall?
"conv2d_136/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_135/PartitionedCall:output:0conv2d_136_381661conv2d_136_381663*
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
F__inference_conv2d_136_layer_call_and_return_conditional_losses_3810182$
"conv2d_136/StatefulPartitionedCall?
activation_226/PartitionedCallPartitionedCall+conv2d_136/StatefulPartitionedCall:output:0*
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
J__inference_activation_226_layer_call_and_return_conditional_losses_3810392 
activation_226/PartitionedCall?
/batch_normalization_181/StatefulPartitionedCallStatefulPartitionedCall'activation_226/PartitionedCall:output:0batch_normalization_181_381667batch_normalization_181_381669batch_normalization_181_381671batch_normalization_181_381673*
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
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_38108421
/batch_normalization_181/StatefulPartitionedCall?
!max_pooling2d_136/PartitionedCallPartitionedCall8batch_normalization_181/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_136_layer_call_and_return_conditional_losses_3806292#
!max_pooling2d_136/PartitionedCall?
"conv2d_137/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_136/PartitionedCall:output:0conv2d_137_381677conv2d_137_381679*
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
F__inference_conv2d_137_layer_call_and_return_conditional_losses_3811312$
"conv2d_137/StatefulPartitionedCall?
activation_227/PartitionedCallPartitionedCall+conv2d_137/StatefulPartitionedCall:output:0*
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
J__inference_activation_227_layer_call_and_return_conditional_losses_3811522 
activation_227/PartitionedCall?
/batch_normalization_182/StatefulPartitionedCallStatefulPartitionedCall'activation_227/PartitionedCall:output:0batch_normalization_182_381683batch_normalization_182_381685batch_normalization_182_381687batch_normalization_182_381689*
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
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_38119721
/batch_normalization_182/StatefulPartitionedCall?
!max_pooling2d_137/PartitionedCallPartitionedCall8batch_normalization_182/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_137_layer_call_and_return_conditional_losses_3807452#
!max_pooling2d_137/PartitionedCall?
flatten_45/PartitionedCallPartitionedCall*max_pooling2d_137/PartitionedCall:output:0*
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
F__inference_flatten_45_layer_call_and_return_conditional_losses_3812402
flatten_45/PartitionedCall?
!dense_135/StatefulPartitionedCallStatefulPartitionedCall#flatten_45/PartitionedCall:output:0dense_135_381694dense_135_381696*
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
E__inference_dense_135_layer_call_and_return_conditional_losses_3812582#
!dense_135/StatefulPartitionedCall?
activation_228/PartitionedCallPartitionedCall*dense_135/StatefulPartitionedCall:output:0*
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
J__inference_activation_228_layer_call_and_return_conditional_losses_3812792 
activation_228/PartitionedCall?
/batch_normalization_183/StatefulPartitionedCallStatefulPartitionedCall'activation_228/PartitionedCall:output:0batch_normalization_183_381700batch_normalization_183_381702batch_normalization_183_381704batch_normalization_183_381706*
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
S__inference_batch_normalization_183_layer_call_and_return_conditional_losses_38088021
/batch_normalization_183/StatefulPartitionedCall?
dropout_45/PartitionedCallPartitionedCall8batch_normalization_183/StatefulPartitionedCall:output:0*
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
F__inference_dropout_45_layer_call_and_return_conditional_losses_3813392
dropout_45/PartitionedCall?
!dense_136/StatefulPartitionedCallStatefulPartitionedCall#dropout_45/PartitionedCall:output:0dense_136_381710dense_136_381712*
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
E__inference_dense_136_layer_call_and_return_conditional_losses_3813622#
!dense_136/StatefulPartitionedCall?
activation_229/PartitionedCallPartitionedCall*dense_136/StatefulPartitionedCall:output:0*
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
J__inference_activation_229_layer_call_and_return_conditional_losses_3813832 
activation_229/PartitionedCall?
!dense_137/StatefulPartitionedCallStatefulPartitionedCall'activation_229/PartitionedCall:output:0dense_137_381716dense_137_381718*
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
E__inference_dense_137_layer_call_and_return_conditional_losses_3814012#
!dense_137/StatefulPartitionedCall?
IdentityIdentity*dense_137/StatefulPartitionedCall:output:00^batch_normalization_180/StatefulPartitionedCall0^batch_normalization_181/StatefulPartitionedCall0^batch_normalization_182/StatefulPartitionedCall0^batch_normalization_183/StatefulPartitionedCall#^conv2d_135/StatefulPartitionedCall#^conv2d_136/StatefulPartitionedCall#^conv2d_137/StatefulPartitionedCall"^dense_135/StatefulPartitionedCall"^dense_136/StatefulPartitionedCall"^dense_137/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2b
/batch_normalization_180/StatefulPartitionedCall/batch_normalization_180/StatefulPartitionedCall2b
/batch_normalization_181/StatefulPartitionedCall/batch_normalization_181/StatefulPartitionedCall2b
/batch_normalization_182/StatefulPartitionedCall/batch_normalization_182/StatefulPartitionedCall2b
/batch_normalization_183/StatefulPartitionedCall/batch_normalization_183/StatefulPartitionedCall2H
"conv2d_135/StatefulPartitionedCall"conv2d_135/StatefulPartitionedCall2H
"conv2d_136/StatefulPartitionedCall"conv2d_136/StatefulPartitionedCall2H
"conv2d_137/StatefulPartitionedCall"conv2d_137/StatefulPartitionedCall2F
!dense_135/StatefulPartitionedCall!dense_135/StatefulPartitionedCall2F
!dense_136/StatefulPartitionedCall!dense_136/StatefulPartitionedCall2F
!dense_137/StatefulPartitionedCall!dense_137/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_382491

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
?
G
+__inference_flatten_45_layer_call_fn_382703

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
F__inference_flatten_45_layer_call_and_return_conditional_losses_3812402
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
e
F__inference_dropout_45_layer_call_and_return_conditional_losses_382826

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
E__inference_dense_137_layer_call_and_return_conditional_losses_381401

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
?
f
J__inference_activation_226_layer_call_and_return_conditional_losses_382402

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
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_381179

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
?
?
)__inference_model_45_layer_call_fn_382160

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
D__inference_model_45_layer_call_and_return_conditional_losses_3815812
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
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_382584

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
J__inference_activation_226_layer_call_and_return_conditional_losses_381039

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
?
$__inference_signature_wrapper_381852
input_46
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
StatefulPartitionedCallStatefulPartitionedCallinput_46unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
!__inference__wrapped_model_3804032
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
input_46
?
?
8__inference_batch_normalization_180_layer_call_fn_382378

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
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_3804962
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
?	
?
E__inference_dense_135_layer_call_and_return_conditional_losses_382713

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
ޛ
?
D__inference_model_45_layer_call_and_return_conditional_losses_382099

inputs-
)conv2d_135_conv2d_readvariableop_resource.
*conv2d_135_biasadd_readvariableop_resource3
/batch_normalization_180_readvariableop_resource5
1batch_normalization_180_readvariableop_1_resourceD
@batch_normalization_180_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_180_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_136_conv2d_readvariableop_resource.
*conv2d_136_biasadd_readvariableop_resource3
/batch_normalization_181_readvariableop_resource5
1batch_normalization_181_readvariableop_1_resourceD
@batch_normalization_181_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_181_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_137_conv2d_readvariableop_resource.
*conv2d_137_biasadd_readvariableop_resource3
/batch_normalization_182_readvariableop_resource5
1batch_normalization_182_readvariableop_1_resourceD
@batch_normalization_182_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_182_fusedbatchnormv3_readvariableop_1_resource,
(dense_135_matmul_readvariableop_resource-
)dense_135_biasadd_readvariableop_resource=
9batch_normalization_183_batchnorm_readvariableop_resourceA
=batch_normalization_183_batchnorm_mul_readvariableop_resource?
;batch_normalization_183_batchnorm_readvariableop_1_resource?
;batch_normalization_183_batchnorm_readvariableop_2_resource,
(dense_136_matmul_readvariableop_resource-
)dense_136_biasadd_readvariableop_resource,
(dense_137_matmul_readvariableop_resource-
)dense_137_biasadd_readvariableop_resource
identity??7batch_normalization_180/FusedBatchNormV3/ReadVariableOp?9batch_normalization_180/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_180/ReadVariableOp?(batch_normalization_180/ReadVariableOp_1?7batch_normalization_181/FusedBatchNormV3/ReadVariableOp?9batch_normalization_181/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_181/ReadVariableOp?(batch_normalization_181/ReadVariableOp_1?7batch_normalization_182/FusedBatchNormV3/ReadVariableOp?9batch_normalization_182/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_182/ReadVariableOp?(batch_normalization_182/ReadVariableOp_1?0batch_normalization_183/batchnorm/ReadVariableOp?2batch_normalization_183/batchnorm/ReadVariableOp_1?2batch_normalization_183/batchnorm/ReadVariableOp_2?4batch_normalization_183/batchnorm/mul/ReadVariableOp?!conv2d_135/BiasAdd/ReadVariableOp? conv2d_135/Conv2D/ReadVariableOp?!conv2d_136/BiasAdd/ReadVariableOp? conv2d_136/Conv2D/ReadVariableOp?!conv2d_137/BiasAdd/ReadVariableOp? conv2d_137/Conv2D/ReadVariableOp? dense_135/BiasAdd/ReadVariableOp?dense_135/MatMul/ReadVariableOp? dense_136/BiasAdd/ReadVariableOp?dense_136/MatMul/ReadVariableOp? dense_137/BiasAdd/ReadVariableOp?dense_137/MatMul/ReadVariableOp?
 conv2d_135/Conv2D/ReadVariableOpReadVariableOp)conv2d_135_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_135/Conv2D/ReadVariableOp?
conv2d_135/Conv2DConv2Dinputs(conv2d_135/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2
conv2d_135/Conv2D?
!conv2d_135/BiasAdd/ReadVariableOpReadVariableOp*conv2d_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_135/BiasAdd/ReadVariableOp?
conv2d_135/BiasAddBiasAddconv2d_135/Conv2D:output:0)conv2d_135/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  2
conv2d_135/BiasAdd?
activation_225/ReluReluconv2d_135/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  2
activation_225/Relu?
&batch_normalization_180/ReadVariableOpReadVariableOp/batch_normalization_180_readvariableop_resource*
_output_shapes
:*
dtype02(
&batch_normalization_180/ReadVariableOp?
(batch_normalization_180/ReadVariableOp_1ReadVariableOp1batch_normalization_180_readvariableop_1_resource*
_output_shapes
:*
dtype02*
(batch_normalization_180/ReadVariableOp_1?
7batch_normalization_180/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_180_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype029
7batch_normalization_180/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_180/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_180_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02;
9batch_normalization_180/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_180/FusedBatchNormV3FusedBatchNormV3!activation_225/Relu:activations:0.batch_normalization_180/ReadVariableOp:value:00batch_normalization_180/ReadVariableOp_1:value:0?batch_normalization_180/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_180/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
is_training( 2*
(batch_normalization_180/FusedBatchNormV3?
max_pooling2d_135/MaxPoolMaxPool,batch_normalization_180/FusedBatchNormV3:y:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_135/MaxPool?
 conv2d_136/Conv2D/ReadVariableOpReadVariableOp)conv2d_136_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_136/Conv2D/ReadVariableOp?
conv2d_136/Conv2DConv2D"max_pooling2d_135/MaxPool:output:0(conv2d_136/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_136/Conv2D?
!conv2d_136/BiasAdd/ReadVariableOpReadVariableOp*conv2d_136_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_136/BiasAdd/ReadVariableOp?
conv2d_136/BiasAddBiasAddconv2d_136/Conv2D:output:0)conv2d_136/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_136/BiasAdd?
activation_226/ReluReluconv2d_136/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
activation_226/Relu?
&batch_normalization_181/ReadVariableOpReadVariableOp/batch_normalization_181_readvariableop_resource*
_output_shapes
: *
dtype02(
&batch_normalization_181/ReadVariableOp?
(batch_normalization_181/ReadVariableOp_1ReadVariableOp1batch_normalization_181_readvariableop_1_resource*
_output_shapes
: *
dtype02*
(batch_normalization_181/ReadVariableOp_1?
7batch_normalization_181/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_181_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype029
7batch_normalization_181/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_181/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_181_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02;
9batch_normalization_181/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_181/FusedBatchNormV3FusedBatchNormV3!activation_226/Relu:activations:0.batch_normalization_181/ReadVariableOp:value:00batch_normalization_181/ReadVariableOp_1:value:0?batch_normalization_181/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_181/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2*
(batch_normalization_181/FusedBatchNormV3?
max_pooling2d_136/MaxPoolMaxPool,batch_normalization_181/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_136/MaxPool?
 conv2d_137/Conv2D/ReadVariableOpReadVariableOp)conv2d_137_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_137/Conv2D/ReadVariableOp?
conv2d_137/Conv2DConv2D"max_pooling2d_136/MaxPool:output:0(conv2d_137/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_137/Conv2D?
!conv2d_137/BiasAdd/ReadVariableOpReadVariableOp*conv2d_137_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_137/BiasAdd/ReadVariableOp?
conv2d_137/BiasAddBiasAddconv2d_137/Conv2D:output:0)conv2d_137/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_137/BiasAdd?
activation_227/ReluReluconv2d_137/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_227/Relu?
&batch_normalization_182/ReadVariableOpReadVariableOp/batch_normalization_182_readvariableop_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_182/ReadVariableOp?
(batch_normalization_182/ReadVariableOp_1ReadVariableOp1batch_normalization_182_readvariableop_1_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_182/ReadVariableOp_1?
7batch_normalization_182/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_182_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype029
7batch_normalization_182/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_182/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_182_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9batch_normalization_182/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_182/FusedBatchNormV3FusedBatchNormV3!activation_227/Relu:activations:0.batch_normalization_182/ReadVariableOp:value:00batch_normalization_182/ReadVariableOp_1:value:0?batch_normalization_182/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_182/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2*
(batch_normalization_182/FusedBatchNormV3?
max_pooling2d_137/MaxPoolMaxPool,batch_normalization_182/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_137/MaxPoolu
flatten_45/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_45/Const?
flatten_45/ReshapeReshape"max_pooling2d_137/MaxPool:output:0flatten_45/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_45/Reshape?
dense_135/MatMul/ReadVariableOpReadVariableOp(dense_135_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
dense_135/MatMul/ReadVariableOp?
dense_135/MatMulMatMulflatten_45/Reshape:output:0'dense_135/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_135/MatMul?
 dense_135/BiasAdd/ReadVariableOpReadVariableOp)dense_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_135/BiasAdd/ReadVariableOp?
dense_135/BiasAddBiasAdddense_135/MatMul:product:0(dense_135/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_135/BiasAdd?
activation_228/ReluReludense_135/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_228/Relu?
0batch_normalization_183/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_183_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype022
0batch_normalization_183/batchnorm/ReadVariableOp?
'batch_normalization_183/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2)
'batch_normalization_183/batchnorm/add/y?
%batch_normalization_183/batchnorm/addAddV28batch_normalization_183/batchnorm/ReadVariableOp:value:00batch_normalization_183/batchnorm/add/y:output:0*
T0*
_output_shapes
:2'
%batch_normalization_183/batchnorm/add?
'batch_normalization_183/batchnorm/RsqrtRsqrt)batch_normalization_183/batchnorm/add:z:0*
T0*
_output_shapes
:2)
'batch_normalization_183/batchnorm/Rsqrt?
4batch_normalization_183/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_183_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization_183/batchnorm/mul/ReadVariableOp?
%batch_normalization_183/batchnorm/mulMul+batch_normalization_183/batchnorm/Rsqrt:y:0<batch_normalization_183/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2'
%batch_normalization_183/batchnorm/mul?
'batch_normalization_183/batchnorm/mul_1Mul!activation_228/Relu:activations:0)batch_normalization_183/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2)
'batch_normalization_183/batchnorm/mul_1?
2batch_normalization_183/batchnorm/ReadVariableOp_1ReadVariableOp;batch_normalization_183_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype024
2batch_normalization_183/batchnorm/ReadVariableOp_1?
'batch_normalization_183/batchnorm/mul_2Mul:batch_normalization_183/batchnorm/ReadVariableOp_1:value:0)batch_normalization_183/batchnorm/mul:z:0*
T0*
_output_shapes
:2)
'batch_normalization_183/batchnorm/mul_2?
2batch_normalization_183/batchnorm/ReadVariableOp_2ReadVariableOp;batch_normalization_183_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype024
2batch_normalization_183/batchnorm/ReadVariableOp_2?
%batch_normalization_183/batchnorm/subSub:batch_normalization_183/batchnorm/ReadVariableOp_2:value:0+batch_normalization_183/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2'
%batch_normalization_183/batchnorm/sub?
'batch_normalization_183/batchnorm/add_1AddV2+batch_normalization_183/batchnorm/mul_1:z:0)batch_normalization_183/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2)
'batch_normalization_183/batchnorm/add_1?
dropout_45/IdentityIdentity+batch_normalization_183/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????2
dropout_45/Identity?
dense_136/MatMul/ReadVariableOpReadVariableOp(dense_136_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_136/MatMul/ReadVariableOp?
dense_136/MatMulMatMuldropout_45/Identity:output:0'dense_136/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_136/MatMul?
 dense_136/BiasAdd/ReadVariableOpReadVariableOp)dense_136_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_136/BiasAdd/ReadVariableOp?
dense_136/BiasAddBiasAdddense_136/MatMul:product:0(dense_136/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_136/BiasAdd?
activation_229/ReluReludense_136/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_229/Relu?
dense_137/MatMul/ReadVariableOpReadVariableOp(dense_137_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_137/MatMul/ReadVariableOp?
dense_137/MatMulMatMul!activation_229/Relu:activations:0'dense_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_137/MatMul?
 dense_137/BiasAdd/ReadVariableOpReadVariableOp)dense_137_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_137/BiasAdd/ReadVariableOp?
dense_137/BiasAddBiasAdddense_137/MatMul:product:0(dense_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_137/BiasAdd?

IdentityIdentitydense_137/BiasAdd:output:08^batch_normalization_180/FusedBatchNormV3/ReadVariableOp:^batch_normalization_180/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_180/ReadVariableOp)^batch_normalization_180/ReadVariableOp_18^batch_normalization_181/FusedBatchNormV3/ReadVariableOp:^batch_normalization_181/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_181/ReadVariableOp)^batch_normalization_181/ReadVariableOp_18^batch_normalization_182/FusedBatchNormV3/ReadVariableOp:^batch_normalization_182/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_182/ReadVariableOp)^batch_normalization_182/ReadVariableOp_11^batch_normalization_183/batchnorm/ReadVariableOp3^batch_normalization_183/batchnorm/ReadVariableOp_13^batch_normalization_183/batchnorm/ReadVariableOp_25^batch_normalization_183/batchnorm/mul/ReadVariableOp"^conv2d_135/BiasAdd/ReadVariableOp!^conv2d_135/Conv2D/ReadVariableOp"^conv2d_136/BiasAdd/ReadVariableOp!^conv2d_136/Conv2D/ReadVariableOp"^conv2d_137/BiasAdd/ReadVariableOp!^conv2d_137/Conv2D/ReadVariableOp!^dense_135/BiasAdd/ReadVariableOp ^dense_135/MatMul/ReadVariableOp!^dense_136/BiasAdd/ReadVariableOp ^dense_136/MatMul/ReadVariableOp!^dense_137/BiasAdd/ReadVariableOp ^dense_137/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2r
7batch_normalization_180/FusedBatchNormV3/ReadVariableOp7batch_normalization_180/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_180/FusedBatchNormV3/ReadVariableOp_19batch_normalization_180/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_180/ReadVariableOp&batch_normalization_180/ReadVariableOp2T
(batch_normalization_180/ReadVariableOp_1(batch_normalization_180/ReadVariableOp_12r
7batch_normalization_181/FusedBatchNormV3/ReadVariableOp7batch_normalization_181/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_181/FusedBatchNormV3/ReadVariableOp_19batch_normalization_181/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_181/ReadVariableOp&batch_normalization_181/ReadVariableOp2T
(batch_normalization_181/ReadVariableOp_1(batch_normalization_181/ReadVariableOp_12r
7batch_normalization_182/FusedBatchNormV3/ReadVariableOp7batch_normalization_182/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_182/FusedBatchNormV3/ReadVariableOp_19batch_normalization_182/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_182/ReadVariableOp&batch_normalization_182/ReadVariableOp2T
(batch_normalization_182/ReadVariableOp_1(batch_normalization_182/ReadVariableOp_12d
0batch_normalization_183/batchnorm/ReadVariableOp0batch_normalization_183/batchnorm/ReadVariableOp2h
2batch_normalization_183/batchnorm/ReadVariableOp_12batch_normalization_183/batchnorm/ReadVariableOp_12h
2batch_normalization_183/batchnorm/ReadVariableOp_22batch_normalization_183/batchnorm/ReadVariableOp_22l
4batch_normalization_183/batchnorm/mul/ReadVariableOp4batch_normalization_183/batchnorm/mul/ReadVariableOp2F
!conv2d_135/BiasAdd/ReadVariableOp!conv2d_135/BiasAdd/ReadVariableOp2D
 conv2d_135/Conv2D/ReadVariableOp conv2d_135/Conv2D/ReadVariableOp2F
!conv2d_136/BiasAdd/ReadVariableOp!conv2d_136/BiasAdd/ReadVariableOp2D
 conv2d_136/Conv2D/ReadVariableOp conv2d_136/Conv2D/ReadVariableOp2F
!conv2d_137/BiasAdd/ReadVariableOp!conv2d_137/BiasAdd/ReadVariableOp2D
 conv2d_137/Conv2D/ReadVariableOp conv2d_137/Conv2D/ReadVariableOp2D
 dense_135/BiasAdd/ReadVariableOp dense_135/BiasAdd/ReadVariableOp2B
dense_135/MatMul/ReadVariableOpdense_135/MatMul/ReadVariableOp2D
 dense_136/BiasAdd/ReadVariableOp dense_136/BiasAdd/ReadVariableOp2B
dense_136/MatMul/ReadVariableOpdense_136/MatMul/ReadVariableOp2D
 dense_137/BiasAdd/ReadVariableOp dense_137/BiasAdd/ReadVariableOp2B
dense_137/MatMul/ReadVariableOpdense_137/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_182_layer_call_fn_382628

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
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_3811972
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
e
F__inference_dropout_45_layer_call_and_return_conditional_losses_381334

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
F__inference_conv2d_137_layer_call_and_return_conditional_losses_382545

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
)__inference_model_45_layer_call_fn_381781
input_46
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
StatefulPartitionedCallStatefulPartitionedCallinput_46unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
D__inference_model_45_layer_call_and_return_conditional_losses_3817222
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
input_46
Ϙ
?"
__inference__traced_save_383137
file_prefix0
,savev2_conv2d_135_kernel_read_readvariableop.
*savev2_conv2d_135_bias_read_readvariableop<
8savev2_batch_normalization_180_gamma_read_readvariableop;
7savev2_batch_normalization_180_beta_read_readvariableopB
>savev2_batch_normalization_180_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_180_moving_variance_read_readvariableop0
,savev2_conv2d_136_kernel_read_readvariableop.
*savev2_conv2d_136_bias_read_readvariableop<
8savev2_batch_normalization_181_gamma_read_readvariableop;
7savev2_batch_normalization_181_beta_read_readvariableopB
>savev2_batch_normalization_181_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_181_moving_variance_read_readvariableop0
,savev2_conv2d_137_kernel_read_readvariableop.
*savev2_conv2d_137_bias_read_readvariableop<
8savev2_batch_normalization_182_gamma_read_readvariableop;
7savev2_batch_normalization_182_beta_read_readvariableopB
>savev2_batch_normalization_182_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_182_moving_variance_read_readvariableop/
+savev2_dense_135_kernel_read_readvariableop-
)savev2_dense_135_bias_read_readvariableop<
8savev2_batch_normalization_183_gamma_read_readvariableop;
7savev2_batch_normalization_183_beta_read_readvariableopB
>savev2_batch_normalization_183_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_183_moving_variance_read_readvariableop/
+savev2_dense_136_kernel_read_readvariableop-
)savev2_dense_136_bias_read_readvariableop/
+savev2_dense_137_kernel_read_readvariableop-
)savev2_dense_137_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_conv2d_135_kernel_m_read_readvariableop5
1savev2_adam_conv2d_135_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_180_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_180_beta_m_read_readvariableop7
3savev2_adam_conv2d_136_kernel_m_read_readvariableop5
1savev2_adam_conv2d_136_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_181_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_181_beta_m_read_readvariableop7
3savev2_adam_conv2d_137_kernel_m_read_readvariableop5
1savev2_adam_conv2d_137_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_182_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_182_beta_m_read_readvariableop6
2savev2_adam_dense_135_kernel_m_read_readvariableop4
0savev2_adam_dense_135_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_183_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_183_beta_m_read_readvariableop6
2savev2_adam_dense_136_kernel_m_read_readvariableop4
0savev2_adam_dense_136_bias_m_read_readvariableop6
2savev2_adam_dense_137_kernel_m_read_readvariableop4
0savev2_adam_dense_137_bias_m_read_readvariableop7
3savev2_adam_conv2d_135_kernel_v_read_readvariableop5
1savev2_adam_conv2d_135_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_180_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_180_beta_v_read_readvariableop7
3savev2_adam_conv2d_136_kernel_v_read_readvariableop5
1savev2_adam_conv2d_136_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_181_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_181_beta_v_read_readvariableop7
3savev2_adam_conv2d_137_kernel_v_read_readvariableop5
1savev2_adam_conv2d_137_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_182_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_182_beta_v_read_readvariableop6
2savev2_adam_dense_135_kernel_v_read_readvariableop4
0savev2_adam_dense_135_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_183_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_183_beta_v_read_readvariableop6
2savev2_adam_dense_136_kernel_v_read_readvariableop4
0savev2_adam_dense_136_bias_v_read_readvariableop6
2savev2_adam_dense_137_kernel_v_read_readvariableop4
0savev2_adam_dense_137_bias_v_read_readvariableop
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
ShardedFilename?*
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?)
value?)B?)LB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?
value?B?LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?!
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_135_kernel_read_readvariableop*savev2_conv2d_135_bias_read_readvariableop8savev2_batch_normalization_180_gamma_read_readvariableop7savev2_batch_normalization_180_beta_read_readvariableop>savev2_batch_normalization_180_moving_mean_read_readvariableopBsavev2_batch_normalization_180_moving_variance_read_readvariableop,savev2_conv2d_136_kernel_read_readvariableop*savev2_conv2d_136_bias_read_readvariableop8savev2_batch_normalization_181_gamma_read_readvariableop7savev2_batch_normalization_181_beta_read_readvariableop>savev2_batch_normalization_181_moving_mean_read_readvariableopBsavev2_batch_normalization_181_moving_variance_read_readvariableop,savev2_conv2d_137_kernel_read_readvariableop*savev2_conv2d_137_bias_read_readvariableop8savev2_batch_normalization_182_gamma_read_readvariableop7savev2_batch_normalization_182_beta_read_readvariableop>savev2_batch_normalization_182_moving_mean_read_readvariableopBsavev2_batch_normalization_182_moving_variance_read_readvariableop+savev2_dense_135_kernel_read_readvariableop)savev2_dense_135_bias_read_readvariableop8savev2_batch_normalization_183_gamma_read_readvariableop7savev2_batch_normalization_183_beta_read_readvariableop>savev2_batch_normalization_183_moving_mean_read_readvariableopBsavev2_batch_normalization_183_moving_variance_read_readvariableop+savev2_dense_136_kernel_read_readvariableop)savev2_dense_136_bias_read_readvariableop+savev2_dense_137_kernel_read_readvariableop)savev2_dense_137_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_conv2d_135_kernel_m_read_readvariableop1savev2_adam_conv2d_135_bias_m_read_readvariableop?savev2_adam_batch_normalization_180_gamma_m_read_readvariableop>savev2_adam_batch_normalization_180_beta_m_read_readvariableop3savev2_adam_conv2d_136_kernel_m_read_readvariableop1savev2_adam_conv2d_136_bias_m_read_readvariableop?savev2_adam_batch_normalization_181_gamma_m_read_readvariableop>savev2_adam_batch_normalization_181_beta_m_read_readvariableop3savev2_adam_conv2d_137_kernel_m_read_readvariableop1savev2_adam_conv2d_137_bias_m_read_readvariableop?savev2_adam_batch_normalization_182_gamma_m_read_readvariableop>savev2_adam_batch_normalization_182_beta_m_read_readvariableop2savev2_adam_dense_135_kernel_m_read_readvariableop0savev2_adam_dense_135_bias_m_read_readvariableop?savev2_adam_batch_normalization_183_gamma_m_read_readvariableop>savev2_adam_batch_normalization_183_beta_m_read_readvariableop2savev2_adam_dense_136_kernel_m_read_readvariableop0savev2_adam_dense_136_bias_m_read_readvariableop2savev2_adam_dense_137_kernel_m_read_readvariableop0savev2_adam_dense_137_bias_m_read_readvariableop3savev2_adam_conv2d_135_kernel_v_read_readvariableop1savev2_adam_conv2d_135_bias_v_read_readvariableop?savev2_adam_batch_normalization_180_gamma_v_read_readvariableop>savev2_adam_batch_normalization_180_beta_v_read_readvariableop3savev2_adam_conv2d_136_kernel_v_read_readvariableop1savev2_adam_conv2d_136_bias_v_read_readvariableop?savev2_adam_batch_normalization_181_gamma_v_read_readvariableop>savev2_adam_batch_normalization_181_beta_v_read_readvariableop3savev2_adam_conv2d_137_kernel_v_read_readvariableop1savev2_adam_conv2d_137_bias_v_read_readvariableop?savev2_adam_batch_normalization_182_gamma_v_read_readvariableop>savev2_adam_batch_normalization_182_beta_v_read_readvariableop2savev2_adam_dense_135_kernel_v_read_readvariableop0savev2_adam_dense_135_bias_v_read_readvariableop?savev2_adam_batch_normalization_183_gamma_v_read_readvariableop>savev2_adam_batch_normalization_183_beta_v_read_readvariableop2savev2_adam_dense_136_kernel_v_read_readvariableop0savev2_adam_dense_136_bias_v_read_readvariableop2savev2_adam_dense_137_kernel_v_read_readvariableop0savev2_adam_dense_137_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *Z
dtypesP
N2L	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: ::::::: : : : : : : @:@:@:@:@:@:	?:::::::::: : : : : : : ::::: : : : : @:@:@:@:	?:::::::::::: : : : : @:@:@:@:	?:::::::: 2(
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
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :,$(
&
_output_shapes
:: %

_output_shapes
:: &

_output_shapes
:: '

_output_shapes
::,((
&
_output_shapes
: : )

_output_shapes
: : *

_output_shapes
: : +

_output_shapes
: :,,(
&
_output_shapes
: @: -

_output_shapes
:@: .

_output_shapes
:@: /

_output_shapes
:@:%0!

_output_shapes
:	?: 1

_output_shapes
:: 2

_output_shapes
:: 3

_output_shapes
::$4 

_output_shapes

:: 5

_output_shapes
::$6 

_output_shapes

:: 7

_output_shapes
::,8(
&
_output_shapes
:: 9

_output_shapes
:: :

_output_shapes
:: ;

_output_shapes
::,<(
&
_output_shapes
: : =

_output_shapes
: : >

_output_shapes
: : ?

_output_shapes
: :,@(
&
_output_shapes
: @: A

_output_shapes
:@: B

_output_shapes
:@: C

_output_shapes
:@:%D!

_output_shapes
:	?: E

_output_shapes
:: F

_output_shapes
:: G

_output_shapes
::$H 

_output_shapes

:: I

_output_shapes
::$J 

_output_shapes

:: K

_output_shapes
::L

_output_shapes
: 
?
?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_380971

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
8__inference_batch_normalization_180_layer_call_fn_382314

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
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_3809712
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
F__inference_conv2d_135_layer_call_and_return_conditional_losses_380905

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
J__inference_activation_225_layer_call_and_return_conditional_losses_380926

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
)__inference_model_45_layer_call_fn_381640
input_46
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
StatefulPartitionedCallStatefulPartitionedCallinput_46unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
D__inference_model_45_layer_call_and_return_conditional_losses_3815812
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
input_46
?^
?

D__inference_model_45_layer_call_and_return_conditional_losses_381498
input_46
conv2d_135_381421
conv2d_135_381423"
batch_normalization_180_381427"
batch_normalization_180_381429"
batch_normalization_180_381431"
batch_normalization_180_381433
conv2d_136_381437
conv2d_136_381439"
batch_normalization_181_381443"
batch_normalization_181_381445"
batch_normalization_181_381447"
batch_normalization_181_381449
conv2d_137_381453
conv2d_137_381455"
batch_normalization_182_381459"
batch_normalization_182_381461"
batch_normalization_182_381463"
batch_normalization_182_381465
dense_135_381470
dense_135_381472"
batch_normalization_183_381476"
batch_normalization_183_381478"
batch_normalization_183_381480"
batch_normalization_183_381482
dense_136_381486
dense_136_381488
dense_137_381492
dense_137_381494
identity??/batch_normalization_180/StatefulPartitionedCall?/batch_normalization_181/StatefulPartitionedCall?/batch_normalization_182/StatefulPartitionedCall?/batch_normalization_183/StatefulPartitionedCall?"conv2d_135/StatefulPartitionedCall?"conv2d_136/StatefulPartitionedCall?"conv2d_137/StatefulPartitionedCall?!dense_135/StatefulPartitionedCall?!dense_136/StatefulPartitionedCall?!dense_137/StatefulPartitionedCall?
"conv2d_135/StatefulPartitionedCallStatefulPartitionedCallinput_46conv2d_135_381421conv2d_135_381423*
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
F__inference_conv2d_135_layer_call_and_return_conditional_losses_3809052$
"conv2d_135/StatefulPartitionedCall?
activation_225/PartitionedCallPartitionedCall+conv2d_135/StatefulPartitionedCall:output:0*
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
J__inference_activation_225_layer_call_and_return_conditional_losses_3809262 
activation_225/PartitionedCall?
/batch_normalization_180/StatefulPartitionedCallStatefulPartitionedCall'activation_225/PartitionedCall:output:0batch_normalization_180_381427batch_normalization_180_381429batch_normalization_180_381431batch_normalization_180_381433*
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
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_38097121
/batch_normalization_180/StatefulPartitionedCall?
!max_pooling2d_135/PartitionedCallPartitionedCall8batch_normalization_180/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_135_layer_call_and_return_conditional_losses_3805132#
!max_pooling2d_135/PartitionedCall?
"conv2d_136/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_135/PartitionedCall:output:0conv2d_136_381437conv2d_136_381439*
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
F__inference_conv2d_136_layer_call_and_return_conditional_losses_3810182$
"conv2d_136/StatefulPartitionedCall?
activation_226/PartitionedCallPartitionedCall+conv2d_136/StatefulPartitionedCall:output:0*
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
J__inference_activation_226_layer_call_and_return_conditional_losses_3810392 
activation_226/PartitionedCall?
/batch_normalization_181/StatefulPartitionedCallStatefulPartitionedCall'activation_226/PartitionedCall:output:0batch_normalization_181_381443batch_normalization_181_381445batch_normalization_181_381447batch_normalization_181_381449*
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
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_38108421
/batch_normalization_181/StatefulPartitionedCall?
!max_pooling2d_136/PartitionedCallPartitionedCall8batch_normalization_181/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_136_layer_call_and_return_conditional_losses_3806292#
!max_pooling2d_136/PartitionedCall?
"conv2d_137/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_136/PartitionedCall:output:0conv2d_137_381453conv2d_137_381455*
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
F__inference_conv2d_137_layer_call_and_return_conditional_losses_3811312$
"conv2d_137/StatefulPartitionedCall?
activation_227/PartitionedCallPartitionedCall+conv2d_137/StatefulPartitionedCall:output:0*
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
J__inference_activation_227_layer_call_and_return_conditional_losses_3811522 
activation_227/PartitionedCall?
/batch_normalization_182/StatefulPartitionedCallStatefulPartitionedCall'activation_227/PartitionedCall:output:0batch_normalization_182_381459batch_normalization_182_381461batch_normalization_182_381463batch_normalization_182_381465*
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
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_38119721
/batch_normalization_182/StatefulPartitionedCall?
!max_pooling2d_137/PartitionedCallPartitionedCall8batch_normalization_182/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_137_layer_call_and_return_conditional_losses_3807452#
!max_pooling2d_137/PartitionedCall?
flatten_45/PartitionedCallPartitionedCall*max_pooling2d_137/PartitionedCall:output:0*
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
F__inference_flatten_45_layer_call_and_return_conditional_losses_3812402
flatten_45/PartitionedCall?
!dense_135/StatefulPartitionedCallStatefulPartitionedCall#flatten_45/PartitionedCall:output:0dense_135_381470dense_135_381472*
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
E__inference_dense_135_layer_call_and_return_conditional_losses_3812582#
!dense_135/StatefulPartitionedCall?
activation_228/PartitionedCallPartitionedCall*dense_135/StatefulPartitionedCall:output:0*
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
J__inference_activation_228_layer_call_and_return_conditional_losses_3812792 
activation_228/PartitionedCall?
/batch_normalization_183/StatefulPartitionedCallStatefulPartitionedCall'activation_228/PartitionedCall:output:0batch_normalization_183_381476batch_normalization_183_381478batch_normalization_183_381480batch_normalization_183_381482*
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
S__inference_batch_normalization_183_layer_call_and_return_conditional_losses_38088021
/batch_normalization_183/StatefulPartitionedCall?
dropout_45/PartitionedCallPartitionedCall8batch_normalization_183/StatefulPartitionedCall:output:0*
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
F__inference_dropout_45_layer_call_and_return_conditional_losses_3813392
dropout_45/PartitionedCall?
!dense_136/StatefulPartitionedCallStatefulPartitionedCall#dropout_45/PartitionedCall:output:0dense_136_381486dense_136_381488*
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
E__inference_dense_136_layer_call_and_return_conditional_losses_3813622#
!dense_136/StatefulPartitionedCall?
activation_229/PartitionedCallPartitionedCall*dense_136/StatefulPartitionedCall:output:0*
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
J__inference_activation_229_layer_call_and_return_conditional_losses_3813832 
activation_229/PartitionedCall?
!dense_137/StatefulPartitionedCallStatefulPartitionedCall'activation_229/PartitionedCall:output:0dense_137_381492dense_137_381494*
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
E__inference_dense_137_layer_call_and_return_conditional_losses_3814012#
!dense_137/StatefulPartitionedCall?
IdentityIdentity*dense_137/StatefulPartitionedCall:output:00^batch_normalization_180/StatefulPartitionedCall0^batch_normalization_181/StatefulPartitionedCall0^batch_normalization_182/StatefulPartitionedCall0^batch_normalization_183/StatefulPartitionedCall#^conv2d_135/StatefulPartitionedCall#^conv2d_136/StatefulPartitionedCall#^conv2d_137/StatefulPartitionedCall"^dense_135/StatefulPartitionedCall"^dense_136/StatefulPartitionedCall"^dense_137/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2b
/batch_normalization_180/StatefulPartitionedCall/batch_normalization_180/StatefulPartitionedCall2b
/batch_normalization_181/StatefulPartitionedCall/batch_normalization_181/StatefulPartitionedCall2b
/batch_normalization_182/StatefulPartitionedCall/batch_normalization_182/StatefulPartitionedCall2b
/batch_normalization_183/StatefulPartitionedCall/batch_normalization_183/StatefulPartitionedCall2H
"conv2d_135/StatefulPartitionedCall"conv2d_135/StatefulPartitionedCall2H
"conv2d_136/StatefulPartitionedCall"conv2d_136/StatefulPartitionedCall2H
"conv2d_137/StatefulPartitionedCall"conv2d_137/StatefulPartitionedCall2F
!dense_135/StatefulPartitionedCall!dense_135/StatefulPartitionedCall2F
!dense_136/StatefulPartitionedCall!dense_136/StatefulPartitionedCall2F
!dense_137/StatefulPartitionedCall!dense_137/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????  
"
_user_specified_name
input_46
?

*__inference_dense_135_layer_call_fn_382722

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
E__inference_dense_135_layer_call_and_return_conditional_losses_3812582
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
?
b
F__inference_flatten_45_layer_call_and_return_conditional_losses_382698

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
F__inference_conv2d_135_layer_call_and_return_conditional_losses_382231

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
?
?
+__inference_conv2d_136_layer_call_fn_382397

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
F__inference_conv2d_136_layer_call_and_return_conditional_losses_3810182
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
?
?
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_382602

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
8__inference_batch_normalization_183_layer_call_fn_382814

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
S__inference_batch_normalization_183_layer_call_and_return_conditional_losses_3808802
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
?
)__inference_model_45_layer_call_fn_382221

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
D__inference_model_45_layer_call_and_return_conditional_losses_3817222
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
?
?
+__inference_conv2d_137_layer_call_fn_382554

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
F__inference_conv2d_137_layer_call_and_return_conditional_losses_3811312
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
??
?
D__inference_model_45_layer_call_and_return_conditional_losses_381990

inputs-
)conv2d_135_conv2d_readvariableop_resource.
*conv2d_135_biasadd_readvariableop_resource3
/batch_normalization_180_readvariableop_resource5
1batch_normalization_180_readvariableop_1_resourceD
@batch_normalization_180_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_180_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_136_conv2d_readvariableop_resource.
*conv2d_136_biasadd_readvariableop_resource3
/batch_normalization_181_readvariableop_resource5
1batch_normalization_181_readvariableop_1_resourceD
@batch_normalization_181_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_181_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_137_conv2d_readvariableop_resource.
*conv2d_137_biasadd_readvariableop_resource3
/batch_normalization_182_readvariableop_resource5
1batch_normalization_182_readvariableop_1_resourceD
@batch_normalization_182_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_182_fusedbatchnormv3_readvariableop_1_resource,
(dense_135_matmul_readvariableop_resource-
)dense_135_biasadd_readvariableop_resource2
.batch_normalization_183_assignmovingavg_3819444
0batch_normalization_183_assignmovingavg_1_381950A
=batch_normalization_183_batchnorm_mul_readvariableop_resource=
9batch_normalization_183_batchnorm_readvariableop_resource,
(dense_136_matmul_readvariableop_resource-
)dense_136_biasadd_readvariableop_resource,
(dense_137_matmul_readvariableop_resource-
)dense_137_biasadd_readvariableop_resource
identity??&batch_normalization_180/AssignNewValue?(batch_normalization_180/AssignNewValue_1?7batch_normalization_180/FusedBatchNormV3/ReadVariableOp?9batch_normalization_180/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_180/ReadVariableOp?(batch_normalization_180/ReadVariableOp_1?&batch_normalization_181/AssignNewValue?(batch_normalization_181/AssignNewValue_1?7batch_normalization_181/FusedBatchNormV3/ReadVariableOp?9batch_normalization_181/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_181/ReadVariableOp?(batch_normalization_181/ReadVariableOp_1?&batch_normalization_182/AssignNewValue?(batch_normalization_182/AssignNewValue_1?7batch_normalization_182/FusedBatchNormV3/ReadVariableOp?9batch_normalization_182/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_182/ReadVariableOp?(batch_normalization_182/ReadVariableOp_1?;batch_normalization_183/AssignMovingAvg/AssignSubVariableOp?6batch_normalization_183/AssignMovingAvg/ReadVariableOp?=batch_normalization_183/AssignMovingAvg_1/AssignSubVariableOp?8batch_normalization_183/AssignMovingAvg_1/ReadVariableOp?0batch_normalization_183/batchnorm/ReadVariableOp?4batch_normalization_183/batchnorm/mul/ReadVariableOp?!conv2d_135/BiasAdd/ReadVariableOp? conv2d_135/Conv2D/ReadVariableOp?!conv2d_136/BiasAdd/ReadVariableOp? conv2d_136/Conv2D/ReadVariableOp?!conv2d_137/BiasAdd/ReadVariableOp? conv2d_137/Conv2D/ReadVariableOp? dense_135/BiasAdd/ReadVariableOp?dense_135/MatMul/ReadVariableOp? dense_136/BiasAdd/ReadVariableOp?dense_136/MatMul/ReadVariableOp? dense_137/BiasAdd/ReadVariableOp?dense_137/MatMul/ReadVariableOp?
 conv2d_135/Conv2D/ReadVariableOpReadVariableOp)conv2d_135_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_135/Conv2D/ReadVariableOp?
conv2d_135/Conv2DConv2Dinputs(conv2d_135/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
2
conv2d_135/Conv2D?
!conv2d_135/BiasAdd/ReadVariableOpReadVariableOp*conv2d_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_135/BiasAdd/ReadVariableOp?
conv2d_135/BiasAddBiasAddconv2d_135/Conv2D:output:0)conv2d_135/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  2
conv2d_135/BiasAdd?
activation_225/ReluReluconv2d_135/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  2
activation_225/Relu?
&batch_normalization_180/ReadVariableOpReadVariableOp/batch_normalization_180_readvariableop_resource*
_output_shapes
:*
dtype02(
&batch_normalization_180/ReadVariableOp?
(batch_normalization_180/ReadVariableOp_1ReadVariableOp1batch_normalization_180_readvariableop_1_resource*
_output_shapes
:*
dtype02*
(batch_normalization_180/ReadVariableOp_1?
7batch_normalization_180/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_180_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype029
7batch_normalization_180/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_180/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_180_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02;
9batch_normalization_180/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_180/FusedBatchNormV3FusedBatchNormV3!activation_225/Relu:activations:0.batch_normalization_180/ReadVariableOp:value:00batch_normalization_180/ReadVariableOp_1:value:0?batch_normalization_180/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_180/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_180/FusedBatchNormV3?
&batch_normalization_180/AssignNewValueAssignVariableOp@batch_normalization_180_fusedbatchnormv3_readvariableop_resource5batch_normalization_180/FusedBatchNormV3:batch_mean:08^batch_normalization_180/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*S
_classI
GEloc:@batch_normalization_180/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_180/AssignNewValue?
(batch_normalization_180/AssignNewValue_1AssignVariableOpBbatch_normalization_180_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_180/FusedBatchNormV3:batch_variance:0:^batch_normalization_180/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*U
_classK
IGloc:@batch_normalization_180/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_180/AssignNewValue_1?
max_pooling2d_135/MaxPoolMaxPool,batch_normalization_180/FusedBatchNormV3:y:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_135/MaxPool?
 conv2d_136/Conv2D/ReadVariableOpReadVariableOp)conv2d_136_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_136/Conv2D/ReadVariableOp?
conv2d_136/Conv2DConv2D"max_pooling2d_135/MaxPool:output:0(conv2d_136/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_136/Conv2D?
!conv2d_136/BiasAdd/ReadVariableOpReadVariableOp*conv2d_136_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_136/BiasAdd/ReadVariableOp?
conv2d_136/BiasAddBiasAddconv2d_136/Conv2D:output:0)conv2d_136/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_136/BiasAdd?
activation_226/ReluReluconv2d_136/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
activation_226/Relu?
&batch_normalization_181/ReadVariableOpReadVariableOp/batch_normalization_181_readvariableop_resource*
_output_shapes
: *
dtype02(
&batch_normalization_181/ReadVariableOp?
(batch_normalization_181/ReadVariableOp_1ReadVariableOp1batch_normalization_181_readvariableop_1_resource*
_output_shapes
: *
dtype02*
(batch_normalization_181/ReadVariableOp_1?
7batch_normalization_181/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_181_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype029
7batch_normalization_181/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_181/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_181_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02;
9batch_normalization_181/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_181/FusedBatchNormV3FusedBatchNormV3!activation_226/Relu:activations:0.batch_normalization_181/ReadVariableOp:value:00batch_normalization_181/ReadVariableOp_1:value:0?batch_normalization_181/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_181/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_181/FusedBatchNormV3?
&batch_normalization_181/AssignNewValueAssignVariableOp@batch_normalization_181_fusedbatchnormv3_readvariableop_resource5batch_normalization_181/FusedBatchNormV3:batch_mean:08^batch_normalization_181/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*S
_classI
GEloc:@batch_normalization_181/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_181/AssignNewValue?
(batch_normalization_181/AssignNewValue_1AssignVariableOpBbatch_normalization_181_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_181/FusedBatchNormV3:batch_variance:0:^batch_normalization_181/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*U
_classK
IGloc:@batch_normalization_181/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_181/AssignNewValue_1?
max_pooling2d_136/MaxPoolMaxPool,batch_normalization_181/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_136/MaxPool?
 conv2d_137/Conv2D/ReadVariableOpReadVariableOp)conv2d_137_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_137/Conv2D/ReadVariableOp?
conv2d_137/Conv2DConv2D"max_pooling2d_136/MaxPool:output:0(conv2d_137/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_137/Conv2D?
!conv2d_137/BiasAdd/ReadVariableOpReadVariableOp*conv2d_137_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_137/BiasAdd/ReadVariableOp?
conv2d_137/BiasAddBiasAddconv2d_137/Conv2D:output:0)conv2d_137/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_137/BiasAdd?
activation_227/ReluReluconv2d_137/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_227/Relu?
&batch_normalization_182/ReadVariableOpReadVariableOp/batch_normalization_182_readvariableop_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_182/ReadVariableOp?
(batch_normalization_182/ReadVariableOp_1ReadVariableOp1batch_normalization_182_readvariableop_1_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_182/ReadVariableOp_1?
7batch_normalization_182/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_182_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype029
7batch_normalization_182/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_182/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_182_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9batch_normalization_182/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_182/FusedBatchNormV3FusedBatchNormV3!activation_227/Relu:activations:0.batch_normalization_182/ReadVariableOp:value:00batch_normalization_182/ReadVariableOp_1:value:0?batch_normalization_182/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_182/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_182/FusedBatchNormV3?
&batch_normalization_182/AssignNewValueAssignVariableOp@batch_normalization_182_fusedbatchnormv3_readvariableop_resource5batch_normalization_182/FusedBatchNormV3:batch_mean:08^batch_normalization_182/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*S
_classI
GEloc:@batch_normalization_182/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_182/AssignNewValue?
(batch_normalization_182/AssignNewValue_1AssignVariableOpBbatch_normalization_182_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_182/FusedBatchNormV3:batch_variance:0:^batch_normalization_182/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*U
_classK
IGloc:@batch_normalization_182/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_182/AssignNewValue_1?
max_pooling2d_137/MaxPoolMaxPool,batch_normalization_182/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_137/MaxPoolu
flatten_45/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_45/Const?
flatten_45/ReshapeReshape"max_pooling2d_137/MaxPool:output:0flatten_45/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_45/Reshape?
dense_135/MatMul/ReadVariableOpReadVariableOp(dense_135_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
dense_135/MatMul/ReadVariableOp?
dense_135/MatMulMatMulflatten_45/Reshape:output:0'dense_135/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_135/MatMul?
 dense_135/BiasAdd/ReadVariableOpReadVariableOp)dense_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_135/BiasAdd/ReadVariableOp?
dense_135/BiasAddBiasAdddense_135/MatMul:product:0(dense_135/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_135/BiasAdd?
activation_228/ReluReludense_135/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_228/Relu?
6batch_normalization_183/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 28
6batch_normalization_183/moments/mean/reduction_indices?
$batch_normalization_183/moments/meanMean!activation_228/Relu:activations:0?batch_normalization_183/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2&
$batch_normalization_183/moments/mean?
,batch_normalization_183/moments/StopGradientStopGradient-batch_normalization_183/moments/mean:output:0*
T0*
_output_shapes

:2.
,batch_normalization_183/moments/StopGradient?
1batch_normalization_183/moments/SquaredDifferenceSquaredDifference!activation_228/Relu:activations:05batch_normalization_183/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????23
1batch_normalization_183/moments/SquaredDifference?
:batch_normalization_183/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2<
:batch_normalization_183/moments/variance/reduction_indices?
(batch_normalization_183/moments/varianceMean5batch_normalization_183/moments/SquaredDifference:z:0Cbatch_normalization_183/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2*
(batch_normalization_183/moments/variance?
'batch_normalization_183/moments/SqueezeSqueeze-batch_normalization_183/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2)
'batch_normalization_183/moments/Squeeze?
)batch_normalization_183/moments/Squeeze_1Squeeze1batch_normalization_183/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2+
)batch_normalization_183/moments/Squeeze_1?
-batch_normalization_183/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_183/AssignMovingAvg/381944*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_183/AssignMovingAvg/decay?
6batch_normalization_183/AssignMovingAvg/ReadVariableOpReadVariableOp.batch_normalization_183_assignmovingavg_381944*
_output_shapes
:*
dtype028
6batch_normalization_183/AssignMovingAvg/ReadVariableOp?
+batch_normalization_183/AssignMovingAvg/subSub>batch_normalization_183/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_183/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_183/AssignMovingAvg/381944*
_output_shapes
:2-
+batch_normalization_183/AssignMovingAvg/sub?
+batch_normalization_183/AssignMovingAvg/mulMul/batch_normalization_183/AssignMovingAvg/sub:z:06batch_normalization_183/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_183/AssignMovingAvg/381944*
_output_shapes
:2-
+batch_normalization_183/AssignMovingAvg/mul?
;batch_normalization_183/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp.batch_normalization_183_assignmovingavg_381944/batch_normalization_183/AssignMovingAvg/mul:z:07^batch_normalization_183/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_183/AssignMovingAvg/381944*
_output_shapes
 *
dtype02=
;batch_normalization_183/AssignMovingAvg/AssignSubVariableOp?
/batch_normalization_183/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_183/AssignMovingAvg_1/381950*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/batch_normalization_183/AssignMovingAvg_1/decay?
8batch_normalization_183/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch_normalization_183_assignmovingavg_1_381950*
_output_shapes
:*
dtype02:
8batch_normalization_183/AssignMovingAvg_1/ReadVariableOp?
-batch_normalization_183/AssignMovingAvg_1/subSub@batch_normalization_183/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_183/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_183/AssignMovingAvg_1/381950*
_output_shapes
:2/
-batch_normalization_183/AssignMovingAvg_1/sub?
-batch_normalization_183/AssignMovingAvg_1/mulMul1batch_normalization_183/AssignMovingAvg_1/sub:z:08batch_normalization_183/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_183/AssignMovingAvg_1/381950*
_output_shapes
:2/
-batch_normalization_183/AssignMovingAvg_1/mul?
=batch_normalization_183/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp0batch_normalization_183_assignmovingavg_1_3819501batch_normalization_183/AssignMovingAvg_1/mul:z:09^batch_normalization_183/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_183/AssignMovingAvg_1/381950*
_output_shapes
 *
dtype02?
=batch_normalization_183/AssignMovingAvg_1/AssignSubVariableOp?
'batch_normalization_183/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2)
'batch_normalization_183/batchnorm/add/y?
%batch_normalization_183/batchnorm/addAddV22batch_normalization_183/moments/Squeeze_1:output:00batch_normalization_183/batchnorm/add/y:output:0*
T0*
_output_shapes
:2'
%batch_normalization_183/batchnorm/add?
'batch_normalization_183/batchnorm/RsqrtRsqrt)batch_normalization_183/batchnorm/add:z:0*
T0*
_output_shapes
:2)
'batch_normalization_183/batchnorm/Rsqrt?
4batch_normalization_183/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_183_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization_183/batchnorm/mul/ReadVariableOp?
%batch_normalization_183/batchnorm/mulMul+batch_normalization_183/batchnorm/Rsqrt:y:0<batch_normalization_183/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2'
%batch_normalization_183/batchnorm/mul?
'batch_normalization_183/batchnorm/mul_1Mul!activation_228/Relu:activations:0)batch_normalization_183/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2)
'batch_normalization_183/batchnorm/mul_1?
'batch_normalization_183/batchnorm/mul_2Mul0batch_normalization_183/moments/Squeeze:output:0)batch_normalization_183/batchnorm/mul:z:0*
T0*
_output_shapes
:2)
'batch_normalization_183/batchnorm/mul_2?
0batch_normalization_183/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_183_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype022
0batch_normalization_183/batchnorm/ReadVariableOp?
%batch_normalization_183/batchnorm/subSub8batch_normalization_183/batchnorm/ReadVariableOp:value:0+batch_normalization_183/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2'
%batch_normalization_183/batchnorm/sub?
'batch_normalization_183/batchnorm/add_1AddV2+batch_normalization_183/batchnorm/mul_1:z:0)batch_normalization_183/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2)
'batch_normalization_183/batchnorm/add_1y
dropout_45/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_45/dropout/Const?
dropout_45/dropout/MulMul+batch_normalization_183/batchnorm/add_1:z:0!dropout_45/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_45/dropout/Mul?
dropout_45/dropout/ShapeShape+batch_normalization_183/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_45/dropout/Shape?
/dropout_45/dropout/random_uniform/RandomUniformRandomUniform!dropout_45/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype021
/dropout_45/dropout/random_uniform/RandomUniform?
!dropout_45/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_45/dropout/GreaterEqual/y?
dropout_45/dropout/GreaterEqualGreaterEqual8dropout_45/dropout/random_uniform/RandomUniform:output:0*dropout_45/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2!
dropout_45/dropout/GreaterEqual?
dropout_45/dropout/CastCast#dropout_45/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_45/dropout/Cast?
dropout_45/dropout/Mul_1Muldropout_45/dropout/Mul:z:0dropout_45/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_45/dropout/Mul_1?
dense_136/MatMul/ReadVariableOpReadVariableOp(dense_136_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_136/MatMul/ReadVariableOp?
dense_136/MatMulMatMuldropout_45/dropout/Mul_1:z:0'dense_136/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_136/MatMul?
 dense_136/BiasAdd/ReadVariableOpReadVariableOp)dense_136_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_136/BiasAdd/ReadVariableOp?
dense_136/BiasAddBiasAdddense_136/MatMul:product:0(dense_136/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_136/BiasAdd?
activation_229/ReluReludense_136/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_229/Relu?
dense_137/MatMul/ReadVariableOpReadVariableOp(dense_137_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_137/MatMul/ReadVariableOp?
dense_137/MatMulMatMul!activation_229/Relu:activations:0'dense_137/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_137/MatMul?
 dense_137/BiasAdd/ReadVariableOpReadVariableOp)dense_137_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_137/BiasAdd/ReadVariableOp?
dense_137/BiasAddBiasAdddense_137/MatMul:product:0(dense_137/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_137/BiasAdd?
IdentityIdentitydense_137/BiasAdd:output:0'^batch_normalization_180/AssignNewValue)^batch_normalization_180/AssignNewValue_18^batch_normalization_180/FusedBatchNormV3/ReadVariableOp:^batch_normalization_180/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_180/ReadVariableOp)^batch_normalization_180/ReadVariableOp_1'^batch_normalization_181/AssignNewValue)^batch_normalization_181/AssignNewValue_18^batch_normalization_181/FusedBatchNormV3/ReadVariableOp:^batch_normalization_181/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_181/ReadVariableOp)^batch_normalization_181/ReadVariableOp_1'^batch_normalization_182/AssignNewValue)^batch_normalization_182/AssignNewValue_18^batch_normalization_182/FusedBatchNormV3/ReadVariableOp:^batch_normalization_182/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_182/ReadVariableOp)^batch_normalization_182/ReadVariableOp_1<^batch_normalization_183/AssignMovingAvg/AssignSubVariableOp7^batch_normalization_183/AssignMovingAvg/ReadVariableOp>^batch_normalization_183/AssignMovingAvg_1/AssignSubVariableOp9^batch_normalization_183/AssignMovingAvg_1/ReadVariableOp1^batch_normalization_183/batchnorm/ReadVariableOp5^batch_normalization_183/batchnorm/mul/ReadVariableOp"^conv2d_135/BiasAdd/ReadVariableOp!^conv2d_135/Conv2D/ReadVariableOp"^conv2d_136/BiasAdd/ReadVariableOp!^conv2d_136/Conv2D/ReadVariableOp"^conv2d_137/BiasAdd/ReadVariableOp!^conv2d_137/Conv2D/ReadVariableOp!^dense_135/BiasAdd/ReadVariableOp ^dense_135/MatMul/ReadVariableOp!^dense_136/BiasAdd/ReadVariableOp ^dense_136/MatMul/ReadVariableOp!^dense_137/BiasAdd/ReadVariableOp ^dense_137/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????  ::::::::::::::::::::::::::::2P
&batch_normalization_180/AssignNewValue&batch_normalization_180/AssignNewValue2T
(batch_normalization_180/AssignNewValue_1(batch_normalization_180/AssignNewValue_12r
7batch_normalization_180/FusedBatchNormV3/ReadVariableOp7batch_normalization_180/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_180/FusedBatchNormV3/ReadVariableOp_19batch_normalization_180/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_180/ReadVariableOp&batch_normalization_180/ReadVariableOp2T
(batch_normalization_180/ReadVariableOp_1(batch_normalization_180/ReadVariableOp_12P
&batch_normalization_181/AssignNewValue&batch_normalization_181/AssignNewValue2T
(batch_normalization_181/AssignNewValue_1(batch_normalization_181/AssignNewValue_12r
7batch_normalization_181/FusedBatchNormV3/ReadVariableOp7batch_normalization_181/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_181/FusedBatchNormV3/ReadVariableOp_19batch_normalization_181/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_181/ReadVariableOp&batch_normalization_181/ReadVariableOp2T
(batch_normalization_181/ReadVariableOp_1(batch_normalization_181/ReadVariableOp_12P
&batch_normalization_182/AssignNewValue&batch_normalization_182/AssignNewValue2T
(batch_normalization_182/AssignNewValue_1(batch_normalization_182/AssignNewValue_12r
7batch_normalization_182/FusedBatchNormV3/ReadVariableOp7batch_normalization_182/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_182/FusedBatchNormV3/ReadVariableOp_19batch_normalization_182/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_182/ReadVariableOp&batch_normalization_182/ReadVariableOp2T
(batch_normalization_182/ReadVariableOp_1(batch_normalization_182/ReadVariableOp_12z
;batch_normalization_183/AssignMovingAvg/AssignSubVariableOp;batch_normalization_183/AssignMovingAvg/AssignSubVariableOp2p
6batch_normalization_183/AssignMovingAvg/ReadVariableOp6batch_normalization_183/AssignMovingAvg/ReadVariableOp2~
=batch_normalization_183/AssignMovingAvg_1/AssignSubVariableOp=batch_normalization_183/AssignMovingAvg_1/AssignSubVariableOp2t
8batch_normalization_183/AssignMovingAvg_1/ReadVariableOp8batch_normalization_183/AssignMovingAvg_1/ReadVariableOp2d
0batch_normalization_183/batchnorm/ReadVariableOp0batch_normalization_183/batchnorm/ReadVariableOp2l
4batch_normalization_183/batchnorm/mul/ReadVariableOp4batch_normalization_183/batchnorm/mul/ReadVariableOp2F
!conv2d_135/BiasAdd/ReadVariableOp!conv2d_135/BiasAdd/ReadVariableOp2D
 conv2d_135/Conv2D/ReadVariableOp conv2d_135/Conv2D/ReadVariableOp2F
!conv2d_136/BiasAdd/ReadVariableOp!conv2d_136/BiasAdd/ReadVariableOp2D
 conv2d_136/Conv2D/ReadVariableOp conv2d_136/Conv2D/ReadVariableOp2F
!conv2d_137/BiasAdd/ReadVariableOp!conv2d_137/BiasAdd/ReadVariableOp2D
 conv2d_137/Conv2D/ReadVariableOp conv2d_137/Conv2D/ReadVariableOp2D
 dense_135/BiasAdd/ReadVariableOp dense_135/BiasAdd/ReadVariableOp2B
dense_135/MatMul/ReadVariableOpdense_135/MatMul/ReadVariableOp2D
 dense_136/BiasAdd/ReadVariableOp dense_136/BiasAdd/ReadVariableOp2B
dense_136/MatMul/ReadVariableOpdense_136/MatMul/ReadVariableOp2D
 dense_137/BiasAdd/ReadVariableOp dense_137/BiasAdd/ReadVariableOp2B
dense_137/MatMul/ReadVariableOpdense_137/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_135_layer_call_and_return_conditional_losses_380513

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
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_380496

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
E__inference_dense_137_layer_call_and_return_conditional_losses_382880

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
?
f
J__inference_activation_229_layer_call_and_return_conditional_losses_382865

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
?
b
F__inference_flatten_45_layer_call_and_return_conditional_losses_381240

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
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_381197

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
?
?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_382445

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
?
f
J__inference_activation_229_layer_call_and_return_conditional_losses_381383

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
?
?
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_382648

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
?
?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_380953

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
?0
?
S__inference_batch_normalization_183_layer_call_and_return_conditional_losses_380847

inputs
assignmovingavg_380822
assignmovingavg_1_380828)
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
loc:@AssignMovingAvg/380822*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_380822*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/380822*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/380822*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_380822AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/380822*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/380828*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_380828*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/380828*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/380828*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_380828AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/380828*
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
8__inference_batch_normalization_181_layer_call_fn_382522

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
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_3810662
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
8__inference_batch_normalization_183_layer_call_fn_382801

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
S__inference_batch_normalization_183_layer_call_and_return_conditional_losses_3808472
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
*__inference_dense_136_layer_call_fn_382860

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
E__inference_dense_136_layer_call_and_return_conditional_losses_3813622
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
/__inference_activation_227_layer_call_fn_382564

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
J__inference_activation_227_layer_call_and_return_conditional_losses_3811522
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
?

*__inference_dense_137_layer_call_fn_382889

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
E__inference_dense_137_layer_call_and_return_conditional_losses_3814012
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
?
?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_382427

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
?
F__inference_conv2d_136_layer_call_and_return_conditional_losses_382388

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
M__inference_max_pooling2d_136_layer_call_and_return_conditional_losses_380629

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
input_469
serving_default_input_46:0?????????  =
	dense_1370
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
regularization_losses
trainable_variables
	variables
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"??
_tf_keras_networkߗ{"class_name": "Functional", "name": "model_45", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_45", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_46"}, "name": "input_46", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_135", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_135", "inbound_nodes": [[["input_46", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_225", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_225", "inbound_nodes": [[["conv2d_135", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_180", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_180", "inbound_nodes": [[["activation_225", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_135", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_135", "inbound_nodes": [[["batch_normalization_180", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_136", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_136", "inbound_nodes": [[["max_pooling2d_135", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_226", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_226", "inbound_nodes": [[["conv2d_136", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_181", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_181", "inbound_nodes": [[["activation_226", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_136", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_136", "inbound_nodes": [[["batch_normalization_181", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_137", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_137", "inbound_nodes": [[["max_pooling2d_136", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_227", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_227", "inbound_nodes": [[["conv2d_137", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_182", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_182", "inbound_nodes": [[["activation_227", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_137", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_137", "inbound_nodes": [[["batch_normalization_182", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_45", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_45", "inbound_nodes": [[["max_pooling2d_137", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_135", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_135", "inbound_nodes": [[["flatten_45", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_228", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_228", "inbound_nodes": [[["dense_135", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_183", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_183", "inbound_nodes": [[["activation_228", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_45", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_45", "inbound_nodes": [[["batch_normalization_183", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_136", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_136", "inbound_nodes": [[["dropout_45", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_229", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_229", "inbound_nodes": [[["dense_136", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_137", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_137", "inbound_nodes": [[["activation_229", 0, 0, {}]]]}], "input_layers": [["input_46", 0, 0]], "output_layers": [["dense_137", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_45", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_46"}, "name": "input_46", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_135", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_135", "inbound_nodes": [[["input_46", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_225", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_225", "inbound_nodes": [[["conv2d_135", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_180", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_180", "inbound_nodes": [[["activation_225", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_135", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_135", "inbound_nodes": [[["batch_normalization_180", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_136", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_136", "inbound_nodes": [[["max_pooling2d_135", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_226", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_226", "inbound_nodes": [[["conv2d_136", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_181", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_181", "inbound_nodes": [[["activation_226", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_136", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_136", "inbound_nodes": [[["batch_normalization_181", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_137", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_137", "inbound_nodes": [[["max_pooling2d_136", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_227", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_227", "inbound_nodes": [[["conv2d_137", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_182", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_182", "inbound_nodes": [[["activation_227", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_137", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_137", "inbound_nodes": [[["batch_normalization_182", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_45", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_45", "inbound_nodes": [[["max_pooling2d_137", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_135", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_135", "inbound_nodes": [[["flatten_45", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_228", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_228", "inbound_nodes": [[["dense_135", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_183", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_183", "inbound_nodes": [[["activation_228", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_45", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_45", "inbound_nodes": [[["batch_normalization_183", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_136", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_136", "inbound_nodes": [[["dropout_45", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_229", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_229", "inbound_nodes": [[["dense_136", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_137", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_137", "inbound_nodes": [[["activation_229", 0, 0, {}]]]}], "input_layers": [["input_46", 0, 0]], "output_layers": [["dense_137", 0, 0]]}}, "training_config": {"loss": "mean_absolute_percentage_error", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 4.999999873689376e-06, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_46", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_46"}}
?	

kernel
bias
regularization_losses
trainable_variables
 	variables
!	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_135", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_135", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
?
"regularization_losses
#trainable_variables
$	variables
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_225", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_225", "trainable": true, "dtype": "float32", "activation": "relu"}}
?	
&axis
	'gamma
(beta
)moving_mean
*moving_variance
+regularization_losses
,trainable_variables
-	variables
.	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_180", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_180", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 16]}}
?
/regularization_losses
0trainable_variables
1	variables
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_135", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_135", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

3kernel
4bias
5regularization_losses
6trainable_variables
7	variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_136", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_136", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 16]}}
?
9regularization_losses
:trainable_variables
;	variables
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_226", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_226", "trainable": true, "dtype": "float32", "activation": "relu"}}
?	
=axis
	>gamma
?beta
@moving_mean
Amoving_variance
Bregularization_losses
Ctrainable_variables
D	variables
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_181", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_181", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
?
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_136", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_136", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

Jkernel
Kbias
Lregularization_losses
Mtrainable_variables
N	variables
O	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_137", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_137", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 32]}}
?
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_227", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_227", "trainable": true, "dtype": "float32", "activation": "relu"}}
?	
Taxis
	Ugamma
Vbeta
Wmoving_mean
Xmoving_variance
Yregularization_losses
Ztrainable_variables
[	variables
\	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_182", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_182", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
?
]regularization_losses
^trainable_variables
_	variables
`	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_137", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_137", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
aregularization_losses
btrainable_variables
c	variables
d	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_45", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_45", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

ekernel
fbias
gregularization_losses
htrainable_variables
i	variables
j	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_135", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_135", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?
kregularization_losses
ltrainable_variables
m	variables
n	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_228", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_228", "trainable": true, "dtype": "float32", "activation": "relu"}}
?	
oaxis
	pgamma
qbeta
rmoving_mean
smoving_variance
tregularization_losses
utrainable_variables
v	variables
w	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_183", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_183", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
?
xregularization_losses
ytrainable_variables
z	variables
{	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_45", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_45", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
?

|kernel
}bias
~regularization_losses
trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_136", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_136", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_229", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_229", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_137", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_137", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4]}}
?
	?iter
?beta_1
?beta_2

?decay
?learning_ratem?m?'m?(m?3m?4m?>m??m?Jm?Km?Um?Vm?em?fm?pm?qm?|m?}m?	?m?	?m?v?v?'v?(v?3v?4v?>v??v?Jv?Kv?Uv?Vv?ev?fv?pv?qv?|v?}v?	?v?	?v?"
	optimizer
 "
trackable_list_wrapper
?
0
1
'2
(3
34
45
>6
?7
J8
K9
U10
V11
e12
f13
p14
q15
|16
}17
?18
?19"
trackable_list_wrapper
?
0
1
'2
(3
)4
*5
36
47
>8
?9
@10
A11
J12
K13
U14
V15
W16
X17
e18
f19
p20
q21
r22
s23
|24
}25
?26
?27"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
regularization_losses
trainable_variables
?layers
	variables
?non_trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
+:)2conv2d_135/kernel
:2conv2d_135/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
regularization_losses
trainable_variables
?layers
 	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
"regularization_losses
#trainable_variables
?layers
$	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)2batch_normalization_180/gamma
*:(2batch_normalization_180/beta
3:1 (2#batch_normalization_180/moving_mean
7:5 (2'batch_normalization_180/moving_variance
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
<
'0
(1
)2
*3"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
+regularization_losses
,trainable_variables
?layers
-	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
/regularization_losses
0trainable_variables
?layers
1	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:) 2conv2d_136/kernel
: 2conv2d_136/bias
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
9regularization_losses
:trainable_variables
?layers
;	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:) 2batch_normalization_181/gamma
*:( 2batch_normalization_181/beta
3:1  (2#batch_normalization_181/moving_mean
7:5  (2'batch_normalization_181/moving_variance
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
<
>0
?1
@2
A3"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
Bregularization_losses
Ctrainable_variables
?layers
D	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
Fregularization_losses
Gtrainable_variables
?layers
H	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:) @2conv2d_137/kernel
:@2conv2d_137/bias
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
Lregularization_losses
Mtrainable_variables
?layers
N	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
 "
trackable_list_wrapper
+:)@2batch_normalization_182/gamma
*:(@2batch_normalization_182/beta
3:1@ (2#batch_normalization_182/moving_mean
7:5@ (2'batch_normalization_182/moving_variance
 "
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
<
U0
V1
W2
X3"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
Yregularization_losses
Ztrainable_variables
?layers
[	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
]regularization_losses
^trainable_variables
?layers
_	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
aregularization_losses
btrainable_variables
?layers
c	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!	?2dense_135/kernel
:2dense_135/bias
 "
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
gregularization_losses
htrainable_variables
?layers
i	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
+:)2batch_normalization_183/gamma
*:(2batch_normalization_183/beta
3:1 (2#batch_normalization_183/moving_mean
7:5 (2'batch_normalization_183/moving_variance
 "
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
<
p0
q1
r2
s3"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
tregularization_losses
utrainable_variables
?layers
v	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
xregularization_losses
ytrainable_variables
?layers
z	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 2dense_136/kernel
:2dense_136/bias
 "
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layer_metrics
~regularization_losses
trainable_variables
?layers
?	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
": 2dense_137/kernel
:2dense_137/bias
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
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
(
?0"
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
X
)0
*1
@2
A3
W4
X5
r6
s7"
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
)0
*1"
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
@0
A1"
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
W0
X1"
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
.
r0
s1"
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

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
0:.2Adam/conv2d_135/kernel/m
": 2Adam/conv2d_135/bias/m
0:.2$Adam/batch_normalization_180/gamma/m
/:-2#Adam/batch_normalization_180/beta/m
0:. 2Adam/conv2d_136/kernel/m
":  2Adam/conv2d_136/bias/m
0:. 2$Adam/batch_normalization_181/gamma/m
/:- 2#Adam/batch_normalization_181/beta/m
0:. @2Adam/conv2d_137/kernel/m
": @2Adam/conv2d_137/bias/m
0:.@2$Adam/batch_normalization_182/gamma/m
/:-@2#Adam/batch_normalization_182/beta/m
(:&	?2Adam/dense_135/kernel/m
!:2Adam/dense_135/bias/m
0:.2$Adam/batch_normalization_183/gamma/m
/:-2#Adam/batch_normalization_183/beta/m
':%2Adam/dense_136/kernel/m
!:2Adam/dense_136/bias/m
':%2Adam/dense_137/kernel/m
!:2Adam/dense_137/bias/m
0:.2Adam/conv2d_135/kernel/v
": 2Adam/conv2d_135/bias/v
0:.2$Adam/batch_normalization_180/gamma/v
/:-2#Adam/batch_normalization_180/beta/v
0:. 2Adam/conv2d_136/kernel/v
":  2Adam/conv2d_136/bias/v
0:. 2$Adam/batch_normalization_181/gamma/v
/:- 2#Adam/batch_normalization_181/beta/v
0:. @2Adam/conv2d_137/kernel/v
": @2Adam/conv2d_137/bias/v
0:.@2$Adam/batch_normalization_182/gamma/v
/:-@2#Adam/batch_normalization_182/beta/v
(:&	?2Adam/dense_135/kernel/v
!:2Adam/dense_135/bias/v
0:.2$Adam/batch_normalization_183/gamma/v
/:-2#Adam/batch_normalization_183/beta/v
':%2Adam/dense_136/kernel/v
!:2Adam/dense_136/bias/v
':%2Adam/dense_137/kernel/v
!:2Adam/dense_137/bias/v
?2?
)__inference_model_45_layer_call_fn_382221
)__inference_model_45_layer_call_fn_381640
)__inference_model_45_layer_call_fn_381781
)__inference_model_45_layer_call_fn_382160?
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
D__inference_model_45_layer_call_and_return_conditional_losses_381418
D__inference_model_45_layer_call_and_return_conditional_losses_381990
D__inference_model_45_layer_call_and_return_conditional_losses_382099
D__inference_model_45_layer_call_and_return_conditional_losses_381498?
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
!__inference__wrapped_model_380403?
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
input_46?????????  
?2?
+__inference_conv2d_135_layer_call_fn_382240?
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
F__inference_conv2d_135_layer_call_and_return_conditional_losses_382231?
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
/__inference_activation_225_layer_call_fn_382250?
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
J__inference_activation_225_layer_call_and_return_conditional_losses_382245?
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
8__inference_batch_normalization_180_layer_call_fn_382378
8__inference_batch_normalization_180_layer_call_fn_382301
8__inference_batch_normalization_180_layer_call_fn_382314
8__inference_batch_normalization_180_layer_call_fn_382365?
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
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_382334
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_382352
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_382270
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_382288?
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
2__inference_max_pooling2d_135_layer_call_fn_380519?
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
M__inference_max_pooling2d_135_layer_call_and_return_conditional_losses_380513?
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
+__inference_conv2d_136_layer_call_fn_382397?
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
F__inference_conv2d_136_layer_call_and_return_conditional_losses_382388?
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
/__inference_activation_226_layer_call_fn_382407?
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
J__inference_activation_226_layer_call_and_return_conditional_losses_382402?
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
8__inference_batch_normalization_181_layer_call_fn_382522
8__inference_batch_normalization_181_layer_call_fn_382471
8__inference_batch_normalization_181_layer_call_fn_382535
8__inference_batch_normalization_181_layer_call_fn_382458?
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
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_382491
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_382427
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_382509
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_382445?
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
2__inference_max_pooling2d_136_layer_call_fn_380635?
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
M__inference_max_pooling2d_136_layer_call_and_return_conditional_losses_380629?
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
+__inference_conv2d_137_layer_call_fn_382554?
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
F__inference_conv2d_137_layer_call_and_return_conditional_losses_382545?
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
/__inference_activation_227_layer_call_fn_382564?
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
J__inference_activation_227_layer_call_and_return_conditional_losses_382559?
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
8__inference_batch_normalization_182_layer_call_fn_382692
8__inference_batch_normalization_182_layer_call_fn_382615
8__inference_batch_normalization_182_layer_call_fn_382628
8__inference_batch_normalization_182_layer_call_fn_382679?
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
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_382648
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_382602
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_382666
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_382584?
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
2__inference_max_pooling2d_137_layer_call_fn_380751?
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
M__inference_max_pooling2d_137_layer_call_and_return_conditional_losses_380745?
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
+__inference_flatten_45_layer_call_fn_382703?
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
F__inference_flatten_45_layer_call_and_return_conditional_losses_382698?
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
*__inference_dense_135_layer_call_fn_382722?
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
E__inference_dense_135_layer_call_and_return_conditional_losses_382713?
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
/__inference_activation_228_layer_call_fn_382732?
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
J__inference_activation_228_layer_call_and_return_conditional_losses_382727?
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
8__inference_batch_normalization_183_layer_call_fn_382814
8__inference_batch_normalization_183_layer_call_fn_382801?
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
S__inference_batch_normalization_183_layer_call_and_return_conditional_losses_382788
S__inference_batch_normalization_183_layer_call_and_return_conditional_losses_382768?
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
+__inference_dropout_45_layer_call_fn_382841
+__inference_dropout_45_layer_call_fn_382836?
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
F__inference_dropout_45_layer_call_and_return_conditional_losses_382831
F__inference_dropout_45_layer_call_and_return_conditional_losses_382826?
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
*__inference_dense_136_layer_call_fn_382860?
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
E__inference_dense_136_layer_call_and_return_conditional_losses_382851?
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
/__inference_activation_229_layer_call_fn_382870?
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
J__inference_activation_229_layer_call_and_return_conditional_losses_382865?
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
*__inference_dense_137_layer_call_fn_382889?
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
E__inference_dense_137_layer_call_and_return_conditional_losses_382880?
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
$__inference_signature_wrapper_381852input_46"?
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
!__inference__wrapped_model_380403?'()*34>?@AJKUVWXefsprq|}??9?6
/?,
*?'
input_46?????????  
? "5?2
0
	dense_137#? 
	dense_137??????????
J__inference_activation_225_layer_call_and_return_conditional_losses_382245h7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????  
? ?
/__inference_activation_225_layer_call_fn_382250[7?4
-?*
(?%
inputs?????????  
? " ??????????  ?
J__inference_activation_226_layer_call_and_return_conditional_losses_382402h7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
/__inference_activation_226_layer_call_fn_382407[7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
J__inference_activation_227_layer_call_and_return_conditional_losses_382559h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
/__inference_activation_227_layer_call_fn_382564[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
J__inference_activation_228_layer_call_and_return_conditional_losses_382727X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
/__inference_activation_228_layer_call_fn_382732K/?,
%?"
 ?
inputs?????????
? "???????????
J__inference_activation_229_layer_call_and_return_conditional_losses_382865X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
/__inference_activation_229_layer_call_fn_382870K/?,
%?"
 ?
inputs?????????
? "???????????
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_382270r'()*;?8
1?.
(?%
inputs?????????  
p
? "-?*
#? 
0?????????  
? ?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_382288r'()*;?8
1?.
(?%
inputs?????????  
p 
? "-?*
#? 
0?????????  
? ?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_382334?'()*M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_382352?'()*M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
8__inference_batch_normalization_180_layer_call_fn_382301e'()*;?8
1?.
(?%
inputs?????????  
p
? " ??????????  ?
8__inference_batch_normalization_180_layer_call_fn_382314e'()*;?8
1?.
(?%
inputs?????????  
p 
? " ??????????  ?
8__inference_batch_normalization_180_layer_call_fn_382365?'()*M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
8__inference_batch_normalization_180_layer_call_fn_382378?'()*M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_382427?>?@AM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_382445?>?@AM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_382491r>?@A;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_382509r>?@A;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
8__inference_batch_normalization_181_layer_call_fn_382458?>?@AM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
8__inference_batch_normalization_181_layer_call_fn_382471?>?@AM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
8__inference_batch_normalization_181_layer_call_fn_382522e>?@A;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
8__inference_batch_normalization_181_layer_call_fn_382535e>?@A;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_382584rUVWX;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_382602rUVWX;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_382648?UVWXM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
S__inference_batch_normalization_182_layer_call_and_return_conditional_losses_382666?UVWXM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
8__inference_batch_normalization_182_layer_call_fn_382615eUVWX;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
8__inference_batch_normalization_182_layer_call_fn_382628eUVWX;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
8__inference_batch_normalization_182_layer_call_fn_382679?UVWXM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
8__inference_batch_normalization_182_layer_call_fn_382692?UVWXM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
S__inference_batch_normalization_183_layer_call_and_return_conditional_losses_382768brspq3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
S__inference_batch_normalization_183_layer_call_and_return_conditional_losses_382788bsprq3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
8__inference_batch_normalization_183_layer_call_fn_382801Urspq3?0
)?&
 ?
inputs?????????
p
? "???????????
8__inference_batch_normalization_183_layer_call_fn_382814Usprq3?0
)?&
 ?
inputs?????????
p 
? "???????????
F__inference_conv2d_135_layer_call_and_return_conditional_losses_382231l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????  
? ?
+__inference_conv2d_135_layer_call_fn_382240_7?4
-?*
(?%
inputs?????????  
? " ??????????  ?
F__inference_conv2d_136_layer_call_and_return_conditional_losses_382388l347?4
-?*
(?%
inputs?????????
? "-?*
#? 
0????????? 
? ?
+__inference_conv2d_136_layer_call_fn_382397_347?4
-?*
(?%
inputs?????????
? " ?????????? ?
F__inference_conv2d_137_layer_call_and_return_conditional_losses_382545lJK7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
+__inference_conv2d_137_layer_call_fn_382554_JK7?4
-?*
(?%
inputs????????? 
? " ??????????@?
E__inference_dense_135_layer_call_and_return_conditional_losses_382713]ef0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ~
*__inference_dense_135_layer_call_fn_382722Pef0?-
&?#
!?
inputs??????????
? "???????????
E__inference_dense_136_layer_call_and_return_conditional_losses_382851\|}/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
*__inference_dense_136_layer_call_fn_382860O|}/?,
%?"
 ?
inputs?????????
? "???????????
E__inference_dense_137_layer_call_and_return_conditional_losses_382880^??/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? 
*__inference_dense_137_layer_call_fn_382889Q??/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_dropout_45_layer_call_and_return_conditional_losses_382826\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
F__inference_dropout_45_layer_call_and_return_conditional_losses_382831\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ~
+__inference_dropout_45_layer_call_fn_382836O3?0
)?&
 ?
inputs?????????
p
? "??????????~
+__inference_dropout_45_layer_call_fn_382841O3?0
)?&
 ?
inputs?????????
p 
? "???????????
F__inference_flatten_45_layer_call_and_return_conditional_losses_382698a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????
? ?
+__inference_flatten_45_layer_call_fn_382703T7?4
-?*
(?%
inputs?????????@
? "????????????
M__inference_max_pooling2d_135_layer_call_and_return_conditional_losses_380513?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_135_layer_call_fn_380519?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_136_layer_call_and_return_conditional_losses_380629?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_136_layer_call_fn_380635?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_137_layer_call_and_return_conditional_losses_380745?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_137_layer_call_fn_380751?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
D__inference_model_45_layer_call_and_return_conditional_losses_381418?'()*34>?@AJKUVWXefrspq|}??A?>
7?4
*?'
input_46?????????  
p

 
? "%?"
?
0?????????
? ?
D__inference_model_45_layer_call_and_return_conditional_losses_381498?'()*34>?@AJKUVWXefsprq|}??A?>
7?4
*?'
input_46?????????  
p 

 
? "%?"
?
0?????????
? ?
D__inference_model_45_layer_call_and_return_conditional_losses_381990?'()*34>?@AJKUVWXefrspq|}????<
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
D__inference_model_45_layer_call_and_return_conditional_losses_382099?'()*34>?@AJKUVWXefsprq|}????<
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
)__inference_model_45_layer_call_fn_381640}'()*34>?@AJKUVWXefrspq|}??A?>
7?4
*?'
input_46?????????  
p

 
? "???????????
)__inference_model_45_layer_call_fn_381781}'()*34>?@AJKUVWXefsprq|}??A?>
7?4
*?'
input_46?????????  
p 

 
? "???????????
)__inference_model_45_layer_call_fn_382160{'()*34>?@AJKUVWXefrspq|}????<
5?2
(?%
inputs?????????  
p

 
? "???????????
)__inference_model_45_layer_call_fn_382221{'()*34>?@AJKUVWXefsprq|}????<
5?2
(?%
inputs?????????  
p 

 
? "???????????
$__inference_signature_wrapper_381852?'()*34>?@AJKUVWXefsprq|}??E?B
? 
;?8
6
input_46*?'
input_46?????????  "5?2
0
	dense_137#? 
	dense_137?????????