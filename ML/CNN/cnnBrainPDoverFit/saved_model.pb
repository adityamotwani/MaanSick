??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
?
Conv3D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"!
	dilations	list(int)	

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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
0
Sigmoid
x"T
y"T"
Ttype:

2
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718̲
?
conv3d_102/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_102/kernel
?
%conv3d_102/kernel/Read/ReadVariableOpReadVariableOpconv3d_102/kernel**
_output_shapes
:*
dtype0
v
conv3d_102/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_102/bias
o
#conv3d_102/bias/Read/ReadVariableOpReadVariableOpconv3d_102/bias*
_output_shapes
:*
dtype0
?
batch_normalization_47/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_47/gamma
?
0batch_normalization_47/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_47/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_47/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_47/beta
?
/batch_normalization_47/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_47/beta*
_output_shapes
:*
dtype0
?
"batch_normalization_47/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_47/moving_mean
?
6batch_normalization_47/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_47/moving_mean*
_output_shapes
:*
dtype0
?
&batch_normalization_47/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_47/moving_variance
?
:batch_normalization_47/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_47/moving_variance*
_output_shapes
:*
dtype0
?
conv3d_103/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_103/kernel
?
%conv3d_103/kernel/Read/ReadVariableOpReadVariableOpconv3d_103/kernel**
_output_shapes
:*
dtype0
v
conv3d_103/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_103/bias
o
#conv3d_103/bias/Read/ReadVariableOpReadVariableOpconv3d_103/bias*
_output_shapes
:*
dtype0
?
conv3d_104/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_104/kernel
?
%conv3d_104/kernel/Read/ReadVariableOpReadVariableOpconv3d_104/kernel**
_output_shapes
:*
dtype0
v
conv3d_104/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_104/bias
o
#conv3d_104/bias/Read/ReadVariableOpReadVariableOpconv3d_104/bias*
_output_shapes
:*
dtype0
?
batch_normalization_48/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_48/gamma
?
0batch_normalization_48/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_48/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_48/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_48/beta
?
/batch_normalization_48/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_48/beta*
_output_shapes
:*
dtype0
?
"batch_normalization_48/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_48/moving_mean
?
6batch_normalization_48/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_48/moving_mean*
_output_shapes
:*
dtype0
?
&batch_normalization_48/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_48/moving_variance
?
:batch_normalization_48/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_48/moving_variance*
_output_shapes
:*
dtype0
?
conv3d_105/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_105/kernel
?
%conv3d_105/kernel/Read/ReadVariableOpReadVariableOpconv3d_105/kernel**
_output_shapes
:*
dtype0
v
conv3d_105/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_105/bias
o
#conv3d_105/bias/Read/ReadVariableOpReadVariableOpconv3d_105/bias*
_output_shapes
:*
dtype0
|
dense_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??@* 
shared_namedense_59/kernel
u
#dense_59/kernel/Read/ReadVariableOpReadVariableOpdense_59/kernel* 
_output_shapes
:
??@*
dtype0
r
dense_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_59/bias
k
!dense_59/bias/Read/ReadVariableOpReadVariableOpdense_59/bias*
_output_shapes
:@*
dtype0
z
dense_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_60/kernel
s
#dense_60/kernel/Read/ReadVariableOpReadVariableOpdense_60/kernel*
_output_shapes

:@*
dtype0
r
dense_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_60/bias
k
!dense_60/bias/Read/ReadVariableOpReadVariableOpdense_60/bias*
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
?
Adam/conv3d_102/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_102/kernel/m
?
,Adam/conv3d_102/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_102/kernel/m**
_output_shapes
:*
dtype0
?
Adam/conv3d_102/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_102/bias/m
}
*Adam/conv3d_102/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_102/bias/m*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_47/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_47/gamma/m
?
7Adam/batch_normalization_47/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_47/gamma/m*
_output_shapes
:*
dtype0
?
"Adam/batch_normalization_47/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_47/beta/m
?
6Adam/batch_normalization_47/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_47/beta/m*
_output_shapes
:*
dtype0
?
Adam/conv3d_103/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_103/kernel/m
?
,Adam/conv3d_103/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_103/kernel/m**
_output_shapes
:*
dtype0
?
Adam/conv3d_103/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_103/bias/m
}
*Adam/conv3d_103/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_103/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv3d_104/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_104/kernel/m
?
,Adam/conv3d_104/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_104/kernel/m**
_output_shapes
:*
dtype0
?
Adam/conv3d_104/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_104/bias/m
}
*Adam/conv3d_104/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_104/bias/m*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_48/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_48/gamma/m
?
7Adam/batch_normalization_48/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_48/gamma/m*
_output_shapes
:*
dtype0
?
"Adam/batch_normalization_48/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_48/beta/m
?
6Adam/batch_normalization_48/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_48/beta/m*
_output_shapes
:*
dtype0
?
Adam/conv3d_105/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_105/kernel/m
?
,Adam/conv3d_105/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_105/kernel/m**
_output_shapes
:*
dtype0
?
Adam/conv3d_105/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_105/bias/m
}
*Adam/conv3d_105/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_105/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_59/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??@*'
shared_nameAdam/dense_59/kernel/m
?
*Adam/dense_59/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_59/kernel/m* 
_output_shapes
:
??@*
dtype0
?
Adam/dense_59/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_59/bias/m
y
(Adam/dense_59/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_59/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_60/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_60/kernel/m
?
*Adam/dense_60/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_60/kernel/m*
_output_shapes

:@*
dtype0
?
Adam/dense_60/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_60/bias/m
y
(Adam/dense_60/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_60/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv3d_102/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_102/kernel/v
?
,Adam/conv3d_102/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_102/kernel/v**
_output_shapes
:*
dtype0
?
Adam/conv3d_102/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_102/bias/v
}
*Adam/conv3d_102/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_102/bias/v*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_47/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_47/gamma/v
?
7Adam/batch_normalization_47/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_47/gamma/v*
_output_shapes
:*
dtype0
?
"Adam/batch_normalization_47/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_47/beta/v
?
6Adam/batch_normalization_47/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_47/beta/v*
_output_shapes
:*
dtype0
?
Adam/conv3d_103/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_103/kernel/v
?
,Adam/conv3d_103/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_103/kernel/v**
_output_shapes
:*
dtype0
?
Adam/conv3d_103/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_103/bias/v
}
*Adam/conv3d_103/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_103/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv3d_104/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_104/kernel/v
?
,Adam/conv3d_104/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_104/kernel/v**
_output_shapes
:*
dtype0
?
Adam/conv3d_104/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_104/bias/v
}
*Adam/conv3d_104/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_104/bias/v*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_48/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_48/gamma/v
?
7Adam/batch_normalization_48/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_48/gamma/v*
_output_shapes
:*
dtype0
?
"Adam/batch_normalization_48/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_48/beta/v
?
6Adam/batch_normalization_48/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_48/beta/v*
_output_shapes
:*
dtype0
?
Adam/conv3d_105/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv3d_105/kernel/v
?
,Adam/conv3d_105/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_105/kernel/v**
_output_shapes
:*
dtype0
?
Adam/conv3d_105/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_105/bias/v
}
*Adam/conv3d_105/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_105/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_59/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??@*'
shared_nameAdam/dense_59/kernel/v
?
*Adam/dense_59/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_59/kernel/v* 
_output_shapes
:
??@*
dtype0
?
Adam/dense_59/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_59/bias/v
y
(Adam/dense_59/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_59/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_60/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_60/kernel/v
?
*Adam/dense_60/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_60/kernel/v*
_output_shapes

:@*
dtype0
?
Adam/dense_60/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_60/bias/v
y
(Adam/dense_60/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_60/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?_
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?_
value?_B?_ B?_
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
?
axis
	gamma
beta
moving_mean
moving_variance
	variables
regularization_losses
trainable_variables
 	keras_api
h

!kernel
"bias
#	variables
$regularization_losses
%trainable_variables
&	keras_api
R
'	variables
(regularization_losses
)trainable_variables
*	keras_api
h

+kernel
,bias
-	variables
.regularization_losses
/trainable_variables
0	keras_api
?
1axis
	2gamma
3beta
4moving_mean
5moving_variance
6	variables
7regularization_losses
8trainable_variables
9	keras_api
R
:	variables
;regularization_losses
<trainable_variables
=	keras_api
h

>kernel
?bias
@	variables
Aregularization_losses
Btrainable_variables
C	keras_api
R
D	variables
Eregularization_losses
Ftrainable_variables
G	keras_api
h

Hkernel
Ibias
J	variables
Kregularization_losses
Ltrainable_variables
M	keras_api
h

Nkernel
Obias
P	variables
Qregularization_losses
Rtrainable_variables
S	keras_api
?
Titer

Ubeta_1

Vbeta_2
	Wdecay
Xlearning_ratem?m?m?m?!m?"m?+m?,m?2m?3m?>m??m?Hm?Im?Nm?Om?v?v?v?v?!v?"v?+v?,v?2v?3v?>v??v?Hv?Iv?Nv?Ov?
?
0
1
2
3
4
5
!6
"7
+8
,9
210
311
412
513
>14
?15
H16
I17
N18
O19
 
v
0
1
2
3
!4
"5
+6
,7
28
39
>10
?11
H12
I13
N14
O15
?
Ylayer_regularization_losses
Zlayer_metrics
[non_trainable_variables
	variables
regularization_losses

\layers
trainable_variables
]metrics
 
][
VARIABLE_VALUEconv3d_102/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_102/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
^layer_regularization_losses
_layer_metrics
`non_trainable_variables
	variables
regularization_losses

alayers
trainable_variables
bmetrics
 
ge
VARIABLE_VALUEbatch_normalization_47/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_47/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_47/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_47/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3
 

0
1
?
clayer_regularization_losses
dlayer_metrics
enon_trainable_variables
	variables
regularization_losses

flayers
trainable_variables
gmetrics
][
VARIABLE_VALUEconv3d_103/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_103/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

!0
"1
 

!0
"1
?
hlayer_regularization_losses
ilayer_metrics
jnon_trainable_variables
#	variables
$regularization_losses

klayers
%trainable_variables
lmetrics
 
 
 
?
mlayer_regularization_losses
nlayer_metrics
onon_trainable_variables
'	variables
(regularization_losses

players
)trainable_variables
qmetrics
][
VARIABLE_VALUEconv3d_104/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_104/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1
 

+0
,1
?
rlayer_regularization_losses
slayer_metrics
tnon_trainable_variables
-	variables
.regularization_losses

ulayers
/trainable_variables
vmetrics
 
ge
VARIABLE_VALUEbatch_normalization_48/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_48/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_48/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_48/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

20
31
42
53
 

20
31
?
wlayer_regularization_losses
xlayer_metrics
ynon_trainable_variables
6	variables
7regularization_losses

zlayers
8trainable_variables
{metrics
 
 
 
?
|layer_regularization_losses
}layer_metrics
~non_trainable_variables
:	variables
;regularization_losses

layers
<trainable_variables
?metrics
][
VARIABLE_VALUEconv3d_105/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_105/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

>0
?1
 

>0
?1
?
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
@	variables
Aregularization_losses
?layers
Btrainable_variables
?metrics
 
 
 
?
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
D	variables
Eregularization_losses
?layers
Ftrainable_variables
?metrics
[Y
VARIABLE_VALUEdense_59/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_59/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

H0
I1
 

H0
I1
?
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
J	variables
Kregularization_losses
?layers
Ltrainable_variables
?metrics
[Y
VARIABLE_VALUEdense_60/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_60/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

N0
O1
 

N0
O1
?
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
P	variables
Qregularization_losses
?layers
Rtrainable_variables
?metrics
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
 

0
1
42
53
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

0
1
 
 
 
 
 
 
 
 
 
 
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
40
51
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
I

?total

?count
?
_fn_kwargs
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
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
?~
VARIABLE_VALUEAdam/conv3d_102/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv3d_102/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_47/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_47/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv3d_103/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv3d_103/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv3d_104/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv3d_104/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_48/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_48/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv3d_105/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv3d_105/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_59/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_59/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_60/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_60/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv3d_102/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv3d_102/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_47/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_47/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv3d_103/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv3d_103/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv3d_104/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv3d_104/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_48/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_48/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv3d_105/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv3d_105/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_59/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_59/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_60/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_60/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_conv3d_102_inputPlaceholder*3
_output_shapes!
:?????????222*
dtype0*(
shape:?????????222
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv3d_102_inputconv3d_102/kernelconv3d_102/bias&batch_normalization_47/moving_variancebatch_normalization_47/gamma"batch_normalization_47/moving_meanbatch_normalization_47/betaconv3d_103/kernelconv3d_103/biasconv3d_104/kernelconv3d_104/bias&batch_normalization_48/moving_variancebatch_normalization_48/gamma"batch_normalization_48/moving_meanbatch_normalization_48/betaconv3d_105/kernelconv3d_105/biasdense_59/kerneldense_59/biasdense_60/kerneldense_60/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_43844
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_102/kernel/Read/ReadVariableOp#conv3d_102/bias/Read/ReadVariableOp0batch_normalization_47/gamma/Read/ReadVariableOp/batch_normalization_47/beta/Read/ReadVariableOp6batch_normalization_47/moving_mean/Read/ReadVariableOp:batch_normalization_47/moving_variance/Read/ReadVariableOp%conv3d_103/kernel/Read/ReadVariableOp#conv3d_103/bias/Read/ReadVariableOp%conv3d_104/kernel/Read/ReadVariableOp#conv3d_104/bias/Read/ReadVariableOp0batch_normalization_48/gamma/Read/ReadVariableOp/batch_normalization_48/beta/Read/ReadVariableOp6batch_normalization_48/moving_mean/Read/ReadVariableOp:batch_normalization_48/moving_variance/Read/ReadVariableOp%conv3d_105/kernel/Read/ReadVariableOp#conv3d_105/bias/Read/ReadVariableOp#dense_59/kernel/Read/ReadVariableOp!dense_59/bias/Read/ReadVariableOp#dense_60/kernel/Read/ReadVariableOp!dense_60/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv3d_102/kernel/m/Read/ReadVariableOp*Adam/conv3d_102/bias/m/Read/ReadVariableOp7Adam/batch_normalization_47/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_47/beta/m/Read/ReadVariableOp,Adam/conv3d_103/kernel/m/Read/ReadVariableOp*Adam/conv3d_103/bias/m/Read/ReadVariableOp,Adam/conv3d_104/kernel/m/Read/ReadVariableOp*Adam/conv3d_104/bias/m/Read/ReadVariableOp7Adam/batch_normalization_48/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_48/beta/m/Read/ReadVariableOp,Adam/conv3d_105/kernel/m/Read/ReadVariableOp*Adam/conv3d_105/bias/m/Read/ReadVariableOp*Adam/dense_59/kernel/m/Read/ReadVariableOp(Adam/dense_59/bias/m/Read/ReadVariableOp*Adam/dense_60/kernel/m/Read/ReadVariableOp(Adam/dense_60/bias/m/Read/ReadVariableOp,Adam/conv3d_102/kernel/v/Read/ReadVariableOp*Adam/conv3d_102/bias/v/Read/ReadVariableOp7Adam/batch_normalization_47/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_47/beta/v/Read/ReadVariableOp,Adam/conv3d_103/kernel/v/Read/ReadVariableOp*Adam/conv3d_103/bias/v/Read/ReadVariableOp,Adam/conv3d_104/kernel/v/Read/ReadVariableOp*Adam/conv3d_104/bias/v/Read/ReadVariableOp7Adam/batch_normalization_48/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_48/beta/v/Read/ReadVariableOp,Adam/conv3d_105/kernel/v/Read/ReadVariableOp*Adam/conv3d_105/bias/v/Read/ReadVariableOp*Adam/dense_59/kernel/v/Read/ReadVariableOp(Adam/dense_59/bias/v/Read/ReadVariableOp*Adam/dense_60/kernel/v/Read/ReadVariableOp(Adam/dense_60/bias/v/Read/ReadVariableOpConst*J
TinC
A2?	*
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
__inference__traced_save_44851
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_102/kernelconv3d_102/biasbatch_normalization_47/gammabatch_normalization_47/beta"batch_normalization_47/moving_mean&batch_normalization_47/moving_varianceconv3d_103/kernelconv3d_103/biasconv3d_104/kernelconv3d_104/biasbatch_normalization_48/gammabatch_normalization_48/beta"batch_normalization_48/moving_mean&batch_normalization_48/moving_varianceconv3d_105/kernelconv3d_105/biasdense_59/kerneldense_59/biasdense_60/kerneldense_60/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv3d_102/kernel/mAdam/conv3d_102/bias/m#Adam/batch_normalization_47/gamma/m"Adam/batch_normalization_47/beta/mAdam/conv3d_103/kernel/mAdam/conv3d_103/bias/mAdam/conv3d_104/kernel/mAdam/conv3d_104/bias/m#Adam/batch_normalization_48/gamma/m"Adam/batch_normalization_48/beta/mAdam/conv3d_105/kernel/mAdam/conv3d_105/bias/mAdam/dense_59/kernel/mAdam/dense_59/bias/mAdam/dense_60/kernel/mAdam/dense_60/bias/mAdam/conv3d_102/kernel/vAdam/conv3d_102/bias/v#Adam/batch_normalization_47/gamma/v"Adam/batch_normalization_47/beta/vAdam/conv3d_103/kernel/vAdam/conv3d_103/bias/vAdam/conv3d_104/kernel/vAdam/conv3d_104/bias/v#Adam/batch_normalization_48/gamma/v"Adam/batch_normalization_48/beta/vAdam/conv3d_105/kernel/vAdam/conv3d_105/bias/vAdam/dense_59/kernel/vAdam/dense_59/bias/vAdam/dense_60/kernel/vAdam/dense_60/bias/v*I
TinB
@2>*
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
!__inference__traced_restore_45044??
?
?
E__inference_conv3d_105_layer_call_and_return_conditional_losses_43167

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????222*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????2222	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????2222
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????222: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_47_layer_call_fn_44307

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_430692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????222: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
ڈ
?'
!__inference__traced_restore_45044
file_prefix@
"assignvariableop_conv3d_102_kernel:0
"assignvariableop_1_conv3d_102_bias:=
/assignvariableop_2_batch_normalization_47_gamma:<
.assignvariableop_3_batch_normalization_47_beta:C
5assignvariableop_4_batch_normalization_47_moving_mean:G
9assignvariableop_5_batch_normalization_47_moving_variance:B
$assignvariableop_6_conv3d_103_kernel:0
"assignvariableop_7_conv3d_103_bias:B
$assignvariableop_8_conv3d_104_kernel:0
"assignvariableop_9_conv3d_104_bias:>
0assignvariableop_10_batch_normalization_48_gamma:=
/assignvariableop_11_batch_normalization_48_beta:D
6assignvariableop_12_batch_normalization_48_moving_mean:H
:assignvariableop_13_batch_normalization_48_moving_variance:C
%assignvariableop_14_conv3d_105_kernel:1
#assignvariableop_15_conv3d_105_bias:7
#assignvariableop_16_dense_59_kernel:
??@/
!assignvariableop_17_dense_59_bias:@5
#assignvariableop_18_dense_60_kernel:@/
!assignvariableop_19_dense_60_bias:'
assignvariableop_20_adam_iter:	 )
assignvariableop_21_adam_beta_1: )
assignvariableop_22_adam_beta_2: (
assignvariableop_23_adam_decay: 0
&assignvariableop_24_adam_learning_rate: #
assignvariableop_25_total: #
assignvariableop_26_count: %
assignvariableop_27_total_1: %
assignvariableop_28_count_1: J
,assignvariableop_29_adam_conv3d_102_kernel_m:8
*assignvariableop_30_adam_conv3d_102_bias_m:E
7assignvariableop_31_adam_batch_normalization_47_gamma_m:D
6assignvariableop_32_adam_batch_normalization_47_beta_m:J
,assignvariableop_33_adam_conv3d_103_kernel_m:8
*assignvariableop_34_adam_conv3d_103_bias_m:J
,assignvariableop_35_adam_conv3d_104_kernel_m:8
*assignvariableop_36_adam_conv3d_104_bias_m:E
7assignvariableop_37_adam_batch_normalization_48_gamma_m:D
6assignvariableop_38_adam_batch_normalization_48_beta_m:J
,assignvariableop_39_adam_conv3d_105_kernel_m:8
*assignvariableop_40_adam_conv3d_105_bias_m:>
*assignvariableop_41_adam_dense_59_kernel_m:
??@6
(assignvariableop_42_adam_dense_59_bias_m:@<
*assignvariableop_43_adam_dense_60_kernel_m:@6
(assignvariableop_44_adam_dense_60_bias_m:J
,assignvariableop_45_adam_conv3d_102_kernel_v:8
*assignvariableop_46_adam_conv3d_102_bias_v:E
7assignvariableop_47_adam_batch_normalization_47_gamma_v:D
6assignvariableop_48_adam_batch_normalization_47_beta_v:J
,assignvariableop_49_adam_conv3d_103_kernel_v:8
*assignvariableop_50_adam_conv3d_103_bias_v:J
,assignvariableop_51_adam_conv3d_104_kernel_v:8
*assignvariableop_52_adam_conv3d_104_bias_v:E
7assignvariableop_53_adam_batch_normalization_48_gamma_v:D
6assignvariableop_54_adam_batch_normalization_48_beta_v:J
,assignvariableop_55_adam_conv3d_105_kernel_v:8
*assignvariableop_56_adam_conv3d_105_bias_v:>
*assignvariableop_57_adam_dense_59_kernel_v:
??@6
(assignvariableop_58_adam_dense_59_bias_v:@<
*assignvariableop_59_adam_dense_60_kernel_v:@6
(assignvariableop_60_adam_dense_60_bias_v:
identity_62??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?"
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*?!
value?!B?!>B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*?
value?B?>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*L
dtypesB
@2>	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_102_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_102_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_47_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_47_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_47_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_47_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_103_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_103_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv3d_104_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv3d_104_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp0assignvariableop_10_batch_normalization_48_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp/assignvariableop_11_batch_normalization_48_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp6assignvariableop_12_batch_normalization_48_moving_meanIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp:assignvariableop_13_batch_normalization_48_moving_varianceIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_105_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_105_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp#assignvariableop_16_dense_59_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp!assignvariableop_17_dense_59_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp#assignvariableop_18_dense_60_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp!assignvariableop_19_dense_60_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_iterIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_beta_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_beta_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_decayIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_learning_rateIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpassignvariableop_25_totalIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpassignvariableop_26_countIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOpassignvariableop_27_total_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOpassignvariableop_28_count_1Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_conv3d_102_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_conv3d_102_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp7assignvariableop_31_adam_batch_normalization_47_gamma_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adam_batch_normalization_47_beta_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adam_conv3d_103_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv3d_103_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp,assignvariableop_35_adam_conv3d_104_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_conv3d_104_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp7assignvariableop_37_adam_batch_normalization_48_gamma_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp6assignvariableop_38_adam_batch_normalization_48_beta_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp,assignvariableop_39_adam_conv3d_105_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_conv3d_105_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_59_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_59_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_dense_60_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_dense_60_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp,assignvariableop_45_adam_conv3d_102_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp*assignvariableop_46_adam_conv3d_102_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp7assignvariableop_47_adam_batch_normalization_47_gamma_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp6assignvariableop_48_adam_batch_normalization_47_beta_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp,assignvariableop_49_adam_conv3d_103_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp*assignvariableop_50_adam_conv3d_103_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp,assignvariableop_51_adam_conv3d_104_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp*assignvariableop_52_adam_conv3d_104_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp7assignvariableop_53_adam_batch_normalization_48_gamma_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp6assignvariableop_54_adam_batch_normalization_48_beta_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp,assignvariableop_55_adam_conv3d_105_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp*assignvariableop_56_adam_conv3d_105_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_dense_59_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_dense_59_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_dense_60_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_dense_60_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_609
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_61Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_61?
Identity_62IdentityIdentity_61:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_62"#
identity_62Identity_62:output:0*?
_input_shapes~
|: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_60AssignVariableOp_602(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
c
E__inference_dropout_41_layer_call_and_return_conditional_losses_44552

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????2222

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????2222

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????222:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_44180

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
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
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*N
_output_shapes<
::8????????????????????????????????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*N
_output_shapes<
::8????????????????????????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*N
_output_shapes<
::8????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8????????????????????????????????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:v r
N
_output_shapes<
::8????????????????????????????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_43139

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
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
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*3
_output_shapes!
:?????????2222
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*3
_output_shapes!
:?????????2222
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????222: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_47_layer_call_fn_44320

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_434702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????222: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
c
E__inference_dropout_40_layer_call_and_return_conditional_losses_43101

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????2222

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????2222

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????222:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
d
E__inference_dropout_41_layer_call_and_return_conditional_losses_44564

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????2222
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????222*
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
T0*3
_output_shapes!
:?????????2222
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????2222
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????2222
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????222:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
d
E__inference_dropout_40_layer_call_and_return_conditional_losses_44357

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????2222
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????222*
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
T0*3
_output_shapes!
:?????????2222
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????2222
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????2222
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????222:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
?
E__inference_conv3d_104_layer_call_and_return_conditional_losses_43114

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????222*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????2222	
BiasAddm
SigmoidSigmoidBiasAdd:output:0*
T0*3
_output_shapes!
:?????????2222	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????222: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
?
-__inference_sequential_21_layer_call_fn_44095

inputs%
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:'
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:(

unknown_13:

unknown_14:

unknown_15:
??@

unknown_16:@

unknown_17:@

unknown_18:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_21_layer_call_and_return_conditional_losses_432162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????222: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?~
?
H__inference_sequential_21_layer_call_and_return_conditional_losses_43926

inputsG
)conv3d_102_conv3d_readvariableop_resource:8
*conv3d_102_biasadd_readvariableop_resource:F
8batch_normalization_47_batchnorm_readvariableop_resource:J
<batch_normalization_47_batchnorm_mul_readvariableop_resource:H
:batch_normalization_47_batchnorm_readvariableop_1_resource:H
:batch_normalization_47_batchnorm_readvariableop_2_resource:G
)conv3d_103_conv3d_readvariableop_resource:8
*conv3d_103_biasadd_readvariableop_resource:G
)conv3d_104_conv3d_readvariableop_resource:8
*conv3d_104_biasadd_readvariableop_resource:F
8batch_normalization_48_batchnorm_readvariableop_resource:J
<batch_normalization_48_batchnorm_mul_readvariableop_resource:H
:batch_normalization_48_batchnorm_readvariableop_1_resource:H
:batch_normalization_48_batchnorm_readvariableop_2_resource:G
)conv3d_105_conv3d_readvariableop_resource:8
*conv3d_105_biasadd_readvariableop_resource:;
'dense_59_matmul_readvariableop_resource:
??@6
(dense_59_biasadd_readvariableop_resource:@9
'dense_60_matmul_readvariableop_resource:@6
(dense_60_biasadd_readvariableop_resource:
identity??/batch_normalization_47/batchnorm/ReadVariableOp?1batch_normalization_47/batchnorm/ReadVariableOp_1?1batch_normalization_47/batchnorm/ReadVariableOp_2?3batch_normalization_47/batchnorm/mul/ReadVariableOp?/batch_normalization_48/batchnorm/ReadVariableOp?1batch_normalization_48/batchnorm/ReadVariableOp_1?1batch_normalization_48/batchnorm/ReadVariableOp_2?3batch_normalization_48/batchnorm/mul/ReadVariableOp?!conv3d_102/BiasAdd/ReadVariableOp? conv3d_102/Conv3D/ReadVariableOp?!conv3d_103/BiasAdd/ReadVariableOp? conv3d_103/Conv3D/ReadVariableOp?!conv3d_104/BiasAdd/ReadVariableOp? conv3d_104/Conv3D/ReadVariableOp?!conv3d_105/BiasAdd/ReadVariableOp? conv3d_105/Conv3D/ReadVariableOp?dense_59/BiasAdd/ReadVariableOp?dense_59/MatMul/ReadVariableOp?dense_60/BiasAdd/ReadVariableOp?dense_60/MatMul/ReadVariableOp?
 conv3d_102/Conv3D/ReadVariableOpReadVariableOp)conv3d_102_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_102/Conv3D/ReadVariableOp?
conv3d_102/Conv3DConv3Dinputs(conv3d_102/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????222*
paddingSAME*
strides	
2
conv3d_102/Conv3D?
!conv3d_102/BiasAdd/ReadVariableOpReadVariableOp*conv3d_102_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_102/BiasAdd/ReadVariableOp?
conv3d_102/BiasAddBiasAddconv3d_102/Conv3D:output:0)conv3d_102/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????2222
conv3d_102/BiasAdd?
conv3d_102/ReluReluconv3d_102/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????2222
conv3d_102/Relu?
/batch_normalization_47/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_47_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype021
/batch_normalization_47/batchnorm/ReadVariableOp?
&batch_normalization_47/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_47/batchnorm/add/y?
$batch_normalization_47/batchnorm/addAddV27batch_normalization_47/batchnorm/ReadVariableOp:value:0/batch_normalization_47/batchnorm/add/y:output:0*
T0*
_output_shapes
:2&
$batch_normalization_47/batchnorm/add?
&batch_normalization_47/batchnorm/RsqrtRsqrt(batch_normalization_47/batchnorm/add:z:0*
T0*
_output_shapes
:2(
&batch_normalization_47/batchnorm/Rsqrt?
3batch_normalization_47/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_47_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype025
3batch_normalization_47/batchnorm/mul/ReadVariableOp?
$batch_normalization_47/batchnorm/mulMul*batch_normalization_47/batchnorm/Rsqrt:y:0;batch_normalization_47/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2&
$batch_normalization_47/batchnorm/mul?
&batch_normalization_47/batchnorm/mul_1Mulconv3d_102/Relu:activations:0(batch_normalization_47/batchnorm/mul:z:0*
T0*3
_output_shapes!
:?????????2222(
&batch_normalization_47/batchnorm/mul_1?
1batch_normalization_47/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_47_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype023
1batch_normalization_47/batchnorm/ReadVariableOp_1?
&batch_normalization_47/batchnorm/mul_2Mul9batch_normalization_47/batchnorm/ReadVariableOp_1:value:0(batch_normalization_47/batchnorm/mul:z:0*
T0*
_output_shapes
:2(
&batch_normalization_47/batchnorm/mul_2?
1batch_normalization_47/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_47_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype023
1batch_normalization_47/batchnorm/ReadVariableOp_2?
$batch_normalization_47/batchnorm/subSub9batch_normalization_47/batchnorm/ReadVariableOp_2:value:0*batch_normalization_47/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2&
$batch_normalization_47/batchnorm/sub?
&batch_normalization_47/batchnorm/add_1AddV2*batch_normalization_47/batchnorm/mul_1:z:0(batch_normalization_47/batchnorm/sub:z:0*
T0*3
_output_shapes!
:?????????2222(
&batch_normalization_47/batchnorm/add_1?
 conv3d_103/Conv3D/ReadVariableOpReadVariableOp)conv3d_103_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_103/Conv3D/ReadVariableOp?
conv3d_103/Conv3DConv3D*batch_normalization_47/batchnorm/add_1:z:0(conv3d_103/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????222*
paddingSAME*
strides	
2
conv3d_103/Conv3D?
!conv3d_103/BiasAdd/ReadVariableOpReadVariableOp*conv3d_103_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_103/BiasAdd/ReadVariableOp?
conv3d_103/BiasAddBiasAddconv3d_103/Conv3D:output:0)conv3d_103/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????2222
conv3d_103/BiasAdd?
conv3d_103/SigmoidSigmoidconv3d_103/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????2222
conv3d_103/Sigmoid?
dropout_40/IdentityIdentityconv3d_103/Sigmoid:y:0*
T0*3
_output_shapes!
:?????????2222
dropout_40/Identity?
 conv3d_104/Conv3D/ReadVariableOpReadVariableOp)conv3d_104_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_104/Conv3D/ReadVariableOp?
conv3d_104/Conv3DConv3Ddropout_40/Identity:output:0(conv3d_104/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????222*
paddingSAME*
strides	
2
conv3d_104/Conv3D?
!conv3d_104/BiasAdd/ReadVariableOpReadVariableOp*conv3d_104_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_104/BiasAdd/ReadVariableOp?
conv3d_104/BiasAddBiasAddconv3d_104/Conv3D:output:0)conv3d_104/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????2222
conv3d_104/BiasAdd?
conv3d_104/SigmoidSigmoidconv3d_104/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????2222
conv3d_104/Sigmoid?
/batch_normalization_48/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_48_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype021
/batch_normalization_48/batchnorm/ReadVariableOp?
&batch_normalization_48/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_48/batchnorm/add/y?
$batch_normalization_48/batchnorm/addAddV27batch_normalization_48/batchnorm/ReadVariableOp:value:0/batch_normalization_48/batchnorm/add/y:output:0*
T0*
_output_shapes
:2&
$batch_normalization_48/batchnorm/add?
&batch_normalization_48/batchnorm/RsqrtRsqrt(batch_normalization_48/batchnorm/add:z:0*
T0*
_output_shapes
:2(
&batch_normalization_48/batchnorm/Rsqrt?
3batch_normalization_48/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_48_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype025
3batch_normalization_48/batchnorm/mul/ReadVariableOp?
$batch_normalization_48/batchnorm/mulMul*batch_normalization_48/batchnorm/Rsqrt:y:0;batch_normalization_48/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2&
$batch_normalization_48/batchnorm/mul?
&batch_normalization_48/batchnorm/mul_1Mulconv3d_104/Sigmoid:y:0(batch_normalization_48/batchnorm/mul:z:0*
T0*3
_output_shapes!
:?????????2222(
&batch_normalization_48/batchnorm/mul_1?
1batch_normalization_48/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_48_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype023
1batch_normalization_48/batchnorm/ReadVariableOp_1?
&batch_normalization_48/batchnorm/mul_2Mul9batch_normalization_48/batchnorm/ReadVariableOp_1:value:0(batch_normalization_48/batchnorm/mul:z:0*
T0*
_output_shapes
:2(
&batch_normalization_48/batchnorm/mul_2?
1batch_normalization_48/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_48_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype023
1batch_normalization_48/batchnorm/ReadVariableOp_2?
$batch_normalization_48/batchnorm/subSub9batch_normalization_48/batchnorm/ReadVariableOp_2:value:0*batch_normalization_48/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2&
$batch_normalization_48/batchnorm/sub?
&batch_normalization_48/batchnorm/add_1AddV2*batch_normalization_48/batchnorm/mul_1:z:0(batch_normalization_48/batchnorm/sub:z:0*
T0*3
_output_shapes!
:?????????2222(
&batch_normalization_48/batchnorm/add_1?
dropout_41/IdentityIdentity*batch_normalization_48/batchnorm/add_1:z:0*
T0*3
_output_shapes!
:?????????2222
dropout_41/Identity?
 conv3d_105/Conv3D/ReadVariableOpReadVariableOp)conv3d_105_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_105/Conv3D/ReadVariableOp?
conv3d_105/Conv3DConv3Ddropout_41/Identity:output:0(conv3d_105/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????222*
paddingSAME*
strides	
2
conv3d_105/Conv3D?
!conv3d_105/BiasAdd/ReadVariableOpReadVariableOp*conv3d_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_105/BiasAdd/ReadVariableOp?
conv3d_105/BiasAddBiasAddconv3d_105/Conv3D:output:0)conv3d_105/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????2222
conv3d_105/BiasAdd?
conv3d_105/ReluReluconv3d_105/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????2222
conv3d_105/Reluu
flatten_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ? 2
flatten_21/Const?
flatten_21/ReshapeReshapeconv3d_105/Relu:activations:0flatten_21/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_21/Reshape?
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource* 
_output_shapes
:
??@*
dtype02 
dense_59/MatMul/ReadVariableOp?
dense_59/MatMulMatMulflatten_21/Reshape:output:0&dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_59/MatMul?
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_59/BiasAdd/ReadVariableOp?
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_59/BiasAdds
dense_59/ReluReludense_59/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_59/Relu?
dense_60/MatMul/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_60/MatMul/ReadVariableOp?
dense_60/MatMulMatMuldense_59/Relu:activations:0&dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_60/MatMul?
dense_60/BiasAdd/ReadVariableOpReadVariableOp(dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_60/BiasAdd/ReadVariableOp?
dense_60/BiasAddBiasAdddense_60/MatMul:product:0'dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_60/BiasAdd|
dense_60/SigmoidSigmoiddense_60/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_60/Sigmoid?
IdentityIdentitydense_60/Sigmoid:y:00^batch_normalization_47/batchnorm/ReadVariableOp2^batch_normalization_47/batchnorm/ReadVariableOp_12^batch_normalization_47/batchnorm/ReadVariableOp_24^batch_normalization_47/batchnorm/mul/ReadVariableOp0^batch_normalization_48/batchnorm/ReadVariableOp2^batch_normalization_48/batchnorm/ReadVariableOp_12^batch_normalization_48/batchnorm/ReadVariableOp_24^batch_normalization_48/batchnorm/mul/ReadVariableOp"^conv3d_102/BiasAdd/ReadVariableOp!^conv3d_102/Conv3D/ReadVariableOp"^conv3d_103/BiasAdd/ReadVariableOp!^conv3d_103/Conv3D/ReadVariableOp"^conv3d_104/BiasAdd/ReadVariableOp!^conv3d_104/Conv3D/ReadVariableOp"^conv3d_105/BiasAdd/ReadVariableOp!^conv3d_105/Conv3D/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp ^dense_60/BiasAdd/ReadVariableOp^dense_60/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????222: : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_47/batchnorm/ReadVariableOp/batch_normalization_47/batchnorm/ReadVariableOp2f
1batch_normalization_47/batchnorm/ReadVariableOp_11batch_normalization_47/batchnorm/ReadVariableOp_12f
1batch_normalization_47/batchnorm/ReadVariableOp_21batch_normalization_47/batchnorm/ReadVariableOp_22j
3batch_normalization_47/batchnorm/mul/ReadVariableOp3batch_normalization_47/batchnorm/mul/ReadVariableOp2b
/batch_normalization_48/batchnorm/ReadVariableOp/batch_normalization_48/batchnorm/ReadVariableOp2f
1batch_normalization_48/batchnorm/ReadVariableOp_11batch_normalization_48/batchnorm/ReadVariableOp_12f
1batch_normalization_48/batchnorm/ReadVariableOp_21batch_normalization_48/batchnorm/ReadVariableOp_22j
3batch_normalization_48/batchnorm/mul/ReadVariableOp3batch_normalization_48/batchnorm/mul/ReadVariableOp2F
!conv3d_102/BiasAdd/ReadVariableOp!conv3d_102/BiasAdd/ReadVariableOp2D
 conv3d_102/Conv3D/ReadVariableOp conv3d_102/Conv3D/ReadVariableOp2F
!conv3d_103/BiasAdd/ReadVariableOp!conv3d_103/BiasAdd/ReadVariableOp2D
 conv3d_103/Conv3D/ReadVariableOp conv3d_103/Conv3D/ReadVariableOp2F
!conv3d_104/BiasAdd/ReadVariableOp!conv3d_104/BiasAdd/ReadVariableOp2D
 conv3d_104/Conv3D/ReadVariableOp conv3d_104/Conv3D/ReadVariableOp2F
!conv3d_105/BiasAdd/ReadVariableOp!conv3d_105/BiasAdd/ReadVariableOp2D
 conv3d_105/Conv3D/ReadVariableOp conv3d_105/Conv3D/ReadVariableOp2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2@
dense_60/MatMul/ReadVariableOpdense_60/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?+
?
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_43470

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0**
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0**
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*3
_output_shapes!
:?????????2222
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0**
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
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
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*3
_output_shapes!
:?????????2222
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*3
_output_shapes!
:?????????2222
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????222: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?>
?

H__inference_sequential_21_layer_call_and_return_conditional_losses_43791
conv3d_102_input.
conv3d_102_43739:
conv3d_102_43741:*
batch_normalization_47_43744:*
batch_normalization_47_43746:*
batch_normalization_47_43748:*
batch_normalization_47_43750:.
conv3d_103_43753:
conv3d_103_43755:.
conv3d_104_43759:
conv3d_104_43761:*
batch_normalization_48_43764:*
batch_normalization_48_43766:*
batch_normalization_48_43768:*
batch_normalization_48_43770:.
conv3d_105_43774:
conv3d_105_43776:"
dense_59_43780:
??@
dense_59_43782:@ 
dense_60_43785:@
dense_60_43787:
identity??.batch_normalization_47/StatefulPartitionedCall?.batch_normalization_48/StatefulPartitionedCall?"conv3d_102/StatefulPartitionedCall?"conv3d_103/StatefulPartitionedCall?"conv3d_104/StatefulPartitionedCall?"conv3d_105/StatefulPartitionedCall? dense_59/StatefulPartitionedCall? dense_60/StatefulPartitionedCall?"dropout_40/StatefulPartitionedCall?"dropout_41/StatefulPartitionedCall?
"conv3d_102/StatefulPartitionedCallStatefulPartitionedCallconv3d_102_inputconv3d_102_43739conv3d_102_43741*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv3d_102_layer_call_and_return_conditional_losses_430442$
"conv3d_102/StatefulPartitionedCall?
.batch_normalization_47/StatefulPartitionedCallStatefulPartitionedCall+conv3d_102/StatefulPartitionedCall:output:0batch_normalization_47_43744batch_normalization_47_43746batch_normalization_47_43748batch_normalization_47_43750*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_4347020
.batch_normalization_47/StatefulPartitionedCall?
"conv3d_103/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_47/StatefulPartitionedCall:output:0conv3d_103_43753conv3d_103_43755*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv3d_103_layer_call_and_return_conditional_losses_430902$
"conv3d_103/StatefulPartitionedCall?
"dropout_40/StatefulPartitionedCallStatefulPartitionedCall+conv3d_103/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_40_layer_call_and_return_conditional_losses_434082$
"dropout_40/StatefulPartitionedCall?
"conv3d_104/StatefulPartitionedCallStatefulPartitionedCall+dropout_40/StatefulPartitionedCall:output:0conv3d_104_43759conv3d_104_43761*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv3d_104_layer_call_and_return_conditional_losses_431142$
"conv3d_104/StatefulPartitionedCall?
.batch_normalization_48/StatefulPartitionedCallStatefulPartitionedCall+conv3d_104/StatefulPartitionedCall:output:0batch_normalization_48_43764batch_normalization_48_43766batch_normalization_48_43768batch_normalization_48_43770*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_4336720
.batch_normalization_48/StatefulPartitionedCall?
"dropout_41/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_48/StatefulPartitionedCall:output:0#^dropout_40/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_41_layer_call_and_return_conditional_losses_433152$
"dropout_41/StatefulPartitionedCall?
"conv3d_105/StatefulPartitionedCallStatefulPartitionedCall+dropout_41/StatefulPartitionedCall:output:0conv3d_105_43774conv3d_105_43776*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv3d_105_layer_call_and_return_conditional_losses_431672$
"conv3d_105/StatefulPartitionedCall?
flatten_21/PartitionedCallPartitionedCall+conv3d_105/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_21_layer_call_and_return_conditional_losses_431792
flatten_21/PartitionedCall?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall#flatten_21/PartitionedCall:output:0dense_59_43780dense_59_43782*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_59_layer_call_and_return_conditional_losses_431922"
 dense_59/StatefulPartitionedCall?
 dense_60/StatefulPartitionedCallStatefulPartitionedCall)dense_59/StatefulPartitionedCall:output:0dense_60_43785dense_60_43787*
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
GPU 2J 8? *L
fGRE
C__inference_dense_60_layer_call_and_return_conditional_losses_432092"
 dense_60/StatefulPartitionedCall?
IdentityIdentity)dense_60/StatefulPartitionedCall:output:0/^batch_normalization_47/StatefulPartitionedCall/^batch_normalization_48/StatefulPartitionedCall#^conv3d_102/StatefulPartitionedCall#^conv3d_103/StatefulPartitionedCall#^conv3d_104/StatefulPartitionedCall#^conv3d_105/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall#^dropout_40/StatefulPartitionedCall#^dropout_41/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????222: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_47/StatefulPartitionedCall.batch_normalization_47/StatefulPartitionedCall2`
.batch_normalization_48/StatefulPartitionedCall.batch_normalization_48/StatefulPartitionedCall2H
"conv3d_102/StatefulPartitionedCall"conv3d_102/StatefulPartitionedCall2H
"conv3d_103/StatefulPartitionedCall"conv3d_103/StatefulPartitionedCall2H
"conv3d_104/StatefulPartitionedCall"conv3d_104/StatefulPartitionedCall2H
"conv3d_105/StatefulPartitionedCall"conv3d_105/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2H
"dropout_40/StatefulPartitionedCall"dropout_40/StatefulPartitionedCall2H
"dropout_41/StatefulPartitionedCall"dropout_41/StatefulPartitionedCall:e a
3
_output_shapes!
:?????????222
*
_user_specified_nameconv3d_102_input
?
?
(__inference_dense_59_layer_call_fn_44625

inputs
unknown:
??@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_59_layer_call_and_return_conditional_losses_431922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
C__inference_dense_60_layer_call_and_return_conditional_losses_43209

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
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
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
d
E__inference_dropout_40_layer_call_and_return_conditional_losses_43408

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????2222
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????222*
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
T0*3
_output_shapes!
:?????????2222
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????2222
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????2222
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????222:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?,
?
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_44214

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0**
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0**
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*N
_output_shapes<
::8????????????????????????????????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0**
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
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
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*N
_output_shapes<
::8????????????????????????????????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*N
_output_shapes<
::8????????????????????????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*N
_output_shapes<
::8????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8????????????????????????????????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:v r
N
_output_shapes<
::8????????????????????????????????????
 
_user_specified_nameinputs
?	
?
6__inference_batch_normalization_48_layer_call_fn_44508

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8????????????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_428882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*N
_output_shapes<
::8????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8????????????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8????????????????????????????????????
 
_user_specified_nameinputs
?,
?
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_42786

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0**
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0**
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*N
_output_shapes<
::8????????????????????????????????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0**
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
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
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*N
_output_shapes<
::8????????????????????????????????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*N
_output_shapes<
::8????????????????????????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*N
_output_shapes<
::8????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8????????????????????????????????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:v r
N
_output_shapes<
::8????????????????????????????????????
 
_user_specified_nameinputs
?
F
*__inference_flatten_21_layer_call_fn_44605

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_21_layer_call_and_return_conditional_losses_431792
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????222:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?

?
C__inference_dense_59_layer_call_and_return_conditional_losses_44616

inputs2
matmul_readvariableop_resource:
??@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_21_layer_call_and_return_conditional_losses_44050

inputsG
)conv3d_102_conv3d_readvariableop_resource:8
*conv3d_102_biasadd_readvariableop_resource:L
>batch_normalization_47_assignmovingavg_readvariableop_resource:N
@batch_normalization_47_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_47_batchnorm_mul_readvariableop_resource:F
8batch_normalization_47_batchnorm_readvariableop_resource:G
)conv3d_103_conv3d_readvariableop_resource:8
*conv3d_103_biasadd_readvariableop_resource:G
)conv3d_104_conv3d_readvariableop_resource:8
*conv3d_104_biasadd_readvariableop_resource:L
>batch_normalization_48_assignmovingavg_readvariableop_resource:N
@batch_normalization_48_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_48_batchnorm_mul_readvariableop_resource:F
8batch_normalization_48_batchnorm_readvariableop_resource:G
)conv3d_105_conv3d_readvariableop_resource:8
*conv3d_105_biasadd_readvariableop_resource:;
'dense_59_matmul_readvariableop_resource:
??@6
(dense_59_biasadd_readvariableop_resource:@9
'dense_60_matmul_readvariableop_resource:@6
(dense_60_biasadd_readvariableop_resource:
identity??&batch_normalization_47/AssignMovingAvg?5batch_normalization_47/AssignMovingAvg/ReadVariableOp?(batch_normalization_47/AssignMovingAvg_1?7batch_normalization_47/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_47/batchnorm/ReadVariableOp?3batch_normalization_47/batchnorm/mul/ReadVariableOp?&batch_normalization_48/AssignMovingAvg?5batch_normalization_48/AssignMovingAvg/ReadVariableOp?(batch_normalization_48/AssignMovingAvg_1?7batch_normalization_48/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_48/batchnorm/ReadVariableOp?3batch_normalization_48/batchnorm/mul/ReadVariableOp?!conv3d_102/BiasAdd/ReadVariableOp? conv3d_102/Conv3D/ReadVariableOp?!conv3d_103/BiasAdd/ReadVariableOp? conv3d_103/Conv3D/ReadVariableOp?!conv3d_104/BiasAdd/ReadVariableOp? conv3d_104/Conv3D/ReadVariableOp?!conv3d_105/BiasAdd/ReadVariableOp? conv3d_105/Conv3D/ReadVariableOp?dense_59/BiasAdd/ReadVariableOp?dense_59/MatMul/ReadVariableOp?dense_60/BiasAdd/ReadVariableOp?dense_60/MatMul/ReadVariableOp?
 conv3d_102/Conv3D/ReadVariableOpReadVariableOp)conv3d_102_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_102/Conv3D/ReadVariableOp?
conv3d_102/Conv3DConv3Dinputs(conv3d_102/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????222*
paddingSAME*
strides	
2
conv3d_102/Conv3D?
!conv3d_102/BiasAdd/ReadVariableOpReadVariableOp*conv3d_102_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_102/BiasAdd/ReadVariableOp?
conv3d_102/BiasAddBiasAddconv3d_102/Conv3D:output:0)conv3d_102/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????2222
conv3d_102/BiasAdd?
conv3d_102/ReluReluconv3d_102/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????2222
conv3d_102/Relu?
5batch_normalization_47/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             27
5batch_normalization_47/moments/mean/reduction_indices?
#batch_normalization_47/moments/meanMeanconv3d_102/Relu:activations:0>batch_normalization_47/moments/mean/reduction_indices:output:0*
T0**
_output_shapes
:*
	keep_dims(2%
#batch_normalization_47/moments/mean?
+batch_normalization_47/moments/StopGradientStopGradient,batch_normalization_47/moments/mean:output:0*
T0**
_output_shapes
:2-
+batch_normalization_47/moments/StopGradient?
0batch_normalization_47/moments/SquaredDifferenceSquaredDifferenceconv3d_102/Relu:activations:04batch_normalization_47/moments/StopGradient:output:0*
T0*3
_output_shapes!
:?????????22222
0batch_normalization_47/moments/SquaredDifference?
9batch_normalization_47/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2;
9batch_normalization_47/moments/variance/reduction_indices?
'batch_normalization_47/moments/varianceMean4batch_normalization_47/moments/SquaredDifference:z:0Bbatch_normalization_47/moments/variance/reduction_indices:output:0*
T0**
_output_shapes
:*
	keep_dims(2)
'batch_normalization_47/moments/variance?
&batch_normalization_47/moments/SqueezeSqueeze,batch_normalization_47/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2(
&batch_normalization_47/moments/Squeeze?
(batch_normalization_47/moments/Squeeze_1Squeeze0batch_normalization_47/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2*
(batch_normalization_47/moments/Squeeze_1?
,batch_normalization_47/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_47/AssignMovingAvg/decay?
5batch_normalization_47/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_47_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype027
5batch_normalization_47/AssignMovingAvg/ReadVariableOp?
*batch_normalization_47/AssignMovingAvg/subSub=batch_normalization_47/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_47/moments/Squeeze:output:0*
T0*
_output_shapes
:2,
*batch_normalization_47/AssignMovingAvg/sub?
*batch_normalization_47/AssignMovingAvg/mulMul.batch_normalization_47/AssignMovingAvg/sub:z:05batch_normalization_47/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2,
*batch_normalization_47/AssignMovingAvg/mul?
&batch_normalization_47/AssignMovingAvgAssignSubVariableOp>batch_normalization_47_assignmovingavg_readvariableop_resource.batch_normalization_47/AssignMovingAvg/mul:z:06^batch_normalization_47/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_47/AssignMovingAvg?
.batch_normalization_47/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_47/AssignMovingAvg_1/decay?
7batch_normalization_47/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_47_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype029
7batch_normalization_47/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_47/AssignMovingAvg_1/subSub?batch_normalization_47/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_47/moments/Squeeze_1:output:0*
T0*
_output_shapes
:2.
,batch_normalization_47/AssignMovingAvg_1/sub?
,batch_normalization_47/AssignMovingAvg_1/mulMul0batch_normalization_47/AssignMovingAvg_1/sub:z:07batch_normalization_47/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2.
,batch_normalization_47/AssignMovingAvg_1/mul?
(batch_normalization_47/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_47_assignmovingavg_1_readvariableop_resource0batch_normalization_47/AssignMovingAvg_1/mul:z:08^batch_normalization_47/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_47/AssignMovingAvg_1?
&batch_normalization_47/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_47/batchnorm/add/y?
$batch_normalization_47/batchnorm/addAddV21batch_normalization_47/moments/Squeeze_1:output:0/batch_normalization_47/batchnorm/add/y:output:0*
T0*
_output_shapes
:2&
$batch_normalization_47/batchnorm/add?
&batch_normalization_47/batchnorm/RsqrtRsqrt(batch_normalization_47/batchnorm/add:z:0*
T0*
_output_shapes
:2(
&batch_normalization_47/batchnorm/Rsqrt?
3batch_normalization_47/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_47_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype025
3batch_normalization_47/batchnorm/mul/ReadVariableOp?
$batch_normalization_47/batchnorm/mulMul*batch_normalization_47/batchnorm/Rsqrt:y:0;batch_normalization_47/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2&
$batch_normalization_47/batchnorm/mul?
&batch_normalization_47/batchnorm/mul_1Mulconv3d_102/Relu:activations:0(batch_normalization_47/batchnorm/mul:z:0*
T0*3
_output_shapes!
:?????????2222(
&batch_normalization_47/batchnorm/mul_1?
&batch_normalization_47/batchnorm/mul_2Mul/batch_normalization_47/moments/Squeeze:output:0(batch_normalization_47/batchnorm/mul:z:0*
T0*
_output_shapes
:2(
&batch_normalization_47/batchnorm/mul_2?
/batch_normalization_47/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_47_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype021
/batch_normalization_47/batchnorm/ReadVariableOp?
$batch_normalization_47/batchnorm/subSub7batch_normalization_47/batchnorm/ReadVariableOp:value:0*batch_normalization_47/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2&
$batch_normalization_47/batchnorm/sub?
&batch_normalization_47/batchnorm/add_1AddV2*batch_normalization_47/batchnorm/mul_1:z:0(batch_normalization_47/batchnorm/sub:z:0*
T0*3
_output_shapes!
:?????????2222(
&batch_normalization_47/batchnorm/add_1?
 conv3d_103/Conv3D/ReadVariableOpReadVariableOp)conv3d_103_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_103/Conv3D/ReadVariableOp?
conv3d_103/Conv3DConv3D*batch_normalization_47/batchnorm/add_1:z:0(conv3d_103/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????222*
paddingSAME*
strides	
2
conv3d_103/Conv3D?
!conv3d_103/BiasAdd/ReadVariableOpReadVariableOp*conv3d_103_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_103/BiasAdd/ReadVariableOp?
conv3d_103/BiasAddBiasAddconv3d_103/Conv3D:output:0)conv3d_103/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????2222
conv3d_103/BiasAdd?
conv3d_103/SigmoidSigmoidconv3d_103/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????2222
conv3d_103/Sigmoidy
dropout_40/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_40/dropout/Const?
dropout_40/dropout/MulMulconv3d_103/Sigmoid:y:0!dropout_40/dropout/Const:output:0*
T0*3
_output_shapes!
:?????????2222
dropout_40/dropout/Mulz
dropout_40/dropout/ShapeShapeconv3d_103/Sigmoid:y:0*
T0*
_output_shapes
:2
dropout_40/dropout/Shape?
/dropout_40/dropout/random_uniform/RandomUniformRandomUniform!dropout_40/dropout/Shape:output:0*
T0*3
_output_shapes!
:?????????222*
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
T0*3
_output_shapes!
:?????????2222!
dropout_40/dropout/GreaterEqual?
dropout_40/dropout/CastCast#dropout_40/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????2222
dropout_40/dropout/Cast?
dropout_40/dropout/Mul_1Muldropout_40/dropout/Mul:z:0dropout_40/dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????2222
dropout_40/dropout/Mul_1?
 conv3d_104/Conv3D/ReadVariableOpReadVariableOp)conv3d_104_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_104/Conv3D/ReadVariableOp?
conv3d_104/Conv3DConv3Ddropout_40/dropout/Mul_1:z:0(conv3d_104/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????222*
paddingSAME*
strides	
2
conv3d_104/Conv3D?
!conv3d_104/BiasAdd/ReadVariableOpReadVariableOp*conv3d_104_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_104/BiasAdd/ReadVariableOp?
conv3d_104/BiasAddBiasAddconv3d_104/Conv3D:output:0)conv3d_104/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????2222
conv3d_104/BiasAdd?
conv3d_104/SigmoidSigmoidconv3d_104/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????2222
conv3d_104/Sigmoid?
5batch_normalization_48/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             27
5batch_normalization_48/moments/mean/reduction_indices?
#batch_normalization_48/moments/meanMeanconv3d_104/Sigmoid:y:0>batch_normalization_48/moments/mean/reduction_indices:output:0*
T0**
_output_shapes
:*
	keep_dims(2%
#batch_normalization_48/moments/mean?
+batch_normalization_48/moments/StopGradientStopGradient,batch_normalization_48/moments/mean:output:0*
T0**
_output_shapes
:2-
+batch_normalization_48/moments/StopGradient?
0batch_normalization_48/moments/SquaredDifferenceSquaredDifferenceconv3d_104/Sigmoid:y:04batch_normalization_48/moments/StopGradient:output:0*
T0*3
_output_shapes!
:?????????22222
0batch_normalization_48/moments/SquaredDifference?
9batch_normalization_48/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2;
9batch_normalization_48/moments/variance/reduction_indices?
'batch_normalization_48/moments/varianceMean4batch_normalization_48/moments/SquaredDifference:z:0Bbatch_normalization_48/moments/variance/reduction_indices:output:0*
T0**
_output_shapes
:*
	keep_dims(2)
'batch_normalization_48/moments/variance?
&batch_normalization_48/moments/SqueezeSqueeze,batch_normalization_48/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2(
&batch_normalization_48/moments/Squeeze?
(batch_normalization_48/moments/Squeeze_1Squeeze0batch_normalization_48/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2*
(batch_normalization_48/moments/Squeeze_1?
,batch_normalization_48/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_48/AssignMovingAvg/decay?
5batch_normalization_48/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_48_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype027
5batch_normalization_48/AssignMovingAvg/ReadVariableOp?
*batch_normalization_48/AssignMovingAvg/subSub=batch_normalization_48/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_48/moments/Squeeze:output:0*
T0*
_output_shapes
:2,
*batch_normalization_48/AssignMovingAvg/sub?
*batch_normalization_48/AssignMovingAvg/mulMul.batch_normalization_48/AssignMovingAvg/sub:z:05batch_normalization_48/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2,
*batch_normalization_48/AssignMovingAvg/mul?
&batch_normalization_48/AssignMovingAvgAssignSubVariableOp>batch_normalization_48_assignmovingavg_readvariableop_resource.batch_normalization_48/AssignMovingAvg/mul:z:06^batch_normalization_48/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_48/AssignMovingAvg?
.batch_normalization_48/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_48/AssignMovingAvg_1/decay?
7batch_normalization_48/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_48_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype029
7batch_normalization_48/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_48/AssignMovingAvg_1/subSub?batch_normalization_48/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_48/moments/Squeeze_1:output:0*
T0*
_output_shapes
:2.
,batch_normalization_48/AssignMovingAvg_1/sub?
,batch_normalization_48/AssignMovingAvg_1/mulMul0batch_normalization_48/AssignMovingAvg_1/sub:z:07batch_normalization_48/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2.
,batch_normalization_48/AssignMovingAvg_1/mul?
(batch_normalization_48/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_48_assignmovingavg_1_readvariableop_resource0batch_normalization_48/AssignMovingAvg_1/mul:z:08^batch_normalization_48/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_48/AssignMovingAvg_1?
&batch_normalization_48/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_48/batchnorm/add/y?
$batch_normalization_48/batchnorm/addAddV21batch_normalization_48/moments/Squeeze_1:output:0/batch_normalization_48/batchnorm/add/y:output:0*
T0*
_output_shapes
:2&
$batch_normalization_48/batchnorm/add?
&batch_normalization_48/batchnorm/RsqrtRsqrt(batch_normalization_48/batchnorm/add:z:0*
T0*
_output_shapes
:2(
&batch_normalization_48/batchnorm/Rsqrt?
3batch_normalization_48/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_48_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype025
3batch_normalization_48/batchnorm/mul/ReadVariableOp?
$batch_normalization_48/batchnorm/mulMul*batch_normalization_48/batchnorm/Rsqrt:y:0;batch_normalization_48/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2&
$batch_normalization_48/batchnorm/mul?
&batch_normalization_48/batchnorm/mul_1Mulconv3d_104/Sigmoid:y:0(batch_normalization_48/batchnorm/mul:z:0*
T0*3
_output_shapes!
:?????????2222(
&batch_normalization_48/batchnorm/mul_1?
&batch_normalization_48/batchnorm/mul_2Mul/batch_normalization_48/moments/Squeeze:output:0(batch_normalization_48/batchnorm/mul:z:0*
T0*
_output_shapes
:2(
&batch_normalization_48/batchnorm/mul_2?
/batch_normalization_48/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_48_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype021
/batch_normalization_48/batchnorm/ReadVariableOp?
$batch_normalization_48/batchnorm/subSub7batch_normalization_48/batchnorm/ReadVariableOp:value:0*batch_normalization_48/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2&
$batch_normalization_48/batchnorm/sub?
&batch_normalization_48/batchnorm/add_1AddV2*batch_normalization_48/batchnorm/mul_1:z:0(batch_normalization_48/batchnorm/sub:z:0*
T0*3
_output_shapes!
:?????????2222(
&batch_normalization_48/batchnorm/add_1y
dropout_41/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_41/dropout/Const?
dropout_41/dropout/MulMul*batch_normalization_48/batchnorm/add_1:z:0!dropout_41/dropout/Const:output:0*
T0*3
_output_shapes!
:?????????2222
dropout_41/dropout/Mul?
dropout_41/dropout/ShapeShape*batch_normalization_48/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_41/dropout/Shape?
/dropout_41/dropout/random_uniform/RandomUniformRandomUniform!dropout_41/dropout/Shape:output:0*
T0*3
_output_shapes!
:?????????222*
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
T0*3
_output_shapes!
:?????????2222!
dropout_41/dropout/GreaterEqual?
dropout_41/dropout/CastCast#dropout_41/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????2222
dropout_41/dropout/Cast?
dropout_41/dropout/Mul_1Muldropout_41/dropout/Mul:z:0dropout_41/dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????2222
dropout_41/dropout/Mul_1?
 conv3d_105/Conv3D/ReadVariableOpReadVariableOp)conv3d_105_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_105/Conv3D/ReadVariableOp?
conv3d_105/Conv3DConv3Ddropout_41/dropout/Mul_1:z:0(conv3d_105/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????222*
paddingSAME*
strides	
2
conv3d_105/Conv3D?
!conv3d_105/BiasAdd/ReadVariableOpReadVariableOp*conv3d_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_105/BiasAdd/ReadVariableOp?
conv3d_105/BiasAddBiasAddconv3d_105/Conv3D:output:0)conv3d_105/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????2222
conv3d_105/BiasAdd?
conv3d_105/ReluReluconv3d_105/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????2222
conv3d_105/Reluu
flatten_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ? 2
flatten_21/Const?
flatten_21/ReshapeReshapeconv3d_105/Relu:activations:0flatten_21/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_21/Reshape?
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource* 
_output_shapes
:
??@*
dtype02 
dense_59/MatMul/ReadVariableOp?
dense_59/MatMulMatMulflatten_21/Reshape:output:0&dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_59/MatMul?
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_59/BiasAdd/ReadVariableOp?
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_59/BiasAdds
dense_59/ReluReludense_59/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_59/Relu?
dense_60/MatMul/ReadVariableOpReadVariableOp'dense_60_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_60/MatMul/ReadVariableOp?
dense_60/MatMulMatMuldense_59/Relu:activations:0&dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_60/MatMul?
dense_60/BiasAdd/ReadVariableOpReadVariableOp(dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_60/BiasAdd/ReadVariableOp?
dense_60/BiasAddBiasAdddense_60/MatMul:product:0'dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_60/BiasAdd|
dense_60/SigmoidSigmoiddense_60/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_60/Sigmoid?
IdentityIdentitydense_60/Sigmoid:y:0'^batch_normalization_47/AssignMovingAvg6^batch_normalization_47/AssignMovingAvg/ReadVariableOp)^batch_normalization_47/AssignMovingAvg_18^batch_normalization_47/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_47/batchnorm/ReadVariableOp4^batch_normalization_47/batchnorm/mul/ReadVariableOp'^batch_normalization_48/AssignMovingAvg6^batch_normalization_48/AssignMovingAvg/ReadVariableOp)^batch_normalization_48/AssignMovingAvg_18^batch_normalization_48/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_48/batchnorm/ReadVariableOp4^batch_normalization_48/batchnorm/mul/ReadVariableOp"^conv3d_102/BiasAdd/ReadVariableOp!^conv3d_102/Conv3D/ReadVariableOp"^conv3d_103/BiasAdd/ReadVariableOp!^conv3d_103/Conv3D/ReadVariableOp"^conv3d_104/BiasAdd/ReadVariableOp!^conv3d_104/Conv3D/ReadVariableOp"^conv3d_105/BiasAdd/ReadVariableOp!^conv3d_105/Conv3D/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp ^dense_60/BiasAdd/ReadVariableOp^dense_60/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????222: : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_47/AssignMovingAvg&batch_normalization_47/AssignMovingAvg2n
5batch_normalization_47/AssignMovingAvg/ReadVariableOp5batch_normalization_47/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_47/AssignMovingAvg_1(batch_normalization_47/AssignMovingAvg_12r
7batch_normalization_47/AssignMovingAvg_1/ReadVariableOp7batch_normalization_47/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_47/batchnorm/ReadVariableOp/batch_normalization_47/batchnorm/ReadVariableOp2j
3batch_normalization_47/batchnorm/mul/ReadVariableOp3batch_normalization_47/batchnorm/mul/ReadVariableOp2P
&batch_normalization_48/AssignMovingAvg&batch_normalization_48/AssignMovingAvg2n
5batch_normalization_48/AssignMovingAvg/ReadVariableOp5batch_normalization_48/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_48/AssignMovingAvg_1(batch_normalization_48/AssignMovingAvg_12r
7batch_normalization_48/AssignMovingAvg_1/ReadVariableOp7batch_normalization_48/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_48/batchnorm/ReadVariableOp/batch_normalization_48/batchnorm/ReadVariableOp2j
3batch_normalization_48/batchnorm/mul/ReadVariableOp3batch_normalization_48/batchnorm/mul/ReadVariableOp2F
!conv3d_102/BiasAdd/ReadVariableOp!conv3d_102/BiasAdd/ReadVariableOp2D
 conv3d_102/Conv3D/ReadVariableOp conv3d_102/Conv3D/ReadVariableOp2F
!conv3d_103/BiasAdd/ReadVariableOp!conv3d_103/BiasAdd/ReadVariableOp2D
 conv3d_103/Conv3D/ReadVariableOp conv3d_103/Conv3D/ReadVariableOp2F
!conv3d_104/BiasAdd/ReadVariableOp!conv3d_104/BiasAdd/ReadVariableOp2D
 conv3d_104/Conv3D/ReadVariableOp conv3d_104/Conv3D/ReadVariableOp2F
!conv3d_105/BiasAdd/ReadVariableOp!conv3d_105/BiasAdd/ReadVariableOp2D
 conv3d_105/Conv3D/ReadVariableOp conv3d_105/Conv3D/ReadVariableOp2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2@
dense_60/MatMul/ReadVariableOpdense_60/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?

?
C__inference_dense_59_layer_call_and_return_conditional_losses_43192

inputs2
matmul_readvariableop_resource:
??@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
c
*__inference_dropout_40_layer_call_fn_44367

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_40_layer_call_and_return_conditional_losses_434082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????22222
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?	
?
6__inference_batch_normalization_48_layer_call_fn_44521

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8????????????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_429482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*N
_output_shapes<
::8????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8????????????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8????????????????????????????????????
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_43844
conv3d_102_input%
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:'
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:(

unknown_13:

unknown_14:

unknown_15:
??@

unknown_16:@

unknown_17:@

unknown_18:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv3d_102_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_427022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????222: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
3
_output_shapes!
:?????????222
*
_user_specified_nameconv3d_102_input
?
c
E__inference_dropout_41_layer_call_and_return_conditional_losses_43154

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????2222

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????2222

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????222:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?;
?	
H__inference_sequential_21_layer_call_and_return_conditional_losses_43216

inputs.
conv3d_102_43045:
conv3d_102_43047:*
batch_normalization_47_43070:*
batch_normalization_47_43072:*
batch_normalization_47_43074:*
batch_normalization_47_43076:.
conv3d_103_43091:
conv3d_103_43093:.
conv3d_104_43115:
conv3d_104_43117:*
batch_normalization_48_43140:*
batch_normalization_48_43142:*
batch_normalization_48_43144:*
batch_normalization_48_43146:.
conv3d_105_43168:
conv3d_105_43170:"
dense_59_43193:
??@
dense_59_43195:@ 
dense_60_43210:@
dense_60_43212:
identity??.batch_normalization_47/StatefulPartitionedCall?.batch_normalization_48/StatefulPartitionedCall?"conv3d_102/StatefulPartitionedCall?"conv3d_103/StatefulPartitionedCall?"conv3d_104/StatefulPartitionedCall?"conv3d_105/StatefulPartitionedCall? dense_59/StatefulPartitionedCall? dense_60/StatefulPartitionedCall?
"conv3d_102/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_102_43045conv3d_102_43047*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv3d_102_layer_call_and_return_conditional_losses_430442$
"conv3d_102/StatefulPartitionedCall?
.batch_normalization_47/StatefulPartitionedCallStatefulPartitionedCall+conv3d_102/StatefulPartitionedCall:output:0batch_normalization_47_43070batch_normalization_47_43072batch_normalization_47_43074batch_normalization_47_43076*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_4306920
.batch_normalization_47/StatefulPartitionedCall?
"conv3d_103/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_47/StatefulPartitionedCall:output:0conv3d_103_43091conv3d_103_43093*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv3d_103_layer_call_and_return_conditional_losses_430902$
"conv3d_103/StatefulPartitionedCall?
dropout_40/PartitionedCallPartitionedCall+conv3d_103/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_40_layer_call_and_return_conditional_losses_431012
dropout_40/PartitionedCall?
"conv3d_104/StatefulPartitionedCallStatefulPartitionedCall#dropout_40/PartitionedCall:output:0conv3d_104_43115conv3d_104_43117*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv3d_104_layer_call_and_return_conditional_losses_431142$
"conv3d_104/StatefulPartitionedCall?
.batch_normalization_48/StatefulPartitionedCallStatefulPartitionedCall+conv3d_104/StatefulPartitionedCall:output:0batch_normalization_48_43140batch_normalization_48_43142batch_normalization_48_43144batch_normalization_48_43146*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_4313920
.batch_normalization_48/StatefulPartitionedCall?
dropout_41/PartitionedCallPartitionedCall7batch_normalization_48/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_41_layer_call_and_return_conditional_losses_431542
dropout_41/PartitionedCall?
"conv3d_105/StatefulPartitionedCallStatefulPartitionedCall#dropout_41/PartitionedCall:output:0conv3d_105_43168conv3d_105_43170*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv3d_105_layer_call_and_return_conditional_losses_431672$
"conv3d_105/StatefulPartitionedCall?
flatten_21/PartitionedCallPartitionedCall+conv3d_105/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_21_layer_call_and_return_conditional_losses_431792
flatten_21/PartitionedCall?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall#flatten_21/PartitionedCall:output:0dense_59_43193dense_59_43195*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_59_layer_call_and_return_conditional_losses_431922"
 dense_59/StatefulPartitionedCall?
 dense_60/StatefulPartitionedCallStatefulPartitionedCall)dense_59/StatefulPartitionedCall:output:0dense_60_43210dense_60_43212*
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
GPU 2J 8? *L
fGRE
C__inference_dense_60_layer_call_and_return_conditional_losses_432092"
 dense_60/StatefulPartitionedCall?
IdentityIdentity)dense_60/StatefulPartitionedCall:output:0/^batch_normalization_47/StatefulPartitionedCall/^batch_normalization_48/StatefulPartitionedCall#^conv3d_102/StatefulPartitionedCall#^conv3d_103/StatefulPartitionedCall#^conv3d_104/StatefulPartitionedCall#^conv3d_105/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????222: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_47/StatefulPartitionedCall.batch_normalization_47/StatefulPartitionedCall2`
.batch_normalization_48/StatefulPartitionedCall.batch_normalization_48/StatefulPartitionedCall2H
"conv3d_102/StatefulPartitionedCall"conv3d_102/StatefulPartitionedCall2H
"conv3d_103/StatefulPartitionedCall"conv3d_103/StatefulPartitionedCall2H
"conv3d_104/StatefulPartitionedCall"conv3d_104/StatefulPartitionedCall2H
"conv3d_105/StatefulPartitionedCall"conv3d_105/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
a
E__inference_flatten_21_layer_call_and_return_conditional_losses_43179

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ? 2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????222:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_44461

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
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
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*3
_output_shapes!
:?????????2222
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*3
_output_shapes!
:?????????2222
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????222: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_44407

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
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
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*N
_output_shapes<
::8????????????????????????????????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*N
_output_shapes<
::8????????????????????????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*N
_output_shapes<
::8????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8????????????????????????????????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:v r
N
_output_shapes<
::8????????????????????????????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_42888

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
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
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*N
_output_shapes<
::8????????????????????????????????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*N
_output_shapes<
::8????????????????????????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*N
_output_shapes<
::8????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8????????????????????????????????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:v r
N
_output_shapes<
::8????????????????????????????????????
 
_user_specified_nameinputs
?;
?	
H__inference_sequential_21_layer_call_and_return_conditional_losses_43736
conv3d_102_input.
conv3d_102_43684:
conv3d_102_43686:*
batch_normalization_47_43689:*
batch_normalization_47_43691:*
batch_normalization_47_43693:*
batch_normalization_47_43695:.
conv3d_103_43698:
conv3d_103_43700:.
conv3d_104_43704:
conv3d_104_43706:*
batch_normalization_48_43709:*
batch_normalization_48_43711:*
batch_normalization_48_43713:*
batch_normalization_48_43715:.
conv3d_105_43719:
conv3d_105_43721:"
dense_59_43725:
??@
dense_59_43727:@ 
dense_60_43730:@
dense_60_43732:
identity??.batch_normalization_47/StatefulPartitionedCall?.batch_normalization_48/StatefulPartitionedCall?"conv3d_102/StatefulPartitionedCall?"conv3d_103/StatefulPartitionedCall?"conv3d_104/StatefulPartitionedCall?"conv3d_105/StatefulPartitionedCall? dense_59/StatefulPartitionedCall? dense_60/StatefulPartitionedCall?
"conv3d_102/StatefulPartitionedCallStatefulPartitionedCallconv3d_102_inputconv3d_102_43684conv3d_102_43686*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv3d_102_layer_call_and_return_conditional_losses_430442$
"conv3d_102/StatefulPartitionedCall?
.batch_normalization_47/StatefulPartitionedCallStatefulPartitionedCall+conv3d_102/StatefulPartitionedCall:output:0batch_normalization_47_43689batch_normalization_47_43691batch_normalization_47_43693batch_normalization_47_43695*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_4306920
.batch_normalization_47/StatefulPartitionedCall?
"conv3d_103/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_47/StatefulPartitionedCall:output:0conv3d_103_43698conv3d_103_43700*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv3d_103_layer_call_and_return_conditional_losses_430902$
"conv3d_103/StatefulPartitionedCall?
dropout_40/PartitionedCallPartitionedCall+conv3d_103/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_40_layer_call_and_return_conditional_losses_431012
dropout_40/PartitionedCall?
"conv3d_104/StatefulPartitionedCallStatefulPartitionedCall#dropout_40/PartitionedCall:output:0conv3d_104_43704conv3d_104_43706*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv3d_104_layer_call_and_return_conditional_losses_431142$
"conv3d_104/StatefulPartitionedCall?
.batch_normalization_48/StatefulPartitionedCallStatefulPartitionedCall+conv3d_104/StatefulPartitionedCall:output:0batch_normalization_48_43709batch_normalization_48_43711batch_normalization_48_43713batch_normalization_48_43715*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_4313920
.batch_normalization_48/StatefulPartitionedCall?
dropout_41/PartitionedCallPartitionedCall7batch_normalization_48/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_41_layer_call_and_return_conditional_losses_431542
dropout_41/PartitionedCall?
"conv3d_105/StatefulPartitionedCallStatefulPartitionedCall#dropout_41/PartitionedCall:output:0conv3d_105_43719conv3d_105_43721*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv3d_105_layer_call_and_return_conditional_losses_431672$
"conv3d_105/StatefulPartitionedCall?
flatten_21/PartitionedCallPartitionedCall+conv3d_105/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_21_layer_call_and_return_conditional_losses_431792
flatten_21/PartitionedCall?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall#flatten_21/PartitionedCall:output:0dense_59_43725dense_59_43727*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_59_layer_call_and_return_conditional_losses_431922"
 dense_59/StatefulPartitionedCall?
 dense_60/StatefulPartitionedCallStatefulPartitionedCall)dense_59/StatefulPartitionedCall:output:0dense_60_43730dense_60_43732*
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
GPU 2J 8? *L
fGRE
C__inference_dense_60_layer_call_and_return_conditional_losses_432092"
 dense_60/StatefulPartitionedCall?
IdentityIdentity)dense_60/StatefulPartitionedCall:output:0/^batch_normalization_47/StatefulPartitionedCall/^batch_normalization_48/StatefulPartitionedCall#^conv3d_102/StatefulPartitionedCall#^conv3d_103/StatefulPartitionedCall#^conv3d_104/StatefulPartitionedCall#^conv3d_105/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????222: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_47/StatefulPartitionedCall.batch_normalization_47/StatefulPartitionedCall2`
.batch_normalization_48/StatefulPartitionedCall.batch_normalization_48/StatefulPartitionedCall2H
"conv3d_102/StatefulPartitionedCall"conv3d_102/StatefulPartitionedCall2H
"conv3d_103/StatefulPartitionedCall"conv3d_103/StatefulPartitionedCall2H
"conv3d_104/StatefulPartitionedCall"conv3d_104/StatefulPartitionedCall2H
"conv3d_105/StatefulPartitionedCall"conv3d_105/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall:e a
3
_output_shapes!
:?????????222
*
_user_specified_nameconv3d_102_input
?
?
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_44234

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
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
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*3
_output_shapes!
:?????????2222
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*3
_output_shapes!
:?????????2222
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????222: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?+
?
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_44495

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0**
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0**
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*3
_output_shapes!
:?????????2222
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0**
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
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
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*3
_output_shapes!
:?????????2222
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*3
_output_shapes!
:?????????2222
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????222: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
?
E__inference_conv3d_103_layer_call_and_return_conditional_losses_43090

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????222*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????2222	
BiasAddm
SigmoidSigmoidBiasAdd:output:0*
T0*3
_output_shapes!
:?????????2222	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????222: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
?
E__inference_conv3d_102_layer_call_and_return_conditional_losses_43044

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????222*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????2222	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????2222
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????222: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
?
*__inference_conv3d_104_layer_call_fn_44387

inputs%
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv3d_104_layer_call_and_return_conditional_losses_431142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????222: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
c
*__inference_dropout_41_layer_call_fn_44574

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_41_layer_call_and_return_conditional_losses_433152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????22222
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
c
E__inference_dropout_40_layer_call_and_return_conditional_losses_44345

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????2222

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????2222

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????222:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_48_layer_call_fn_44547

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_433672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????222: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
F
*__inference_dropout_41_layer_call_fn_44569

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_41_layer_call_and_return_conditional_losses_431542
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????222:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
d
E__inference_dropout_41_layer_call_and_return_conditional_losses_43315

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????2222
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????222*
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
T0*3
_output_shapes!
:?????????2222
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????2222
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????2222
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????222:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?,
?
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_42948

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0**
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0**
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*N
_output_shapes<
::8????????????????????????????????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0**
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
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
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*N
_output_shapes<
::8????????????????????????????????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*N
_output_shapes<
::8????????????????????????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*N
_output_shapes<
::8????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8????????????????????????????????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:v r
N
_output_shapes<
::8????????????????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_conv3d_105_layer_call_fn_44594

inputs%
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv3d_105_layer_call_and_return_conditional_losses_431672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????222: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
?
(__inference_dense_60_layer_call_fn_44645

inputs
unknown:@
	unknown_0:
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
GPU 2J 8? *L
fGRE
C__inference_dense_60_layer_call_and_return_conditional_losses_432092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
-__inference_sequential_21_layer_call_fn_43681
conv3d_102_input%
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:'
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:(

unknown_13:

unknown_14:

unknown_15:
??@

unknown_16:@

unknown_17:@

unknown_18:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv3d_102_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_21_layer_call_and_return_conditional_losses_435932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????222: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
3
_output_shapes!
:?????????222
*
_user_specified_nameconv3d_102_input
?
?
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_42726

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
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
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*N
_output_shapes<
::8????????????????????????????????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*N
_output_shapes<
::8????????????????????????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*N
_output_shapes<
::8????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8????????????????????????????????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:v r
N
_output_shapes<
::8????????????????????????????????????
 
_user_specified_nameinputs
?+
?
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_43367

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0**
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0**
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*3
_output_shapes!
:?????????2222
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0**
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
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
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*3
_output_shapes!
:?????????2222
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*3
_output_shapes!
:?????????2222
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????222: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
?
*__inference_conv3d_102_layer_call_fn_44160

inputs%
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv3d_102_layer_call_and_return_conditional_losses_430442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????222: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_43069

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
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
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*3
_output_shapes!
:?????????2222
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*3
_output_shapes!
:?????????2222
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????222: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?	
?
6__inference_batch_normalization_47_layer_call_fn_44294

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8????????????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_427862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*N
_output_shapes<
::8????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8????????????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8????????????????????????????????????
 
_user_specified_nameinputs
?+
?
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_44268

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0**
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0**
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*3
_output_shapes!
:?????????2222
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0**
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
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
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*3
_output_shapes!
:?????????2222
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*3
_output_shapes!
:?????????2222
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????222: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
?
E__inference_conv3d_103_layer_call_and_return_conditional_losses_44331

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????222*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????2222	
BiasAddm
SigmoidSigmoidBiasAdd:output:0*
T0*3
_output_shapes!
:?????????2222	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????222: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?,
?
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_44441

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0**
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0**
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*N
_output_shapes<
::8????????????????????????????????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0**
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
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
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*N
_output_shapes<
::8????????????????????????????????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*N
_output_shapes<
::8????????????????????????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*N
_output_shapes<
::8????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8????????????????????????????????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:v r
N
_output_shapes<
::8????????????????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_conv3d_102_layer_call_and_return_conditional_losses_44151

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????222*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????2222	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????2222
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????222: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
F
*__inference_dropout_40_layer_call_fn_44362

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_40_layer_call_and_return_conditional_losses_431012
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????222:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
??
?
 __inference__wrapped_model_42702
conv3d_102_inputU
7sequential_21_conv3d_102_conv3d_readvariableop_resource:F
8sequential_21_conv3d_102_biasadd_readvariableop_resource:T
Fsequential_21_batch_normalization_47_batchnorm_readvariableop_resource:X
Jsequential_21_batch_normalization_47_batchnorm_mul_readvariableop_resource:V
Hsequential_21_batch_normalization_47_batchnorm_readvariableop_1_resource:V
Hsequential_21_batch_normalization_47_batchnorm_readvariableop_2_resource:U
7sequential_21_conv3d_103_conv3d_readvariableop_resource:F
8sequential_21_conv3d_103_biasadd_readvariableop_resource:U
7sequential_21_conv3d_104_conv3d_readvariableop_resource:F
8sequential_21_conv3d_104_biasadd_readvariableop_resource:T
Fsequential_21_batch_normalization_48_batchnorm_readvariableop_resource:X
Jsequential_21_batch_normalization_48_batchnorm_mul_readvariableop_resource:V
Hsequential_21_batch_normalization_48_batchnorm_readvariableop_1_resource:V
Hsequential_21_batch_normalization_48_batchnorm_readvariableop_2_resource:U
7sequential_21_conv3d_105_conv3d_readvariableop_resource:F
8sequential_21_conv3d_105_biasadd_readvariableop_resource:I
5sequential_21_dense_59_matmul_readvariableop_resource:
??@D
6sequential_21_dense_59_biasadd_readvariableop_resource:@G
5sequential_21_dense_60_matmul_readvariableop_resource:@D
6sequential_21_dense_60_biasadd_readvariableop_resource:
identity??=sequential_21/batch_normalization_47/batchnorm/ReadVariableOp??sequential_21/batch_normalization_47/batchnorm/ReadVariableOp_1??sequential_21/batch_normalization_47/batchnorm/ReadVariableOp_2?Asequential_21/batch_normalization_47/batchnorm/mul/ReadVariableOp?=sequential_21/batch_normalization_48/batchnorm/ReadVariableOp??sequential_21/batch_normalization_48/batchnorm/ReadVariableOp_1??sequential_21/batch_normalization_48/batchnorm/ReadVariableOp_2?Asequential_21/batch_normalization_48/batchnorm/mul/ReadVariableOp?/sequential_21/conv3d_102/BiasAdd/ReadVariableOp?.sequential_21/conv3d_102/Conv3D/ReadVariableOp?/sequential_21/conv3d_103/BiasAdd/ReadVariableOp?.sequential_21/conv3d_103/Conv3D/ReadVariableOp?/sequential_21/conv3d_104/BiasAdd/ReadVariableOp?.sequential_21/conv3d_104/Conv3D/ReadVariableOp?/sequential_21/conv3d_105/BiasAdd/ReadVariableOp?.sequential_21/conv3d_105/Conv3D/ReadVariableOp?-sequential_21/dense_59/BiasAdd/ReadVariableOp?,sequential_21/dense_59/MatMul/ReadVariableOp?-sequential_21/dense_60/BiasAdd/ReadVariableOp?,sequential_21/dense_60/MatMul/ReadVariableOp?
.sequential_21/conv3d_102/Conv3D/ReadVariableOpReadVariableOp7sequential_21_conv3d_102_conv3d_readvariableop_resource**
_output_shapes
:*
dtype020
.sequential_21/conv3d_102/Conv3D/ReadVariableOp?
sequential_21/conv3d_102/Conv3DConv3Dconv3d_102_input6sequential_21/conv3d_102/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????222*
paddingSAME*
strides	
2!
sequential_21/conv3d_102/Conv3D?
/sequential_21/conv3d_102/BiasAdd/ReadVariableOpReadVariableOp8sequential_21_conv3d_102_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_21/conv3d_102/BiasAdd/ReadVariableOp?
 sequential_21/conv3d_102/BiasAddBiasAdd(sequential_21/conv3d_102/Conv3D:output:07sequential_21/conv3d_102/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????2222"
 sequential_21/conv3d_102/BiasAdd?
sequential_21/conv3d_102/ReluRelu)sequential_21/conv3d_102/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????2222
sequential_21/conv3d_102/Relu?
=sequential_21/batch_normalization_47/batchnorm/ReadVariableOpReadVariableOpFsequential_21_batch_normalization_47_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02?
=sequential_21/batch_normalization_47/batchnorm/ReadVariableOp?
4sequential_21/batch_normalization_47/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_21/batch_normalization_47/batchnorm/add/y?
2sequential_21/batch_normalization_47/batchnorm/addAddV2Esequential_21/batch_normalization_47/batchnorm/ReadVariableOp:value:0=sequential_21/batch_normalization_47/batchnorm/add/y:output:0*
T0*
_output_shapes
:24
2sequential_21/batch_normalization_47/batchnorm/add?
4sequential_21/batch_normalization_47/batchnorm/RsqrtRsqrt6sequential_21/batch_normalization_47/batchnorm/add:z:0*
T0*
_output_shapes
:26
4sequential_21/batch_normalization_47/batchnorm/Rsqrt?
Asequential_21/batch_normalization_47/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_21_batch_normalization_47_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02C
Asequential_21/batch_normalization_47/batchnorm/mul/ReadVariableOp?
2sequential_21/batch_normalization_47/batchnorm/mulMul8sequential_21/batch_normalization_47/batchnorm/Rsqrt:y:0Isequential_21/batch_normalization_47/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:24
2sequential_21/batch_normalization_47/batchnorm/mul?
4sequential_21/batch_normalization_47/batchnorm/mul_1Mul+sequential_21/conv3d_102/Relu:activations:06sequential_21/batch_normalization_47/batchnorm/mul:z:0*
T0*3
_output_shapes!
:?????????22226
4sequential_21/batch_normalization_47/batchnorm/mul_1?
?sequential_21/batch_normalization_47/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_21_batch_normalization_47_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02A
?sequential_21/batch_normalization_47/batchnorm/ReadVariableOp_1?
4sequential_21/batch_normalization_47/batchnorm/mul_2MulGsequential_21/batch_normalization_47/batchnorm/ReadVariableOp_1:value:06sequential_21/batch_normalization_47/batchnorm/mul:z:0*
T0*
_output_shapes
:26
4sequential_21/batch_normalization_47/batchnorm/mul_2?
?sequential_21/batch_normalization_47/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_21_batch_normalization_47_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02A
?sequential_21/batch_normalization_47/batchnorm/ReadVariableOp_2?
2sequential_21/batch_normalization_47/batchnorm/subSubGsequential_21/batch_normalization_47/batchnorm/ReadVariableOp_2:value:08sequential_21/batch_normalization_47/batchnorm/mul_2:z:0*
T0*
_output_shapes
:24
2sequential_21/batch_normalization_47/batchnorm/sub?
4sequential_21/batch_normalization_47/batchnorm/add_1AddV28sequential_21/batch_normalization_47/batchnorm/mul_1:z:06sequential_21/batch_normalization_47/batchnorm/sub:z:0*
T0*3
_output_shapes!
:?????????22226
4sequential_21/batch_normalization_47/batchnorm/add_1?
.sequential_21/conv3d_103/Conv3D/ReadVariableOpReadVariableOp7sequential_21_conv3d_103_conv3d_readvariableop_resource**
_output_shapes
:*
dtype020
.sequential_21/conv3d_103/Conv3D/ReadVariableOp?
sequential_21/conv3d_103/Conv3DConv3D8sequential_21/batch_normalization_47/batchnorm/add_1:z:06sequential_21/conv3d_103/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????222*
paddingSAME*
strides	
2!
sequential_21/conv3d_103/Conv3D?
/sequential_21/conv3d_103/BiasAdd/ReadVariableOpReadVariableOp8sequential_21_conv3d_103_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_21/conv3d_103/BiasAdd/ReadVariableOp?
 sequential_21/conv3d_103/BiasAddBiasAdd(sequential_21/conv3d_103/Conv3D:output:07sequential_21/conv3d_103/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????2222"
 sequential_21/conv3d_103/BiasAdd?
 sequential_21/conv3d_103/SigmoidSigmoid)sequential_21/conv3d_103/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????2222"
 sequential_21/conv3d_103/Sigmoid?
!sequential_21/dropout_40/IdentityIdentity$sequential_21/conv3d_103/Sigmoid:y:0*
T0*3
_output_shapes!
:?????????2222#
!sequential_21/dropout_40/Identity?
.sequential_21/conv3d_104/Conv3D/ReadVariableOpReadVariableOp7sequential_21_conv3d_104_conv3d_readvariableop_resource**
_output_shapes
:*
dtype020
.sequential_21/conv3d_104/Conv3D/ReadVariableOp?
sequential_21/conv3d_104/Conv3DConv3D*sequential_21/dropout_40/Identity:output:06sequential_21/conv3d_104/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????222*
paddingSAME*
strides	
2!
sequential_21/conv3d_104/Conv3D?
/sequential_21/conv3d_104/BiasAdd/ReadVariableOpReadVariableOp8sequential_21_conv3d_104_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_21/conv3d_104/BiasAdd/ReadVariableOp?
 sequential_21/conv3d_104/BiasAddBiasAdd(sequential_21/conv3d_104/Conv3D:output:07sequential_21/conv3d_104/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????2222"
 sequential_21/conv3d_104/BiasAdd?
 sequential_21/conv3d_104/SigmoidSigmoid)sequential_21/conv3d_104/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????2222"
 sequential_21/conv3d_104/Sigmoid?
=sequential_21/batch_normalization_48/batchnorm/ReadVariableOpReadVariableOpFsequential_21_batch_normalization_48_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02?
=sequential_21/batch_normalization_48/batchnorm/ReadVariableOp?
4sequential_21/batch_normalization_48/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_21/batch_normalization_48/batchnorm/add/y?
2sequential_21/batch_normalization_48/batchnorm/addAddV2Esequential_21/batch_normalization_48/batchnorm/ReadVariableOp:value:0=sequential_21/batch_normalization_48/batchnorm/add/y:output:0*
T0*
_output_shapes
:24
2sequential_21/batch_normalization_48/batchnorm/add?
4sequential_21/batch_normalization_48/batchnorm/RsqrtRsqrt6sequential_21/batch_normalization_48/batchnorm/add:z:0*
T0*
_output_shapes
:26
4sequential_21/batch_normalization_48/batchnorm/Rsqrt?
Asequential_21/batch_normalization_48/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_21_batch_normalization_48_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02C
Asequential_21/batch_normalization_48/batchnorm/mul/ReadVariableOp?
2sequential_21/batch_normalization_48/batchnorm/mulMul8sequential_21/batch_normalization_48/batchnorm/Rsqrt:y:0Isequential_21/batch_normalization_48/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:24
2sequential_21/batch_normalization_48/batchnorm/mul?
4sequential_21/batch_normalization_48/batchnorm/mul_1Mul$sequential_21/conv3d_104/Sigmoid:y:06sequential_21/batch_normalization_48/batchnorm/mul:z:0*
T0*3
_output_shapes!
:?????????22226
4sequential_21/batch_normalization_48/batchnorm/mul_1?
?sequential_21/batch_normalization_48/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_21_batch_normalization_48_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02A
?sequential_21/batch_normalization_48/batchnorm/ReadVariableOp_1?
4sequential_21/batch_normalization_48/batchnorm/mul_2MulGsequential_21/batch_normalization_48/batchnorm/ReadVariableOp_1:value:06sequential_21/batch_normalization_48/batchnorm/mul:z:0*
T0*
_output_shapes
:26
4sequential_21/batch_normalization_48/batchnorm/mul_2?
?sequential_21/batch_normalization_48/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_21_batch_normalization_48_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02A
?sequential_21/batch_normalization_48/batchnorm/ReadVariableOp_2?
2sequential_21/batch_normalization_48/batchnorm/subSubGsequential_21/batch_normalization_48/batchnorm/ReadVariableOp_2:value:08sequential_21/batch_normalization_48/batchnorm/mul_2:z:0*
T0*
_output_shapes
:24
2sequential_21/batch_normalization_48/batchnorm/sub?
4sequential_21/batch_normalization_48/batchnorm/add_1AddV28sequential_21/batch_normalization_48/batchnorm/mul_1:z:06sequential_21/batch_normalization_48/batchnorm/sub:z:0*
T0*3
_output_shapes!
:?????????22226
4sequential_21/batch_normalization_48/batchnorm/add_1?
!sequential_21/dropout_41/IdentityIdentity8sequential_21/batch_normalization_48/batchnorm/add_1:z:0*
T0*3
_output_shapes!
:?????????2222#
!sequential_21/dropout_41/Identity?
.sequential_21/conv3d_105/Conv3D/ReadVariableOpReadVariableOp7sequential_21_conv3d_105_conv3d_readvariableop_resource**
_output_shapes
:*
dtype020
.sequential_21/conv3d_105/Conv3D/ReadVariableOp?
sequential_21/conv3d_105/Conv3DConv3D*sequential_21/dropout_41/Identity:output:06sequential_21/conv3d_105/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????222*
paddingSAME*
strides	
2!
sequential_21/conv3d_105/Conv3D?
/sequential_21/conv3d_105/BiasAdd/ReadVariableOpReadVariableOp8sequential_21_conv3d_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_21/conv3d_105/BiasAdd/ReadVariableOp?
 sequential_21/conv3d_105/BiasAddBiasAdd(sequential_21/conv3d_105/Conv3D:output:07sequential_21/conv3d_105/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????2222"
 sequential_21/conv3d_105/BiasAdd?
sequential_21/conv3d_105/ReluRelu)sequential_21/conv3d_105/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????2222
sequential_21/conv3d_105/Relu?
sequential_21/flatten_21/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ? 2 
sequential_21/flatten_21/Const?
 sequential_21/flatten_21/ReshapeReshape+sequential_21/conv3d_105/Relu:activations:0'sequential_21/flatten_21/Const:output:0*
T0*)
_output_shapes
:???????????2"
 sequential_21/flatten_21/Reshape?
,sequential_21/dense_59/MatMul/ReadVariableOpReadVariableOp5sequential_21_dense_59_matmul_readvariableop_resource* 
_output_shapes
:
??@*
dtype02.
,sequential_21/dense_59/MatMul/ReadVariableOp?
sequential_21/dense_59/MatMulMatMul)sequential_21/flatten_21/Reshape:output:04sequential_21/dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
sequential_21/dense_59/MatMul?
-sequential_21/dense_59/BiasAdd/ReadVariableOpReadVariableOp6sequential_21_dense_59_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_21/dense_59/BiasAdd/ReadVariableOp?
sequential_21/dense_59/BiasAddBiasAdd'sequential_21/dense_59/MatMul:product:05sequential_21/dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
sequential_21/dense_59/BiasAdd?
sequential_21/dense_59/ReluRelu'sequential_21/dense_59/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential_21/dense_59/Relu?
,sequential_21/dense_60/MatMul/ReadVariableOpReadVariableOp5sequential_21_dense_60_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,sequential_21/dense_60/MatMul/ReadVariableOp?
sequential_21/dense_60/MatMulMatMul)sequential_21/dense_59/Relu:activations:04sequential_21/dense_60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_21/dense_60/MatMul?
-sequential_21/dense_60/BiasAdd/ReadVariableOpReadVariableOp6sequential_21_dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_21/dense_60/BiasAdd/ReadVariableOp?
sequential_21/dense_60/BiasAddBiasAdd'sequential_21/dense_60/MatMul:product:05sequential_21/dense_60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_21/dense_60/BiasAdd?
sequential_21/dense_60/SigmoidSigmoid'sequential_21/dense_60/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_21/dense_60/Sigmoid?	
IdentityIdentity"sequential_21/dense_60/Sigmoid:y:0>^sequential_21/batch_normalization_47/batchnorm/ReadVariableOp@^sequential_21/batch_normalization_47/batchnorm/ReadVariableOp_1@^sequential_21/batch_normalization_47/batchnorm/ReadVariableOp_2B^sequential_21/batch_normalization_47/batchnorm/mul/ReadVariableOp>^sequential_21/batch_normalization_48/batchnorm/ReadVariableOp@^sequential_21/batch_normalization_48/batchnorm/ReadVariableOp_1@^sequential_21/batch_normalization_48/batchnorm/ReadVariableOp_2B^sequential_21/batch_normalization_48/batchnorm/mul/ReadVariableOp0^sequential_21/conv3d_102/BiasAdd/ReadVariableOp/^sequential_21/conv3d_102/Conv3D/ReadVariableOp0^sequential_21/conv3d_103/BiasAdd/ReadVariableOp/^sequential_21/conv3d_103/Conv3D/ReadVariableOp0^sequential_21/conv3d_104/BiasAdd/ReadVariableOp/^sequential_21/conv3d_104/Conv3D/ReadVariableOp0^sequential_21/conv3d_105/BiasAdd/ReadVariableOp/^sequential_21/conv3d_105/Conv3D/ReadVariableOp.^sequential_21/dense_59/BiasAdd/ReadVariableOp-^sequential_21/dense_59/MatMul/ReadVariableOp.^sequential_21/dense_60/BiasAdd/ReadVariableOp-^sequential_21/dense_60/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????222: : : : : : : : : : : : : : : : : : : : 2~
=sequential_21/batch_normalization_47/batchnorm/ReadVariableOp=sequential_21/batch_normalization_47/batchnorm/ReadVariableOp2?
?sequential_21/batch_normalization_47/batchnorm/ReadVariableOp_1?sequential_21/batch_normalization_47/batchnorm/ReadVariableOp_12?
?sequential_21/batch_normalization_47/batchnorm/ReadVariableOp_2?sequential_21/batch_normalization_47/batchnorm/ReadVariableOp_22?
Asequential_21/batch_normalization_47/batchnorm/mul/ReadVariableOpAsequential_21/batch_normalization_47/batchnorm/mul/ReadVariableOp2~
=sequential_21/batch_normalization_48/batchnorm/ReadVariableOp=sequential_21/batch_normalization_48/batchnorm/ReadVariableOp2?
?sequential_21/batch_normalization_48/batchnorm/ReadVariableOp_1?sequential_21/batch_normalization_48/batchnorm/ReadVariableOp_12?
?sequential_21/batch_normalization_48/batchnorm/ReadVariableOp_2?sequential_21/batch_normalization_48/batchnorm/ReadVariableOp_22?
Asequential_21/batch_normalization_48/batchnorm/mul/ReadVariableOpAsequential_21/batch_normalization_48/batchnorm/mul/ReadVariableOp2b
/sequential_21/conv3d_102/BiasAdd/ReadVariableOp/sequential_21/conv3d_102/BiasAdd/ReadVariableOp2`
.sequential_21/conv3d_102/Conv3D/ReadVariableOp.sequential_21/conv3d_102/Conv3D/ReadVariableOp2b
/sequential_21/conv3d_103/BiasAdd/ReadVariableOp/sequential_21/conv3d_103/BiasAdd/ReadVariableOp2`
.sequential_21/conv3d_103/Conv3D/ReadVariableOp.sequential_21/conv3d_103/Conv3D/ReadVariableOp2b
/sequential_21/conv3d_104/BiasAdd/ReadVariableOp/sequential_21/conv3d_104/BiasAdd/ReadVariableOp2`
.sequential_21/conv3d_104/Conv3D/ReadVariableOp.sequential_21/conv3d_104/Conv3D/ReadVariableOp2b
/sequential_21/conv3d_105/BiasAdd/ReadVariableOp/sequential_21/conv3d_105/BiasAdd/ReadVariableOp2`
.sequential_21/conv3d_105/Conv3D/ReadVariableOp.sequential_21/conv3d_105/Conv3D/ReadVariableOp2^
-sequential_21/dense_59/BiasAdd/ReadVariableOp-sequential_21/dense_59/BiasAdd/ReadVariableOp2\
,sequential_21/dense_59/MatMul/ReadVariableOp,sequential_21/dense_59/MatMul/ReadVariableOp2^
-sequential_21/dense_60/BiasAdd/ReadVariableOp-sequential_21/dense_60/BiasAdd/ReadVariableOp2\
,sequential_21/dense_60/MatMul/ReadVariableOp,sequential_21/dense_60/MatMul/ReadVariableOp:e a
3
_output_shapes!
:?????????222
*
_user_specified_nameconv3d_102_input
?
?
-__inference_sequential_21_layer_call_fn_44140

inputs%
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:'
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:(

unknown_13:

unknown_14:

unknown_15:
??@

unknown_16:@

unknown_17:@

unknown_18:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_21_layer_call_and_return_conditional_losses_435932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????222: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?}
?
__inference__traced_save_44851
file_prefix0
,savev2_conv3d_102_kernel_read_readvariableop.
*savev2_conv3d_102_bias_read_readvariableop;
7savev2_batch_normalization_47_gamma_read_readvariableop:
6savev2_batch_normalization_47_beta_read_readvariableopA
=savev2_batch_normalization_47_moving_mean_read_readvariableopE
Asavev2_batch_normalization_47_moving_variance_read_readvariableop0
,savev2_conv3d_103_kernel_read_readvariableop.
*savev2_conv3d_103_bias_read_readvariableop0
,savev2_conv3d_104_kernel_read_readvariableop.
*savev2_conv3d_104_bias_read_readvariableop;
7savev2_batch_normalization_48_gamma_read_readvariableop:
6savev2_batch_normalization_48_beta_read_readvariableopA
=savev2_batch_normalization_48_moving_mean_read_readvariableopE
Asavev2_batch_normalization_48_moving_variance_read_readvariableop0
,savev2_conv3d_105_kernel_read_readvariableop.
*savev2_conv3d_105_bias_read_readvariableop.
*savev2_dense_59_kernel_read_readvariableop,
(savev2_dense_59_bias_read_readvariableop.
*savev2_dense_60_kernel_read_readvariableop,
(savev2_dense_60_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv3d_102_kernel_m_read_readvariableop5
1savev2_adam_conv3d_102_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_47_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_47_beta_m_read_readvariableop7
3savev2_adam_conv3d_103_kernel_m_read_readvariableop5
1savev2_adam_conv3d_103_bias_m_read_readvariableop7
3savev2_adam_conv3d_104_kernel_m_read_readvariableop5
1savev2_adam_conv3d_104_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_48_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_48_beta_m_read_readvariableop7
3savev2_adam_conv3d_105_kernel_m_read_readvariableop5
1savev2_adam_conv3d_105_bias_m_read_readvariableop5
1savev2_adam_dense_59_kernel_m_read_readvariableop3
/savev2_adam_dense_59_bias_m_read_readvariableop5
1savev2_adam_dense_60_kernel_m_read_readvariableop3
/savev2_adam_dense_60_bias_m_read_readvariableop7
3savev2_adam_conv3d_102_kernel_v_read_readvariableop5
1savev2_adam_conv3d_102_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_47_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_47_beta_v_read_readvariableop7
3savev2_adam_conv3d_103_kernel_v_read_readvariableop5
1savev2_adam_conv3d_103_bias_v_read_readvariableop7
3savev2_adam_conv3d_104_kernel_v_read_readvariableop5
1savev2_adam_conv3d_104_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_48_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_48_beta_v_read_readvariableop7
3savev2_adam_conv3d_105_kernel_v_read_readvariableop5
1savev2_adam_conv3d_105_bias_v_read_readvariableop5
1savev2_adam_dense_59_kernel_v_read_readvariableop3
/savev2_adam_dense_59_bias_v_read_readvariableop5
1savev2_adam_dense_60_kernel_v_read_readvariableop3
/savev2_adam_dense_60_bias_v_read_readvariableop
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
ShardedFilename?"
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*?!
value?!B?!>B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*?
value?B?>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_102_kernel_read_readvariableop*savev2_conv3d_102_bias_read_readvariableop7savev2_batch_normalization_47_gamma_read_readvariableop6savev2_batch_normalization_47_beta_read_readvariableop=savev2_batch_normalization_47_moving_mean_read_readvariableopAsavev2_batch_normalization_47_moving_variance_read_readvariableop,savev2_conv3d_103_kernel_read_readvariableop*savev2_conv3d_103_bias_read_readvariableop,savev2_conv3d_104_kernel_read_readvariableop*savev2_conv3d_104_bias_read_readvariableop7savev2_batch_normalization_48_gamma_read_readvariableop6savev2_batch_normalization_48_beta_read_readvariableop=savev2_batch_normalization_48_moving_mean_read_readvariableopAsavev2_batch_normalization_48_moving_variance_read_readvariableop,savev2_conv3d_105_kernel_read_readvariableop*savev2_conv3d_105_bias_read_readvariableop*savev2_dense_59_kernel_read_readvariableop(savev2_dense_59_bias_read_readvariableop*savev2_dense_60_kernel_read_readvariableop(savev2_dense_60_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv3d_102_kernel_m_read_readvariableop1savev2_adam_conv3d_102_bias_m_read_readvariableop>savev2_adam_batch_normalization_47_gamma_m_read_readvariableop=savev2_adam_batch_normalization_47_beta_m_read_readvariableop3savev2_adam_conv3d_103_kernel_m_read_readvariableop1savev2_adam_conv3d_103_bias_m_read_readvariableop3savev2_adam_conv3d_104_kernel_m_read_readvariableop1savev2_adam_conv3d_104_bias_m_read_readvariableop>savev2_adam_batch_normalization_48_gamma_m_read_readvariableop=savev2_adam_batch_normalization_48_beta_m_read_readvariableop3savev2_adam_conv3d_105_kernel_m_read_readvariableop1savev2_adam_conv3d_105_bias_m_read_readvariableop1savev2_adam_dense_59_kernel_m_read_readvariableop/savev2_adam_dense_59_bias_m_read_readvariableop1savev2_adam_dense_60_kernel_m_read_readvariableop/savev2_adam_dense_60_bias_m_read_readvariableop3savev2_adam_conv3d_102_kernel_v_read_readvariableop1savev2_adam_conv3d_102_bias_v_read_readvariableop>savev2_adam_batch_normalization_47_gamma_v_read_readvariableop=savev2_adam_batch_normalization_47_beta_v_read_readvariableop3savev2_adam_conv3d_103_kernel_v_read_readvariableop1savev2_adam_conv3d_103_bias_v_read_readvariableop3savev2_adam_conv3d_104_kernel_v_read_readvariableop1savev2_adam_conv3d_104_bias_v_read_readvariableop>savev2_adam_batch_normalization_48_gamma_v_read_readvariableop=savev2_adam_batch_normalization_48_beta_v_read_readvariableop3savev2_adam_conv3d_105_kernel_v_read_readvariableop1savev2_adam_conv3d_105_bias_v_read_readvariableop1savev2_adam_dense_59_kernel_v_read_readvariableop/savev2_adam_dense_59_bias_v_read_readvariableop1savev2_adam_dense_60_kernel_v_read_readvariableop/savev2_adam_dense_60_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *L
dtypesB
@2>	2
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
?: :::::::::::::::::
??@:@:@:: : : : : : : : : :::::::::::::
??@:@:@::::::::::::::
??@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::0	,
*
_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
??@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :0,
*
_output_shapes
:: 

_output_shapes
::  

_output_shapes
:: !

_output_shapes
::0",
*
_output_shapes
:: #

_output_shapes
::0$,
*
_output_shapes
:: %

_output_shapes
:: &

_output_shapes
:: '

_output_shapes
::0(,
*
_output_shapes
:: )

_output_shapes
::&*"
 
_output_shapes
:
??@: +

_output_shapes
:@:$, 

_output_shapes

:@: -

_output_shapes
::0.,
*
_output_shapes
:: /

_output_shapes
:: 0

_output_shapes
:: 1

_output_shapes
::02,
*
_output_shapes
:: 3

_output_shapes
::04,
*
_output_shapes
:: 5

_output_shapes
:: 6

_output_shapes
:: 7

_output_shapes
::08,
*
_output_shapes
:: 9

_output_shapes
::&:"
 
_output_shapes
:
??@: ;

_output_shapes
:@:$< 

_output_shapes

:@: =

_output_shapes
::>

_output_shapes
: 
?	
?
6__inference_batch_normalization_47_layer_call_fn_44281

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8????????????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_427262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*N
_output_shapes<
::8????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8????????????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8????????????????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_conv3d_104_layer_call_and_return_conditional_losses_44378

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????222*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????2222	
BiasAddm
SigmoidSigmoidBiasAdd:output:0*
T0*3
_output_shapes!
:?????????2222	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????222: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_48_layer_call_fn_44534

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_431392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????222: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
?
E__inference_conv3d_105_layer_call_and_return_conditional_losses_44585

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????222*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????2222	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????2222
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????222: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
?
-__inference_sequential_21_layer_call_fn_43259
conv3d_102_input%
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:'
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:(

unknown_13:

unknown_14:

unknown_15:
??@

unknown_16:@

unknown_17:@

unknown_18:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv3d_102_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_21_layer_call_and_return_conditional_losses_432162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????222: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
3
_output_shapes!
:?????????222
*
_user_specified_nameconv3d_102_input
?>
?

H__inference_sequential_21_layer_call_and_return_conditional_losses_43593

inputs.
conv3d_102_43541:
conv3d_102_43543:*
batch_normalization_47_43546:*
batch_normalization_47_43548:*
batch_normalization_47_43550:*
batch_normalization_47_43552:.
conv3d_103_43555:
conv3d_103_43557:.
conv3d_104_43561:
conv3d_104_43563:*
batch_normalization_48_43566:*
batch_normalization_48_43568:*
batch_normalization_48_43570:*
batch_normalization_48_43572:.
conv3d_105_43576:
conv3d_105_43578:"
dense_59_43582:
??@
dense_59_43584:@ 
dense_60_43587:@
dense_60_43589:
identity??.batch_normalization_47/StatefulPartitionedCall?.batch_normalization_48/StatefulPartitionedCall?"conv3d_102/StatefulPartitionedCall?"conv3d_103/StatefulPartitionedCall?"conv3d_104/StatefulPartitionedCall?"conv3d_105/StatefulPartitionedCall? dense_59/StatefulPartitionedCall? dense_60/StatefulPartitionedCall?"dropout_40/StatefulPartitionedCall?"dropout_41/StatefulPartitionedCall?
"conv3d_102/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_102_43541conv3d_102_43543*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv3d_102_layer_call_and_return_conditional_losses_430442$
"conv3d_102/StatefulPartitionedCall?
.batch_normalization_47/StatefulPartitionedCallStatefulPartitionedCall+conv3d_102/StatefulPartitionedCall:output:0batch_normalization_47_43546batch_normalization_47_43548batch_normalization_47_43550batch_normalization_47_43552*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_4347020
.batch_normalization_47/StatefulPartitionedCall?
"conv3d_103/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_47/StatefulPartitionedCall:output:0conv3d_103_43555conv3d_103_43557*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv3d_103_layer_call_and_return_conditional_losses_430902$
"conv3d_103/StatefulPartitionedCall?
"dropout_40/StatefulPartitionedCallStatefulPartitionedCall+conv3d_103/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_40_layer_call_and_return_conditional_losses_434082$
"dropout_40/StatefulPartitionedCall?
"conv3d_104/StatefulPartitionedCallStatefulPartitionedCall+dropout_40/StatefulPartitionedCall:output:0conv3d_104_43561conv3d_104_43563*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv3d_104_layer_call_and_return_conditional_losses_431142$
"conv3d_104/StatefulPartitionedCall?
.batch_normalization_48/StatefulPartitionedCallStatefulPartitionedCall+conv3d_104/StatefulPartitionedCall:output:0batch_normalization_48_43566batch_normalization_48_43568batch_normalization_48_43570batch_normalization_48_43572*
Tin	
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_4336720
.batch_normalization_48/StatefulPartitionedCall?
"dropout_41/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_48/StatefulPartitionedCall:output:0#^dropout_40/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_41_layer_call_and_return_conditional_losses_433152$
"dropout_41/StatefulPartitionedCall?
"conv3d_105/StatefulPartitionedCallStatefulPartitionedCall+dropout_41/StatefulPartitionedCall:output:0conv3d_105_43576conv3d_105_43578*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv3d_105_layer_call_and_return_conditional_losses_431672$
"conv3d_105/StatefulPartitionedCall?
flatten_21/PartitionedCallPartitionedCall+conv3d_105/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_21_layer_call_and_return_conditional_losses_431792
flatten_21/PartitionedCall?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall#flatten_21/PartitionedCall:output:0dense_59_43582dense_59_43584*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_59_layer_call_and_return_conditional_losses_431922"
 dense_59/StatefulPartitionedCall?
 dense_60/StatefulPartitionedCallStatefulPartitionedCall)dense_59/StatefulPartitionedCall:output:0dense_60_43587dense_60_43589*
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
GPU 2J 8? *L
fGRE
C__inference_dense_60_layer_call_and_return_conditional_losses_432092"
 dense_60/StatefulPartitionedCall?
IdentityIdentity)dense_60/StatefulPartitionedCall:output:0/^batch_normalization_47/StatefulPartitionedCall/^batch_normalization_48/StatefulPartitionedCall#^conv3d_102/StatefulPartitionedCall#^conv3d_103/StatefulPartitionedCall#^conv3d_104/StatefulPartitionedCall#^conv3d_105/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall#^dropout_40/StatefulPartitionedCall#^dropout_41/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????222: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_47/StatefulPartitionedCall.batch_normalization_47/StatefulPartitionedCall2`
.batch_normalization_48/StatefulPartitionedCall.batch_normalization_48/StatefulPartitionedCall2H
"conv3d_102/StatefulPartitionedCall"conv3d_102/StatefulPartitionedCall2H
"conv3d_103/StatefulPartitionedCall"conv3d_103/StatefulPartitionedCall2H
"conv3d_104/StatefulPartitionedCall"conv3d_104/StatefulPartitionedCall2H
"conv3d_105/StatefulPartitionedCall"conv3d_105/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall2H
"dropout_40/StatefulPartitionedCall"dropout_40/StatefulPartitionedCall2H
"dropout_41/StatefulPartitionedCall"dropout_41/StatefulPartitionedCall:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?

?
C__inference_dense_60_layer_call_and_return_conditional_losses_44636

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
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
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
a
E__inference_flatten_21_layer_call_and_return_conditional_losses_44600

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ? 2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????222:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs
?
?
*__inference_conv3d_103_layer_call_fn_44340

inputs%
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????222*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv3d_103_layer_call_and_return_conditional_losses_430902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????2222

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????222: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????222
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
Y
conv3d_102_inputE
"serving_default_conv3d_102_input:0?????????222<
dense_600
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?i
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?__call__
?_default_save_signature"?e
_tf_keras_sequential?d{"name": "sequential_21", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_21", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 50, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv3d_102_input"}}, {"class_name": "Conv3D", "config": {"name": "conv3d_102", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 50, 1]}, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_47", "trainable": true, "dtype": "float32", "axis": [4], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv3D", "config": {"name": "conv3d_103", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_40", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Conv3D", "config": {"name": "conv3d_104", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_48", "trainable": true, "dtype": "float32", "axis": [4], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_41", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Conv3D", "config": {"name": "conv3d_105", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_21", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_59", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_60", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 32, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 1}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50, 50, 50, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 50, 50, 50, 1]}, "float32", "conv3d_102_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_21", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 50, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv3d_102_input"}, "shared_object_id": 0}, {"class_name": "Conv3D", "config": {"name": "conv3d_102", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 50, 1]}, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_47", "trainable": true, "dtype": "float32", "axis": [4], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 8}, {"class_name": "Conv3D", "config": {"name": "conv3d_103", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}, {"class_name": "Dropout", "config": {"name": "dropout_40", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 12}, {"class_name": "Conv3D", "config": {"name": "conv3d_104", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_48", "trainable": true, "dtype": "float32", "axis": [4], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 19}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 20}, {"class_name": "Dropout", "config": {"name": "dropout_41", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 21}, {"class_name": "Conv3D", "config": {"name": "conv3d_105", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 24}, {"class_name": "Flatten", "config": {"name": "flatten_21", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 25}, {"class_name": "Dense", "config": {"name": "dense_59", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 28}, {"class_name": "Dense", "config": {"name": "dense_60", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 31}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 34}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?

_tf_keras_layer?
{"name": "conv3d_102", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 50, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_102", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 50, 1]}, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 1}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50, 50, 50, 1]}}
?

axis
	gamma
beta
moving_mean
moving_variance
	variables
regularization_losses
trainable_variables
 	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batch_normalization_47", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_47", "trainable": true, "dtype": "float32", "axis": [4], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {"4": 4}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50, 50, 50, 4]}}
?


!kernel
"bias
#	variables
$regularization_losses
%trainable_variables
&	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_103", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_103", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 4}}, "shared_object_id": 36}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50, 50, 50, 4]}}
?
'	variables
(regularization_losses
)trainable_variables
*	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dropout_40", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_40", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 12}
?


+kernel
,bias
-	variables
.regularization_losses
/trainable_variables
0	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_104", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_104", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 4}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50, 50, 50, 4]}}
?

1axis
	2gamma
3beta
4moving_mean
5moving_variance
6	variables
7regularization_losses
8trainable_variables
9	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batch_normalization_48", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_48", "trainable": true, "dtype": "float32", "axis": [4], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 19}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {"4": 4}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50, 50, 50, 4]}}
?
:	variables
;regularization_losses
<trainable_variables
=	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dropout_41", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_41", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 21}
?


>kernel
?bias
@	variables
Aregularization_losses
Btrainable_variables
C	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_105", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_105", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 4}}, "shared_object_id": 39}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50, 50, 50, 4]}}
?
D	variables
Eregularization_losses
Ftrainable_variables
G	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "flatten_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_21", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 40}}
?

Hkernel
Ibias
J	variables
Kregularization_losses
Ltrainable_variables
M	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_59", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_59", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 500000}}, "shared_object_id": 41}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 500000]}}
?

Nkernel
Obias
P	variables
Qregularization_losses
Rtrainable_variables
S	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_60", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_60", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 42}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?
Titer

Ubeta_1

Vbeta_2
	Wdecay
Xlearning_ratem?m?m?m?!m?"m?+m?,m?2m?3m?>m??m?Hm?Im?Nm?Om?v?v?v?v?!v?"v?+v?,v?2v?3v?>v??v?Hv?Iv?Nv?Ov?"
	optimizer
?
0
1
2
3
4
5
!6
"7
+8
,9
210
311
412
513
>14
?15
H16
I17
N18
O19"
trackable_list_wrapper
 "
trackable_list_wrapper
?
0
1
2
3
!4
"5
+6
,7
28
39
>10
?11
H12
I13
N14
O15"
trackable_list_wrapper
?
Ylayer_regularization_losses
Zlayer_metrics
[non_trainable_variables
	variables
regularization_losses

\layers
trainable_variables
]metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
/:-2conv3d_102/kernel
:2conv3d_102/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
^layer_regularization_losses
_layer_metrics
`non_trainable_variables
	variables
regularization_losses

alayers
trainable_variables
bmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_47/gamma
):'2batch_normalization_47/beta
2:0 (2"batch_normalization_47/moving_mean
6:4 (2&batch_normalization_47/moving_variance
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
clayer_regularization_losses
dlayer_metrics
enon_trainable_variables
	variables
regularization_losses

flayers
trainable_variables
gmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-2conv3d_103/kernel
:2conv3d_103/bias
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
?
hlayer_regularization_losses
ilayer_metrics
jnon_trainable_variables
#	variables
$regularization_losses

klayers
%trainable_variables
lmetrics
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
mlayer_regularization_losses
nlayer_metrics
onon_trainable_variables
'	variables
(regularization_losses

players
)trainable_variables
qmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-2conv3d_104/kernel
:2conv3d_104/bias
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
?
rlayer_regularization_losses
slayer_metrics
tnon_trainable_variables
-	variables
.regularization_losses

ulayers
/trainable_variables
vmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_48/gamma
):'2batch_normalization_48/beta
2:0 (2"batch_normalization_48/moving_mean
6:4 (2&batch_normalization_48/moving_variance
<
20
31
42
53"
trackable_list_wrapper
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
?
wlayer_regularization_losses
xlayer_metrics
ynon_trainable_variables
6	variables
7regularization_losses

zlayers
8trainable_variables
{metrics
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
|layer_regularization_losses
}layer_metrics
~non_trainable_variables
:	variables
;regularization_losses

layers
<trainable_variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-2conv3d_105/kernel
:2conv3d_105/bias
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
@	variables
Aregularization_losses
?layers
Btrainable_variables
?metrics
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
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
D	variables
Eregularization_losses
?layers
Ftrainable_variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??@2dense_59/kernel
:@2dense_59/bias
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
J	variables
Kregularization_losses
?layers
Ltrainable_variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:@2dense_60/kernel
:2dense_60/bias
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
P	variables
Qregularization_losses
?layers
Rtrainable_variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
<
0
1
42
53"
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
0
?0
?1"
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
.
0
1"
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
.
40
51"
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
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 43}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 34}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
4:22Adam/conv3d_102/kernel/m
": 2Adam/conv3d_102/bias/m
/:-2#Adam/batch_normalization_47/gamma/m
.:,2"Adam/batch_normalization_47/beta/m
4:22Adam/conv3d_103/kernel/m
": 2Adam/conv3d_103/bias/m
4:22Adam/conv3d_104/kernel/m
": 2Adam/conv3d_104/bias/m
/:-2#Adam/batch_normalization_48/gamma/m
.:,2"Adam/batch_normalization_48/beta/m
4:22Adam/conv3d_105/kernel/m
": 2Adam/conv3d_105/bias/m
(:&
??@2Adam/dense_59/kernel/m
 :@2Adam/dense_59/bias/m
&:$@2Adam/dense_60/kernel/m
 :2Adam/dense_60/bias/m
4:22Adam/conv3d_102/kernel/v
": 2Adam/conv3d_102/bias/v
/:-2#Adam/batch_normalization_47/gamma/v
.:,2"Adam/batch_normalization_47/beta/v
4:22Adam/conv3d_103/kernel/v
": 2Adam/conv3d_103/bias/v
4:22Adam/conv3d_104/kernel/v
": 2Adam/conv3d_104/bias/v
/:-2#Adam/batch_normalization_48/gamma/v
.:,2"Adam/batch_normalization_48/beta/v
4:22Adam/conv3d_105/kernel/v
": 2Adam/conv3d_105/bias/v
(:&
??@2Adam/dense_59/kernel/v
 :@2Adam/dense_59/bias/v
&:$@2Adam/dense_60/kernel/v
 :2Adam/dense_60/bias/v
?2?
H__inference_sequential_21_layer_call_and_return_conditional_losses_43926
H__inference_sequential_21_layer_call_and_return_conditional_losses_44050
H__inference_sequential_21_layer_call_and_return_conditional_losses_43736
H__inference_sequential_21_layer_call_and_return_conditional_losses_43791?
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
?2?
-__inference_sequential_21_layer_call_fn_43259
-__inference_sequential_21_layer_call_fn_44095
-__inference_sequential_21_layer_call_fn_44140
-__inference_sequential_21_layer_call_fn_43681?
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
 __inference__wrapped_model_42702?
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
annotations? *;?8
6?3
conv3d_102_input?????????222
?2?
E__inference_conv3d_102_layer_call_and_return_conditional_losses_44151?
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
*__inference_conv3d_102_layer_call_fn_44160?
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
?2?
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_44180
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_44214
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_44234
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_44268?
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
?2?
6__inference_batch_normalization_47_layer_call_fn_44281
6__inference_batch_normalization_47_layer_call_fn_44294
6__inference_batch_normalization_47_layer_call_fn_44307
6__inference_batch_normalization_47_layer_call_fn_44320?
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
E__inference_conv3d_103_layer_call_and_return_conditional_losses_44331?
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
*__inference_conv3d_103_layer_call_fn_44340?
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
E__inference_dropout_40_layer_call_and_return_conditional_losses_44345
E__inference_dropout_40_layer_call_and_return_conditional_losses_44357?
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
*__inference_dropout_40_layer_call_fn_44362
*__inference_dropout_40_layer_call_fn_44367?
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
E__inference_conv3d_104_layer_call_and_return_conditional_losses_44378?
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
*__inference_conv3d_104_layer_call_fn_44387?
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
?2?
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_44407
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_44441
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_44461
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_44495?
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
?2?
6__inference_batch_normalization_48_layer_call_fn_44508
6__inference_batch_normalization_48_layer_call_fn_44521
6__inference_batch_normalization_48_layer_call_fn_44534
6__inference_batch_normalization_48_layer_call_fn_44547?
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
E__inference_dropout_41_layer_call_and_return_conditional_losses_44552
E__inference_dropout_41_layer_call_and_return_conditional_losses_44564?
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
*__inference_dropout_41_layer_call_fn_44569
*__inference_dropout_41_layer_call_fn_44574?
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
E__inference_conv3d_105_layer_call_and_return_conditional_losses_44585?
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
*__inference_conv3d_105_layer_call_fn_44594?
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
E__inference_flatten_21_layer_call_and_return_conditional_losses_44600?
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
*__inference_flatten_21_layer_call_fn_44605?
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
C__inference_dense_59_layer_call_and_return_conditional_losses_44616?
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
(__inference_dense_59_layer_call_fn_44625?
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
C__inference_dense_60_layer_call_and_return_conditional_losses_44636?
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
(__inference_dense_60_layer_call_fn_44645?
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
#__inference_signature_wrapper_43844conv3d_102_input"?
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
 __inference__wrapped_model_42702?!"+,5243>?HINOE?B
;?8
6?3
conv3d_102_input?????????222
? "3?0
.
dense_60"?
dense_60??????????
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_44180?Z?W
P?M
G?D
inputs8????????????????????????????????????
p 
? "L?I
B??
08????????????????????????????????????
? ?
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_44214?Z?W
P?M
G?D
inputs8????????????????????????????????????
p
? "L?I
B??
08????????????????????????????????????
? ?
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_44234z??<
5?2
,?)
inputs?????????222
p 
? "1?.
'?$
0?????????222
? ?
Q__inference_batch_normalization_47_layer_call_and_return_conditional_losses_44268z??<
5?2
,?)
inputs?????????222
p
? "1?.
'?$
0?????????222
? ?
6__inference_batch_normalization_47_layer_call_fn_44281?Z?W
P?M
G?D
inputs8????????????????????????????????????
p 
? "??<8?????????????????????????????????????
6__inference_batch_normalization_47_layer_call_fn_44294?Z?W
P?M
G?D
inputs8????????????????????????????????????
p
? "??<8?????????????????????????????????????
6__inference_batch_normalization_47_layer_call_fn_44307m??<
5?2
,?)
inputs?????????222
p 
? "$?!?????????222?
6__inference_batch_normalization_47_layer_call_fn_44320m??<
5?2
,?)
inputs?????????222
p
? "$?!?????????222?
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_44407?5243Z?W
P?M
G?D
inputs8????????????????????????????????????
p 
? "L?I
B??
08????????????????????????????????????
? ?
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_44441?4523Z?W
P?M
G?D
inputs8????????????????????????????????????
p
? "L?I
B??
08????????????????????????????????????
? ?
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_44461z5243??<
5?2
,?)
inputs?????????222
p 
? "1?.
'?$
0?????????222
? ?
Q__inference_batch_normalization_48_layer_call_and_return_conditional_losses_44495z4523??<
5?2
,?)
inputs?????????222
p
? "1?.
'?$
0?????????222
? ?
6__inference_batch_normalization_48_layer_call_fn_44508?5243Z?W
P?M
G?D
inputs8????????????????????????????????????
p 
? "??<8?????????????????????????????????????
6__inference_batch_normalization_48_layer_call_fn_44521?4523Z?W
P?M
G?D
inputs8????????????????????????????????????
p
? "??<8?????????????????????????????????????
6__inference_batch_normalization_48_layer_call_fn_44534m5243??<
5?2
,?)
inputs?????????222
p 
? "$?!?????????222?
6__inference_batch_normalization_48_layer_call_fn_44547m4523??<
5?2
,?)
inputs?????????222
p
? "$?!?????????222?
E__inference_conv3d_102_layer_call_and_return_conditional_losses_44151t;?8
1?.
,?)
inputs?????????222
? "1?.
'?$
0?????????222
? ?
*__inference_conv3d_102_layer_call_fn_44160g;?8
1?.
,?)
inputs?????????222
? "$?!?????????222?
E__inference_conv3d_103_layer_call_and_return_conditional_losses_44331t!";?8
1?.
,?)
inputs?????????222
? "1?.
'?$
0?????????222
? ?
*__inference_conv3d_103_layer_call_fn_44340g!";?8
1?.
,?)
inputs?????????222
? "$?!?????????222?
E__inference_conv3d_104_layer_call_and_return_conditional_losses_44378t+,;?8
1?.
,?)
inputs?????????222
? "1?.
'?$
0?????????222
? ?
*__inference_conv3d_104_layer_call_fn_44387g+,;?8
1?.
,?)
inputs?????????222
? "$?!?????????222?
E__inference_conv3d_105_layer_call_and_return_conditional_losses_44585t>?;?8
1?.
,?)
inputs?????????222
? "1?.
'?$
0?????????222
? ?
*__inference_conv3d_105_layer_call_fn_44594g>?;?8
1?.
,?)
inputs?????????222
? "$?!?????????222?
C__inference_dense_59_layer_call_and_return_conditional_losses_44616^HI1?.
'?$
"?
inputs???????????
? "%?"
?
0?????????@
? }
(__inference_dense_59_layer_call_fn_44625QHI1?.
'?$
"?
inputs???????????
? "??????????@?
C__inference_dense_60_layer_call_and_return_conditional_losses_44636\NO/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? {
(__inference_dense_60_layer_call_fn_44645ONO/?,
%?"
 ?
inputs?????????@
? "???????????
E__inference_dropout_40_layer_call_and_return_conditional_losses_44345t??<
5?2
,?)
inputs?????????222
p 
? "1?.
'?$
0?????????222
? ?
E__inference_dropout_40_layer_call_and_return_conditional_losses_44357t??<
5?2
,?)
inputs?????????222
p
? "1?.
'?$
0?????????222
? ?
*__inference_dropout_40_layer_call_fn_44362g??<
5?2
,?)
inputs?????????222
p 
? "$?!?????????222?
*__inference_dropout_40_layer_call_fn_44367g??<
5?2
,?)
inputs?????????222
p
? "$?!?????????222?
E__inference_dropout_41_layer_call_and_return_conditional_losses_44552t??<
5?2
,?)
inputs?????????222
p 
? "1?.
'?$
0?????????222
? ?
E__inference_dropout_41_layer_call_and_return_conditional_losses_44564t??<
5?2
,?)
inputs?????????222
p
? "1?.
'?$
0?????????222
? ?
*__inference_dropout_41_layer_call_fn_44569g??<
5?2
,?)
inputs?????????222
p 
? "$?!?????????222?
*__inference_dropout_41_layer_call_fn_44574g??<
5?2
,?)
inputs?????????222
p
? "$?!?????????222?
E__inference_flatten_21_layer_call_and_return_conditional_losses_44600f;?8
1?.
,?)
inputs?????????222
? "'?$
?
0???????????
? ?
*__inference_flatten_21_layer_call_fn_44605Y;?8
1?.
,?)
inputs?????????222
? "?????????????
H__inference_sequential_21_layer_call_and_return_conditional_losses_43736?!"+,5243>?HINOM?J
C?@
6?3
conv3d_102_input?????????222
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_21_layer_call_and_return_conditional_losses_43791?!"+,4523>?HINOM?J
C?@
6?3
conv3d_102_input?????????222
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_21_layer_call_and_return_conditional_losses_43926?!"+,5243>?HINOC?@
9?6
,?)
inputs?????????222
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_21_layer_call_and_return_conditional_losses_44050?!"+,4523>?HINOC?@
9?6
,?)
inputs?????????222
p

 
? "%?"
?
0?????????
? ?
-__inference_sequential_21_layer_call_fn_43259!"+,5243>?HINOM?J
C?@
6?3
conv3d_102_input?????????222
p 

 
? "???????????
-__inference_sequential_21_layer_call_fn_43681!"+,4523>?HINOM?J
C?@
6?3
conv3d_102_input?????????222
p

 
? "???????????
-__inference_sequential_21_layer_call_fn_44095u!"+,5243>?HINOC?@
9?6
,?)
inputs?????????222
p 

 
? "???????????
-__inference_sequential_21_layer_call_fn_44140u!"+,4523>?HINOC?@
9?6
,?)
inputs?????????222
p

 
? "???????????
#__inference_signature_wrapper_43844?!"+,5243>?HINOY?V
? 
O?L
J
conv3d_102_input6?3
conv3d_102_input?????????222"3?0
.
dense_60"?
dense_60?????????