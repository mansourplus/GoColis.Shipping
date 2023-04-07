Æ
tC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Authentication\Commands\Login\LoginCommand.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
Authentication' 5
.5 6
Commands6 >
.> ?
Login? D
;D E
public 
class 
LoginCommand 
: 
IRequest #
<# $
ErrorOr$ +
<+ ,
string, 2
>2 3
>3 4
{ 
public 

string 
Email 
{ 
get 
; 
set "
;" #
}$ %
=& '
string( .
.. /
Empty/ 4
;4 5
public		 

string		 
Password		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
=		) *
string		+ 1
.		1 2
Empty		2 7
;		7 8
}

 ÷
{C:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Authentication\Commands\Login\LoginCommandHandler.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
Authentication' 5
.5 6
Commands6 >
.> ?
Login? D
;D E
public

 
class

 
LoginCommandHandler

  
:

! "
IRequestHandler

# 2
<

2 3
LoginCommand

3 ?
,

? @
ErrorOr

A H
<

H I
string

I O
>

O P
>

P Q
{ 
private 
readonly 
UserManager  
<  !
User! %
>% &
_userManager' 3
;3 4
private 
readonly 
IJwtProvider !
_jwtProvider" .
;. /
public 

LoginCommandHandler 
( 
UserManager *
<* +
User+ /
>/ 0
userManager1 <
,< =
IJwtProvider? K
jwtProviderL W
)W X
{ 
_userManager 
= 
userManager "
;" #
_jwtProvider 
= 
jwtProvider "
;" #
} 
public 

async 
Task 
< 
ErrorOr 
< 
string $
>$ %
>% &
Handle' -
(- .
LoginCommand. :
request; B
,B C
CancellationTokenD U
cancellationTokenV g
)g h
{ 
var 
user 
= 
await 
_userManager %
.% &
FindByNameAsync& 5
(5 6
request6 =
.= >
Email> C
)C D
;D E
if 

( 
user 
!= 
null 
&& 
await !
_userManager" .
.. /
CheckPasswordAsync/ A
(A B
userB F
,F G
requestH O
.O P
PasswordP X
)X Y
)Y Z
{ 	
var 
roles 
= 
await 
_userManager *
.* +
GetRolesAsync+ 8
(8 9
user9 =
)= >
;> ?
return 
await 
_jwtProvider %
.% &
Generate& .
(. /
user/ 3
,3 4
roles5 :
): ;
;; <
} 	
return 
ErrorOr 
. 
Failure 
< 
string %
>% &
(& '
Error' ,
., -

Validation- 7
(7 8
$str8 O
,O P
$strQ l
)l m
)m n
;n o
} 
} ”
vC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Authentication\Commands\Logout\LogoutCommand.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
Authentication' 5
.5 6
Commands6 >
.> ?
Logout? E
;E F
public 
class 
LogoutCommand 
: 
IRequest %
<% &
ErrorOr& -
<- .
bool. 2
>2 3
>3 4
{ 
} ç	
}C:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Authentication\Commands\Logout\LogoutCommandHandler.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
Authentication' 5
.5 6
Commands6 >
.> ?
Login? D
;D E
public 
class  
LogoutCommandHandler !
:" #
IRequestHandler$ 3
<3 4
LogoutCommand4 A
,A B
ErrorOrC J
<J K
boolK O
>O P
>P Q
{ 
public		 

async		 
Task		 
<		 
ErrorOr		 
<		 
bool		 "
>		" #
>		# $
Handle		% +
(		+ ,
LogoutCommand		, 9
request		: A
,		A B
CancellationToken		C T
cancellationToken		U f
)		f g
{

 
await 
Task 
. 
CompletedTask  
;  !
return 
true 
; 
} 
} ∏!
zC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Authentication\Commands\Register\RegisterCommand.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
Authentication' 5
.5 6
Commands6 >
.> ?
Register? G
;G H
public 
class 
RegisterCommand 
: 
IRequest '
<' (
ErrorOr( /
</ 0
bool0 4
>4 5
>5 6
{ 
public 

string 
	FirstName 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
public		 

string		 
LastName		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
=		) *
string		+ 1
.		1 2
Empty		2 7
;		7 8
public

 

string

 
Email

 
{

 
get

 
;

 
set

 "
;

" #
}

$ %
=

& '
string

( .
.

. /
Empty

/ 4
;

4 5
public 

string 
Phone 
{ 
get 
; 
set !
;! "
}# $
=% &
string' -
.- .
Empty. 3
;3 4
public 

string 
StreetNumber 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
string/ 5
.5 6
Empty6 ;
;; <
public 

string 
Street 
{ 
get 
; 
set  #
;# $
}% &
=' (
string) /
./ 0
Empty0 5
;5 6
public 

string 
AddressLine1 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
string/ 5
.5 6
Empty6 ;
;; <
public 

string 
AddressLine2 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
string/ 5
.5 6
Empty6 ;
;; <
public 

string 
City 
{ 
get 
; 
set !
;! "
}# $
=% &
string' -
.- .
Empty. 3
;3 4
public 

string 
ZipCode 
{ 
get 
;  
set! $
;$ %
}& '
=( )
string* 0
.0 1
Empty1 6
;6 7
public 

string 
Country 
{ 
get 
;  
set! $
;$ %
}& '
=( )
string* 0
.0 1
Empty1 6
;6 7
public 

decimal 
Latitude 
{ 
get !
;! "
set# &
;& '
}( )
public 

decimal 
	Longitude 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
Password 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
public 

string 
ConfirmPassword !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
string2 8
.8 9
Empty9 >
;> ?
public 

string 
Role 
{ 
get 
; 
set  
;  !
}" #
=$ %
string& ,
., -
Empty- 2
;2 3
} äJ
ÅC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Authentication\Commands\Register\RegisterCommandHandler.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
Authentication' 5
.5 6
Commands6 >
.> ?
Register? G
;G H
public 
class "
RegisterCommandHandler #
:$ %
IRequestHandler& 5
<5 6
RegisterCommand6 E
,E F
ErrorOrG N
<N O
boolO S
>S T
>T U
{ 
private 
readonly 
UserManager  
<  !
User! %
>% &
_userManager' 3
;3 4
private 
readonly 
IMapper 
_mapper $
;$ %
private 
readonly 

IValidator 
<  
RegisterCommand  /
>/ 0

_validator1 ;
;; <
private 
readonly 
IPersonRepository &
_personRepository' 8
;8 9
private 
readonly 
ICarrierRepository '
_carrierRepository( :
;: ;
public 
"
RegisterCommandHandler !
(! "
UserManager" -
<- .
User. 2
>2 3
userManager4 ?
,? @
IMapperB I
mapperJ P
,P Q

IValidatorR \
<\ ]
RegisterCommand] l
>l m
	validatorn w
,w x
IPersonRepository	y ä
personRepository
ã õ
,
õ ú 
ICarrierRepository
ù Ø
carrierRepository
∞ ¡
)
¡ ¬
{ 
_userManager 
= 
userManager "
;" #
_mapper 
= 
mapper 
; 

_validator 
= 
	validator 
; 
_personRepository 
= 
personRepository ,
;, -
_carrierRepository 
= 
carrierRepository .
;. /
} 
public 

async 
Task 
< 
ErrorOr 
< 
bool "
>" #
># $
Handle% +
(+ ,
RegisterCommand, ;
request< C
,C D
CancellationTokenE V
cancellationTokenW h
)h i
{ 
var   

validation   
=   

_validator   #
.  # $
Validate  $ ,
(  , -
request  - 4
)  4 5
;  5 6
if"" 

("" 
!"" 

validation"" 
."" 
IsValid"" 
)""  
return## 
ErrorOr## 
.## 
Failure## "
<##" #
bool### '
>##' (
(##( )
Error##) .
.##. /

Validation##/ 9
(##9 :
$str##: V
,##V W

validation##X b
.##b c
Errors##c i
.##i j
FirstOrDefault##j x
(##x y
)##y z
?##z {
.##{ |
ErrorMessage	##| à
??
##â ã
$str
##å û
)
##û ü
)
##ü †
;
##† °
var%% 
user%% 
=%% 
_mapper%% 
.%% 
Map%% 
<%% 
User%% #
>%%# $
(%%$ %
request%%% ,
)%%, -
;%%- .
user'' 
.'' 
UserName'' 
='' 
user'' 
.'' 
Email'' "
;''" #
var)) 
identity)) 
=)) 
await)) 
_userManager)) )
.))) *
CreateAsync))* 5
())5 6
user))6 :
))): ;
;)); <
string++ 
error++ 
=++ 
string++ 
.++ 
Empty++ #
;++# $
if,, 

(,, 
identity,, 
.,, 
	Succeeded,, 
),, 
{-- 	
var.. 
	identity1.. 
=.. 
await.. !
_userManager.." .
.... /
AddPasswordAsync../ ?
(..? @
user..@ D
,..D E
request..F M
...M N
Password..N V
)..V W
;..W X
if// 
(// 
	identity1// 
.// 
	Succeeded// #
)//# $
{00 
var11 

identity1211 
=11  
await11! &
_userManager11' 3
.113 4
AddToRoleAsync114 B
(11B C
user11C G
,11G H
request11I P
.11P Q
Role11Q U
)11U V
;11V W
if22 
(22 
!22 

identity1222 
.22  
	Succeeded22  )
)22) *
{33 
error44 
=44 

identity1244 &
?44& '
.44' (
Errors44( .
?44. /
.44/ 0
FirstOrDefault440 >
(44> ?
)44? @
?44@ A
.44A B
Description44B M
??44N P
string44Q W
.44W X
Empty44X ]
;44] ^
}55 
}66 
else77 
{88 
error99 
=99 
	identity199 !
?99! "
.99" #
Errors99# )
?99) *
.99* +
FirstOrDefault99+ 9
(999 :
)99: ;
?99; <
.99< =
Description99= H
??99I K
string99L R
.99R S
Empty99S X
;99X Y
}:: 
await== 
_userManager== 
.== 
DeleteAsync== *
(==* +
user==+ /
)==/ 0
;==0 1
}>> 	
else?? 
{@@ 	
errorAA 
=AA 
identityAA 
?AA 
.AA 
ErrorsAA $
?AA$ %
.AA% &
FirstOrDefaultAA& 4
(AA4 5
)AA5 6
?AA6 7
.AA7 8
DescriptionAA8 C
??AAD F
stringAAG M
.AAM N
EmptyAAN S
;AAS T
}BB 	
ifDD 

(DD 
stringDD 
.DD 
IsNullOrWhiteSpaceDD %
(DD% &
errorDD& +
)DD+ ,
)DD, -
{EE 	
errorFF 
=FF 
requestFF 
.FF 
RoleFF  
switchFF! '
{GG 
RolesHH 
.HH 
ClientHH 
=>HH 
awaitHH  %
RegisterClientHH& 4
(HH4 5
requestHH5 <
,HH< =
userHH> B
)HHB C
,HHC D
RolesII 
.II 
CarrierII 
=>II  
awaitII! &
RegisterCarrierII' 6
(II6 7
requestII7 >
,II> ?
userII@ D
)IID E
,IIE F
_JJ 
=>JJ 
stringJJ 
.JJ 
EmptyJJ !
}KK 
;KK 
}LL 	
ifNN 

(NN 
!NN 
stringNN 
.NN 
IsNullOrEmptyNN !
(NN! "
errorNN" '
)NN' (
)NN( )
{OO 	
returnPP 
ErrorOrPP 
.PP 
FailurePP "
<PP" #
boolPP# '
>PP' (
(PP( )
ErrorPP) .
.PP. /

ValidationPP/ 9
(PP9 :
$strPP: P
,PPP Q
errorPPR W
)PPW X
)PPX Y
;PPY Z
}QQ 	
returnSS 
trueSS 
;SS 
}TT 
privateVV 
asyncVV 
TaskVV 
<VV 
stringVV 
>VV 
RegisterCarrierVV .
(VV. /
RegisterCommandVV/ >
requestVV? F
,VVF G
UserVVH L
userVVM Q
)VVQ R
{WW 
varXX 
carrierXX 
=XX 
_mapperXX 
.XX 
MapXX !
<XX! "
CarrierXX" )
>XX) *
(XX* +
(XX+ ,
requestXX, 3
,XX3 4
userXX4 8
)XX8 9
)XX9 :
;XX: ;
awaitZZ 
_carrierRepositoryZZ  
.ZZ  !
AddAsyncZZ! )
(ZZ) *
carrierZZ* 1
)ZZ1 2
;ZZ2 3
return\\ 
string\\ 
.\\ 
Empty\\ 
;\\ 
}]] 
private__ 
async__ 
Task__ 
<__ 
string__ 
>__ 
RegisterClient__ -
(__- .
RegisterCommand__. =
request__> E
,__E F
User__G K
user__L P
)__P Q
{`` 
varaa 
personaa 
=aa 
_mapperaa 
.aa 
Mapaa  
<aa  !
Personaa! '
>aa' (
(aa( )
(aa) *
requestaa* 1
,aa1 2
useraa3 7
)aa7 8
)aa8 9
;aa9 :
awaitcc 
_personRepositorycc 
.cc  
AddAsynccc  (
(cc( )
personcc) /
)cc/ 0
;cc0 1
returnee 
stringee 
.ee 
Emptyee 
;ee 
}ff 
}gg Ë
ÉC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Authentication\Commands\Register\RegisterCommandValidator.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
Authentication' 5
.5 6
Commands6 >
.> ?
Register? G
;G H
public 
class $
RegisterCommandValidator %
:& '
AbstractValidator( 9
<9 :
RegisterCommand: I
>I J
{ 
public 
$
RegisterCommandValidator #
(# $
)$ %
{ 
RuleFor		 
(		 
x		 
=>		 
x		 
.		 
	FirstName		  
)		  !
.		! "
NotEmpty		" *
(		* +
)		+ ,
.		, -
WithMessage		- 8
(		8 9
$str		9 ]
)		] ^
;		^ _
RuleFor

 
(

 
x

 
=>

 
x

 
.

 
LastName

 
)

  
.

  !
NotEmpty

! )
(

) *
)

* +
.

+ ,
WithMessage

, 7
(

7 8
$str

8 [
)

[ \
;

\ ]
RuleFor 
( 
x 
=> 
x 
. 
Email 
) 
. 
EmailAddress *
(* +
)+ ,
., -
WithMessage- 8
(8 9
$str9 O
)O P
;P Q
RuleFor 
( 
x 
=> 
x 
. 
Phone 
) 
. 
MinimumLength +
(+ ,
$num, -
)- .
.. /
WithMessage/ :
(: ;
$str; Q
)Q R
;R S
RuleFor 
( 
x 
=> 
x 
. 
Password 
)  
.  !
MinimumLength! .
(. /
$num/ 0
)0 1
.1 2
WithMessage2 =
(= >
$str> P
)P Q
;Q R
RuleFor 
( 
x 
=> 
x 
. 
ConfirmPassword &
)& '
.' (
Custom( .
(. /
(/ 0
x0 1
,1 2
y3 4
)4 5
=>6 8
{ 	
if 
( 
x 
!= 
y 
. 
InstanceToValidate )
.) *
Password* 2
)2 3
y 
. 

AddFailure 
( 
$str .
,. /
$str0 H
)H I
;I J
} 	
)	 

;
 
RuleFor 
( 
x 
=> 
x 
. 
Role 
) 
. 
Custom #
(# $
($ %
x% &
,& '
y( )
)) *
=>+ -
{ 	
if 
( 
! 
	Constants 
. 
Roles  
.  !
ApplicationRoles! 1
.1 2
Any2 5
(5 6
r6 7
=>8 :
r; <
=== ?
x@ A
)A B
||C E
xF G
==H J
	ConstantsK T
.T U
RolesU Z
.Z [

SuperAdmin[ e
)e f
y 
. 

AddFailure 
( 
$str #
,# $
$"% '
$str' 6
{6 7
x7 8
}8 9
"9 :
): ;
;; <
} 	
)	 

;
 
} 
} §	
hC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Authentication\Constants\Roles.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
Authentication' 5
.5 6
	Constants6 ?
;? @
public 
static 
class 
Roles 
{ 
public 

const 
string 

SuperAdmin "
=# $
$str% 1
;1 2
public 

const 
string 
Client 
=  
$str! )
;) *
public 

const 
string 
Carrier 
=  !
$str" +
;+ ,
public		 

static		 
List		 
<		 
string		 
>		 
ApplicationRoles		 /
=>		0 2
new		3 6
List		7 ;
<		; <
string		< B
>		B C
{		D E

SuperAdmin		F P
,		P Q
Client		R X
,		X Y
Carrier		Z a
}		b c
;		c d
}

 Œ
oC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Authentication\Contracts\IJwtProvider.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
Authentication' 5
.5 6
	Contracts6 ?
{ 
public 

	interface 
IJwtProvider !
{ 
Task 
< 
string 
> 
Generate 
( 
User "
user# '
,' (
IEnumerable) 4
<4 5
string5 ;
>; <
roles= B
)B C
;C D
} 
}		 ¡
xC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Authentication\Contracts\IPermissionRepository.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
Authentication' 5
.5 6
	Contracts6 ?
;? @
public 
	interface !
IPermissionRepository &
{ 
public 

Task 
< 
IEnumerable 
< 

Permission &
>& '
>' (
GetRolePermission) :
(: ;
string; A
RoleB F
)F G
;G H
public 

Task 
< 
IEnumerable 
< 

Permission &
>& '
>' (
GetUserPermission) :
(: ;
Guid; ?
userId@ F
)F G
;G H
}		 È*
vC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Authentication\Mapping\RegisterMappingConfig.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
Authentication' 5
.5 6
Mapping6 =
;= >
public

 
class

 !
RegisterMappingConfig

 "
:

# $
	IRegister

% .
{ 
public 

void 
Register 
( 
TypeAdapterConfig *
config+ 1
)1 2
{ 
config 
. 
	NewConfig 
< 
( 
RegisterCommand )
command* 1
,1 2
User2 6
user7 ;
); <
,< =
Carrier> E
>E F
(F G
)G H
. 
ConstructUsing 
( 
src 
=>  "
Carrier# *
.* +
Create+ 1
(1 2
src 
. 
command 
. 
	FirstName %
,% &
Person 
. 
Create 
( 
Adress 
. 
Create !
(! "
src 
. 
command #
.# $
StreetNumber$ 0
,0 1
src 
. 
command #
.# $
Street$ *
,* +
src 
. 
command #
.# $
AddressLine1$ 0
,0 1
src 
. 
command #
.# $
AddressLine2$ 0
,0 1
src 
. 
command #
.# $
City$ (
,( )
src 
. 
command #
.# $
ZipCode$ +
,+ ,
src 
. 
command #
.# $
Country$ +
,+ ,
src 
. 
command #
.# $
Latitude$ ,
,, -
src 
. 
command #
.# $
	Longitude$ -
) 
, 
new 
List 
< 
Contact $
>$ %
{% &
Contact' .
.. /
Create/ 5
(5 6
src 
. 
command #
.# $
	FirstName$ -
,- .
src 
. 
command #
.# $
LastName$ ,
,, -
src   
.   
command   #
.  # $
Email  $ )
,  ) *
src!! 
.!! 
command!! #
.!!# $
Phone!!$ )
,!!) *
src"" 
."" 
command"" #
.""# $
Role""$ (
)## 
}## 
,## 
src$$ 
.$$ 
user$$ 
)$$ 
,$$ 
new%% 
(%% 
)%% 
)&& 
)&& 
;&& 
config(( 
.(( 
	NewConfig(( 
<(( 
((( 
RegisterCommand(( )
command((* 1
,((1 2
User((3 7
user((8 <
)((< =
,((= >
Person((? E
>((E F
(((F G
)((G H
.)) 
ConstructUsing)) 
()) 
src)) 
=>)) !
Person))" (
.))( )
Create))) /
())/ 0
Adress** 
.** 
Create** 
(** 
src++ 
.++ 
command++ 
.++ 
StreetNumber++ +
,+++ ,
src,, 
.,, 
command,, 
.,, 
Street,, %
,,,% &
src-- 
.-- 
command-- 
.-- 
AddressLine1-- +
,--+ ,
src.. 
... 
command.. 
... 
AddressLine2.. +
,..+ ,
src// 
.// 
command// 
.// 
City// #
,//# $
src00 
.00 
command00 
.00 
ZipCode00 &
,00& '
src11 
.11 
command11 
.11 
Country11 &
,11& '
src22 
.22 
command22 
.22 
Latitude22 '
,22' (
src33 
.33 
command33 
.33 
	Longitude33 (
)44 
,44 
new55 
List55 
<55 
Contact55 
>55  
{55  !
Contact55" )
.55) *
Create55* 0
(550 1
src66 
.66 
command66 
.66 
	FirstName66 (
,66( )
src77 
.77 
command77 
.77 
LastName77 '
,77' (
src88 
.88 
command88 
.88 
Email88 $
,88$ %
src99 
.99 
command99 
.99 
Phone99 $
,99$ %
src:: 
.:: 
command:: 
.:: 
Role:: #
);; 
};; 
,;; 
src<< 
.<< 
user<< 
)== 
)== 
;== 
}>> 
}?? ø
\C:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Common\IRepository.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
Common' -
;- .
public 
	interface 
IRepository 
< 
TEntity $
>$ %
where& +
TEntity, 3
:4 5
class6 ;
{ 
public 

Task 
AddAsync 
( 
TEntity  
entity! '
)' (
;( )
public 

Task 
< 
TEntity 
? 
> 
GetAsync "
(" #
Guid# '
id( *
)* +
;+ ,
} ‹
]C:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\DependencyInjection.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
;& '
public		 
static		 
class		 
DependencyInjection		 '
{

 
public 

static 
IServiceCollection $"
AddApplicationServices% ;
(; <
this< @
IServiceCollectionA S
servicesT \
)\ ]
{ 
services 
. 

AddMediatR 
( 
cfg 
=>  "
{ 	
cfg 
. (
RegisterServicesFromAssembly ,
(, -
typeof- 3
(3 4
DependencyInjection4 G
)G H
.H I
AssemblyI Q
)Q R
;R S
} 	
)	 

;
 
services 
. 
	AddScoped 
< 

IValidator %
<% &#
CreateRelayPointCommand& =
>= >
,> ?,
 CreateRelayPointCommandValidator@ `
>` a
(a b
)b c
;c d
services 
. 
	AddScoped 
< 

IValidator %
<% &
RegisterCommand& 5
>5 6
,6 7$
RegisterCommandValidator8 P
>P Q
(Q R
)R S
;S T
services 
. 
	AddScoped 
< 

IValidator %
<% &!
CreateShipmentCommand& ;
>; <
,< =#
CreateShipmentValidator> U
>U V
(V W
)W X
;X Y
return 
services 
; 
} 
} ‰
\C:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Helpers\UserHelper.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
	Logistics' 0
.0 1
Helpers1 8
;8 9
internal 
static	 
class 

UserHelper  
{ 
internal 
static 
Guid 
GetOwner !
(! "
)" #
{ 
return 
Guid 
. 
NewGuid 
( 
) 
; 
} 
internal

 
static

 
string

 
GetUser

 "
(

" #
)

# $
{ 
return 
$str 
; 
} 
} ª
aC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Helpers\VisibiliyHelper.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
Helpers' .
;. /
internal 
static	 
class 
VisibiliyHelper %
{ 
internal 
static 
Error 
? 
CheckVisibility *
<* +
TEntity+ 2
>2 3
(3 4
this4 8
TEntity9 @
entityA G
,G H
GuidI M
ownerIdN U
)U V
where		 
TEntity		 
:		 
AggregationRoot		 '
{

 
if 

(
 
entity 
? 
. 
OwnerId 
is 
not !
null" &
&&' )
entity* 0
.0 1
OwnerId1 8
!=9 ;
ownerId< C
)C D
{ 	
return 
Error 
. 

Validation #
(# $
$"$ &
{& '
typeof' -
(- .
TEntity. 5
)5 6
.6 7
Name7 ;
}; <
$str< G
"G H
,H I
$"J L
$strL d
{d e
ownerIde l
}l m
$strm n
"n o
)o p
;p q
} 	
return 
null 
; 
} 
} •
pC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Logistics\Contracts\ICarrierRepository.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
	Logistics' 0
.0 1
	Contracts1 :
;: ;
public 
	interface 
ICarrierRepository #
:$ %
IRepository& 1
<1 2
ENTITY2 8
.8 9
Carrier9 @
>@ A
{ 
} ¡
oC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Logistics\Contracts\IPersonRepository.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
	Logistics' 0
.0 1
	Contracts1 :
;: ;
public 
	interface 
IPersonRepository "
:# $
IRepository% 0
<0 1
Person1 7
>7 8
{ 
Task 
< 	
Person	 
? 
> 
GetConnectedPerson $
($ %
Guid% )
id* ,
), -
;- .
}		 Æ
sC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Logistics\Contracts\IRelayPointRepository.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
	Logistics' 0
.0 1
	Contracts1 :
;: ;
public 
	interface !
IRelayPointRepository &
:' (
IRepository) 4
<4 5
ENTITY5 ;
.; <

RelayPoint< F
>F G
{ 
} Ì
qC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Logistics\Contracts\IShipmentRepository.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
	Logistics' 0
.0 1
	Contracts1 :
;: ;
public 
	interface 
IShipmentRepository $
:% &
IRepository' 2
<2 3
Domain3 9
.9 :
	Logistics: C
.C D
OrderD I
.I J
OrderJ O
>O P
{ 
} ∏8
ïC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Logistics\RelayPoint\Commands\CreateRelayPointPoint\CreateRelayPointCommand.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
	Logistics' 0
.0 1

RelayPoint1 ;
.; <
Commands< D
.D E!
CreateRelayPointPointE Z
;Z [
public 
class #
CreateRelayPointCommand $
:% &
IRequest' /
</ 0
ErrorOr0 7
<7 8
Guid8 <
>< =
>= >
{ 
public		 

Guid		 
Id		 
{		 
get		 
;		 
set		 
;		 
}		  
public

 

string

 
Name

 
{

 
get

 
;

 
set

 !
;

! "
}

# $
=

% &
string

' -
.

- .
Empty

. 3
;

3 4
public 

Adress 
Adress 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

Contact 
Contact 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 

ENTITY 
. 

RelayPoint 
ToRelayPoint )
() *
string* 0
	createdBy1 :
): ;
{ 
return 
ENTITY 
. 

RelayPoint  
.  !
Create! '
(' (
Name 
, 
Adress 
. 
ToAdress 
( 
) 
, 
Contact 
. 
	ToContact 
( 
) 
,  
new 
( 
) 
, 
	createdBy 
) 
; 
} 
} 
public 
class 
Adress 
{ 
public 

string 
StreetNumber 
{  
get! $
;$ %
set& )
;) *
}+ ,
=, -
string- 3
.3 4
Empty4 9
;9 :
public 

string 
Street 
{ 
get 
; 
set  #
;# $
}% &
=' (
string) /
./ 0
Empty0 5
;5 6
public   

string   
AddressLine1   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
=  - .
string  / 5
.  5 6
Empty  6 ;
;  ; <
public!! 

string!! 
AddressLine2!! 
{!!  
get!!! $
;!!$ %
set!!& )
;!!) *
}!!+ ,
=!!- .
string!!/ 5
.!!5 6
Empty!!6 ;
;!!; <
public"" 

string"" 
City"" 
{"" 
get"" 
;"" 
set"" !
;""! "
}""# $
=""% &
string""' -
.""- .
Empty"". 3
;""3 4
public## 

string## 
ZipCode## 
{## 
get## 
;##  
set##! $
;##$ %
}##& '
=##( )
string##* 0
.##0 1
Empty##1 6
;##6 7
public$$ 

string$$ 
Country$$ 
{$$ 
get$$ 
;$$  
set$$! $
;$$$ %
}$$& '
=$$( )
string$$* 0
.$$0 1
Empty$$1 6
;$$6 7
public%% 

decimal%% 
Latitude%% 
{%% 
get%% !
;%%! "
set%%# &
;%%& '
}%%( )
public&& 

decimal&& 
	Longitude&& 
{&& 
get&& "
;&&" #
set&&$ '
;&&' (
}&&) *
public(( 

Domain(( 
.(( 
Common(( 
.(( 
Entities(( !
.((! "
Adress((" (
ToAdress(() 1
(((1 2
)((2 3
{)) 
return** 
Domain** 
.** 
Common** 
.** 
Entities** %
.**% &
Adress**& ,
.**, -
Create**- 3
(**3 4
StreetNumber++ 
,++ 
Street,, 
,,, 
AddressLine1-- 
,-- 
AddressLine2.. 
,.. 
City// 
,// 
ZipCode00 
,00 
Country11 
,11 
Latitude22 
,22 
	Longitude33 
)33 
;33 
}44 
}55 
public88 
class88 
Contact88 
{99 
public:: 

string:: 
	FirstName:: 
{:: 
get:: !
;::! "
set::# &
;::& '
}::( )
=::* +
string::, 2
.::2 3
Empty::3 8
;::8 9
public;; 

string;; 
LastName;; 
{;; 
get;;  
;;;  !
set;;" %
;;;% &
};;' (
=;;) *
string;;+ 1
.;;1 2
Empty;;2 7
;;;7 8
public<< 

string<< 
Email<< 
{<< 
get<< 
;<< 
set<< "
;<<" #
}<<$ %
=<<& '
string<<( .
.<<. /
Empty<</ 4
;<<4 5
public== 

string== 
Phone== 
{== 
get== 
;== 
set== "
;==" #
}==$ %
===& '
string==( .
.==. /
Empty==/ 4
;==4 5
public>> 

string>> 
Role>> 
{>> 
get>> 
;>> 
set>> !
;>>! "
}>># $
=>>% &
string>>' -
.>>- .
Empty>>. 3
;>>3 4
public@@ 

List@@ 
<@@ 
Domain@@ 
.@@ 
Common@@ 
.@@ 
Entities@@ &
.@@& '
Contact@@' .
>@@. /
	ToContact@@0 9
(@@9 :
)@@: ;
{AA 
returnBB 
newBB 
ListBB 
<BB 
DomainBB 
.BB 
CommonBB %
.BB% &
EntitiesBB& .
.BB. /
ContactBB/ 6
>BB6 7
{BB7 8
DomainCC 
.CC 
CommonCC 
.CC 
EntitiesCC "
.CC" #
ContactCC# *
.CC* +
CreateCC+ 1
(CC1 2
	FirstNameCC2 ;
,CC; <
LastNameDD 
,DD 
EmailEE 
,EE 
PhoneFF 
,FF 
RoleGG 
)GG 
}HH 	
;HH	 

}II 
}JJ Ω
ûC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Logistics\RelayPoint\Commands\CreateRelayPointPoint\CreateRelayPointCommandValidator.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
	Logistics' 0
.0 1

RelayPoint1 ;
.; <
Commands< D
.D E!
CreateRelayPointPointE Z
;Z [
public 
class ,
 CreateRelayPointCommandValidator -
:. /
AbstractValidator0 A
<A B#
CreateRelayPointCommandB Y
>Y Z
{ 
public 
,
 CreateRelayPointCommandValidator +
(+ ,
), -
{ 
RuleFor		 
(		 
x		 
=>		 
x		 
.		 
Contact		 
.		 
	FirstName		 (
)		( )
.		) *
NotNull		* 1
(		1 2
)		2 3
.		3 4
WithMessage		4 ?
(		? @
$str		@ d
)		d e
;		e f
RuleFor

 
(

 
x

 
=>

 
x

 
.

 
Contact

 
.

 
LastName

 '
)

' (
.

( )
Length

) /
(

/ 0
$num

0 1
,

1 2
$num

3 5
)

5 6
.

6 7
WithMessage

7 B
(

B C
$str

C f
)

f g
;

g h
RuleFor 
( 
x 
=> 
x 
. 
Contact 
. 
Email $
)$ %
.% &
EmailAddress& 2
(2 3
)3 4
.4 5
WithMessage5 @
(@ A
$strA W
)W X
;X Y
RuleFor 
( 
x 
=> 
x 
. 
Contact 
. 
Phone $
)$ %
.% &
MinimumLength& 3
(3 4
$num4 5
)5 6
.6 7
WithMessage7 B
(B C
$strC Y
)Y Z
;Z [
} 
} Ì 
ïC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Logistics\RelayPoint\Commands\CreateRelayPointPoint\CreateRelayPointHandler.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
	Logistics' 0
.0 1

RelayPoint1 ;
.; <
Commands< D
.D E!
CreateRelayPointPointE Z
;Z [
public

 
class

 #
CreateRelayPointHandler

 $
:

% &
IRequestHandler

' 6
<

6 7#
CreateRelayPointCommand

7 N
,

N O
ErrorOr

P W
<

W X
Guid

X \
>

\ ]
>

] ^
{ 
private 
readonly !
IRelayPointRepository *!
_relayPointRepository+ @
;@ A
private 
readonly 
IMapper 
_mapper $
;$ %
private 
readonly 

IValidator 
<  #
CreateRelayPointCommand  7
>7 8

_validator9 C
;C D
public 
#
CreateRelayPointHandler "
(" #!
IRelayPointRepository# 8 
relayPointRepository9 M
,M N

IValidatorO Y
<Y Z#
CreateRelayPointCommandZ q
>q r
	validators |
,| }
IMapper	~ Ö
mapper
Ü å
)
å ç
{ !
_relayPointRepository 
=  
relayPointRepository  4
;4 5

_validator 
= 
	validator 
; 
_mapper 
= 
mapper 
; 
} 
public 

async 
Task 
< 
ErrorOr 
< 
Guid "
>" #
># $
Handle% +
(+ ,#
CreateRelayPointCommand, C
requestD K
,K L
CancellationTokenM ^
cancellationToken_ p
)p q
{ 
var 

validation 
= 

_validator #
.# $
Validate$ ,
(, -
request- 4
)4 5
;5 6
if 

( 
! 

validation 
. 
IsValid 
)  
return 
ErrorOr 
. 
Failure "
<" #
Guid# '
>' (
(( )
Error) .
.. /

Validation/ 9
(9 :
$str: R
,R S

validationT ^
.^ _
Errors_ e
.e f
FirstOrDefaultf t
(t u
)u v
?v w
.w x
ErrorMessage	x Ñ
??
Ö á
$str
à ö
)
ö õ
)
õ ú
;
ú ù
var 
pickupPoint 
= 
_mapper !
.! "
Map" %
<% &
Domain& ,
., -
	Logistics- 6
.6 7

RelayPoint7 A
.A B

RelayPointB L
>L M
(M N
(N O
requestO V
,V W

UserHelperX b
.b c
GetUserc j
(j k
)k l
)l m
)m n
;n o
try 
{   	
await!! !
_relayPointRepository!! '
.!!' (
AddAsync!!( 0
(!!0 1
pickupPoint!!1 <
)!!< =
;!!= >
}"" 	
catch## 
(## 
	Exception## 
ex## 
)## 
{$$ 	
return%% 
ErrorOr%% 
.%% 
Failure%% "
<%%" #
Guid%%# '
>%%' (
(%%( )
Error%%) .
.%%. /

Unexpected%%/ 9
(%%9 :
$str%%: R
,%%R S
ex%%T V
.%%V W
Message%%W ^
)%%^ _
)%%_ `
;%%` a
}&& 	
return(( 
pickupPoint(( 
.(( 
Id(( 
;(( 
})) 
}** ∑
C:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Logistics\RelayPoint\Mappings\RelayPointMappingConfig.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
	Logistics' 0
.0 1

RelayPoint1 ;
.; <
Mappings< D
;D E
public		 
partial		 
class		 #
RelayPointMappingConfig		 ,
:		- .
	IRegister		/ 8
{

 
public 

void 
Register 
( 
TypeAdapterConfig *
config+ 1
)1 2
{ 
config 
. 
	NewConfig 
< 
ENTITY 
.  

RelayPoint  *
,* +
GetRelayPointResult+ >
>> ?
(? @
)@ A
;A B
config 
. 
	NewConfig 
< 
( #
CreateRelayPointCommand 1

RelayPoint2 <
,< =
string> D
	CreatedByE N
)N O
,O P
ENTITYQ W
.W X

RelayPointX b
>b c
(c d
)d e
. 
ConstructUsing 
( 
src 
=>  "
src# &
.& '

RelayPoint' 1
.1 2
ToRelayPoint2 >
(> ?
src? B
.B C
	CreatedByC L
)L M
)M N
; 
} 
} Ö
áC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Logistics\RelayPoint\Queries\GetRelayPoint\GetRelayPointQuery.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
	Logistics' 0
.0 1

RelayPoint1 ;
.; <
Queries< C
.C D
GetRelayPointD Q
;Q R
public 
class 
GetRelayPointQuery 
:  !
IRequest" *
<* +
ErrorOr+ 2
<2 3
GetRelayPointResult3 F
>F G
>G H
{ 
public 

GetRelayPointQuery 
( 
Guid "
id# %
)% &
{		 
Id

 

=

 
id

 
;

 
} 
public 

Guid 
Id 
{ 
get 
; 
set 
; 
}  
} Ÿ
éC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Logistics\RelayPoint\Queries\GetRelayPoint\GetRelayPointQueryHandler.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
	Logistics' 0
.0 1

RelayPoint1 ;
.; <
Queries< C
.C D
GetRelayPointD Q
;Q R
public 
class %
GetRelayPointQueryHandler &
:& '
IRequestHandler( 7
<7 8
GetRelayPointQuery8 J
,J K
ErrorOrL S
<S T
GetRelayPointResultT g
>g h
>h i
{		 
private

 
readonly

 !
IRelayPointRepository

 *"
_pickupPointRepository

+ A
;

A B
private 
readonly 
IMapper 
_mapper $
;$ %
public 
%
GetRelayPointQueryHandler $
($ %!
IRelayPointRepository% :!
pickupPointRepository; P
,P Q
IMapperR Y
mapperZ `
)` a
{ "
_pickupPointRepository 
=  !
pickupPointRepository! 6
;6 7
_mapper 
= 
mapper 
; 
} 
public 

async 
Task 
< 
ErrorOr 
< 
GetRelayPointResult 1
>1 2
>2 3
Handle4 :
(: ;
GetRelayPointQuery; M
requestN U
,U V
CancellationTokenW h
cancellationTokeni z
)z {
{ 
var 
model 
= 
await "
_pickupPointRepository /
./ 0
GetAsync0 8
(8 9
request9 @
.@ A
IdA C
)C D
;D E
if 

( 
model 
is 
null 
) 
return 
ErrorOr 
. 
Failure "
<" #
GetRelayPointResult# 6
>6 7
(7 8
Error8 =
.= >
NotFound> F
(F G
$strG ]
,] ^
$"_ a
$stra }
{} ~
request	~ Ö
.
Ö Ü
Id
Ü à
}
à â
$str
â ô
"
ô ö
)
ö õ
)
õ ú
;
ú ù
return 
_mapper 
. 
Map 
< 
GetRelayPointResult .
>. /
(/ 0
model0 5
)5 6
;6 7
} 
} ﬁ$
àC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Logistics\RelayPoint\Queries\GetRelayPoint\GetRelayPointResult.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
	Logistics' 0
.0 1

RelayPoint1 ;
.; <
Queries< C
.C D
GetRelayPointD Q
;Q R
public 
record 
GetRelayPointResult !
{ 
public 

Guid 
Id 
{ 
get 
; 
set 
; 
}  
public 

string 
Name 
{ 
get 
; 
set "
;" #
}$ %
=& '
string( .
.. /
Empty/ 4
;4 5
public 

Adress 
Adress 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public		 

Contact		 
Contact		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
=		) *
null		+ /
!		/ 0
;		0 1
}

 
public 
class 
Adress 
{ 
public 

string 
StreetNumber 
{  
get! $
;$ %
set' *
;* +
}, -
=. /
string0 6
.6 7
Empty7 <
;< =
public 

string 
Street 
{ 
get 
; 
set! $
;$ %
}& '
=( )
string* 0
.0 1
Empty1 6
;6 7
public 

string 
AddressLine1 
{  
get! $
;$ %
set' *
;* +
}, -
=. /
string0 6
.6 7
Empty7 <
;< =
public 

string 
AddressLine2 
{  
get! $
;$ %
set' *
;* +
}, -
=. /
string0 6
.6 7
Empty7 <
;< =
public 

string 
City 
{ 
get 
; 
set "
;" #
}$ %
=& '
string( .
.. /
Empty/ 4
;4 5
public 

string 
ZipCode 
{ 
get 
;  
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
public 

string 
Country 
{ 
get 
;  
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
public 

decimal 
Latitude 
{ 
get !
;! "
set$ '
;' (
}) *
public 

decimal 
	Longitude 
{ 
get "
;" #
set% (
;( )
}* +
} 
public 
class 
Contact 
{ 
public 

string 
	FirstName 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
public 

string 
LastName 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
public 

string 
Email 
{ 
get 
; 
set "
;" #
}$ %
=& '
string( .
.. /
Empty/ 4
;4 5
public 

string 
Phone 
{ 
get 
; 
set "
;" #
}$ %
=& '
string( .
.. /
Empty/ 4
;4 5
public   

string   
Role   
{   
get   
;   
set   !
;  ! "
}  # $
=  % &
string  ' -
.  - .
Empty  . 3
;  3 4
}!! °z
ÇC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Logistics\Shipment\Commands\Create\CreateShipmentCommand.cs
	namespace

 	
GoColis


 
.

 
Shipping

 
.

 
Application

 &
.

& '
	Logistics

' 0
.

0 1
Shipment

1 9
.

9 :
Commands

: B
.

B C
Create

C I
;

I J
public 
record !
CreateShipmentCommand #
:# $
IRequest% -
<- .
ErrorOr. 5
<5 6
Guid6 :
>: ;
>; <
{ 
public 

Guid 
OwnerId 
{ 
get 
; 
set "
;" #
}$ %
public 

bool 
	IsShipper 
{ 
get 
;  
set! $
;$ %
}& '
public 

bool 
WithInsurance 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
FromPickupDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

DateTime 
ToPickupDate  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

PersonCommand 
Shipper  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
public 

PersonCommand 
	Recipient "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
public 

InsuranceCommand 
? 
	Insurance &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
null7 ;
!; <
;< =
public 

PackageCommand 
Package !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
null2 6
!6 7
;7 8
public 

virtual 
Order 

ToShipment #
(# $
Person$ *
person+ 1
,1 2
string3 9
	createdBy: C
)C D
{ 
return 
Order 
. 
Create 
( 
person 
. 
Id 
, 
	IsShipper 
, 
WithInsurance 
, 
FromPickupDate 
, 
ToPickupDate 
, 
	IsShipper   
?   
person   
:    
Shipper  ! (
.  ( )
ToPerson  ) 1
(  1 2
	createdBy  2 ;
)  ; <
,  < =
!!! 
	IsShipper!! 
?!! 
person!! 
:!!  !
Shipper!!" )
.!!) *
ToPerson!!* 2
(!!2 3
	createdBy!!3 <
)!!< =
,!!= >
	Insurance"" 
?"" 
."" 
ToInsurance"" "
(""" #
)""# $
,""$ %
Package## 
.## 
	ToPackage## 
(## 
)## 
,##  
null$$ 
)$$ 
;$$ 
}%% 
}&& 
public(( 
record(( 
PersonCommand(( 
{)) 
public** 

string** 
	FirstName** 
{** 
get** !
;**! "
set**# &
;**& '
}**( )
=*** +
null**, 0
!**0 1
;**1 2
public++ 

string++ 
LastName++ 
{++ 
get++  
;++  !
set++" %
;++% &
}++' (
=++) *
null+++ /
!++/ 0
;++0 1
public,, 

AdressCommand,, 
Adress,, 
{,,  !
get,," %
;,,% &
set,,' *
;,,* +
},,, -
=,,. /
null,,0 4
!,,4 5
;,,5 6
public-- 

ContactCommand-- 
?-- 
Contact-- "
{--# $
get--% (
;--( )
set--* -
;--- .
}--/ 0
=--1 2
null--3 7
!--7 8
;--8 9
public.. 

Person.. 
ToPerson.. 
(.. 
string.. !
	createdBy.." +
)..+ ,
{// 
return00 
Person00 
.00 
Create00 
(00 
Adress00 #
.00# $
ToAdress00$ ,
(00, -
)00- .
,00. /
Contact000 7
?007 8
.008 9
	ToContact009 B
(00B C
)00C D
,00D E
null00F J
)00J K
;00K L
}11 
}22 
public44 
record44 
InsuranceCommand44 
{55 
public66 

string66 
Name66 
{66 
get66 
;66 
set66 !
;66! "
}66# $
=66% &
null66' +
!66+ ,
;66, -
public77 

AdressCommand77 
Adress77 
{77  !
get77" %
;77% &
set77' *
;77* +
}77, -
=77. /
null770 4
!774 5
;775 6
public88 

ContactCommand88 
Contact88 !
{88" #
get88$ '
;88' (
set88) ,
;88, -
}88. /
=880 1
null882 6
!886 7
;887 8
public99 

	Insurance99 
ToInsurance99  
(99  !
)99! "
{:: 
return;; 
	Insurance;; 
.;; 
Create;; 
(;;  
Name;;  $
,;;$ %
Adress;;& ,
.;;, -
ToAdress;;- 5
(;;5 6
);;6 7
,;;7 8
Contact;;9 @
.;;@ A
	ToContact;;A J
(;;J K
);;K L
.;;L M
First;;M R
(;;R S
);;S T
);;T U
;;;U V
}<< 
}== 
public?? 
record?? 
PackageCommand?? 
{@@ 
publicAA 

stringAA 
DescriptionAA 
{AA 
getAA  #
;AA# $
setAA% (
;AA( )
}AA* +
=AA, -
nullAA. 2
!AA2 3
;AA3 4
publicBB 

stringBB 
ExtraInformationBB "
{BB# $
getBB% (
;BB( )
setBB* -
;BB- .
}BB/ 0
=BB1 2
nullBB3 7
!BB7 8
;BB8 9
publicCC 

PackageTypeCC 
TypeCC 
{CC 
getCC !
;CC! "
setCC# &
;CC& '
}CC( )
publicDD 

decimalDD 

TotalPriceDD 
{DD 
getDD  #
;DD# $
setDD% (
;DD( )
}DD* +
publicEE 

FormatCommandEE 
FormatEE 
{EE  !
getEE" %
;EE% &
setEE' *
;EE* +
}EE, -
=EE. /
nullEE0 4
!EE4 5
;EE5 6
publicFF 

IEnumerableFF 
<FF 
ItemCommandFF "
>FF" #
ItemsFF$ )
{FF* +
getFF, /
;FF/ 0
setFF1 4
;FF4 5
}FF6 7
=FF8 9
nullFF: >
!FF> ?
;FF? @
publicII 

PackageII 
	ToPackageII 
(II 
)II 
{JJ 
returnKK 
PackageKK 
.KK 
CreateKK 
(KK 
DescriptionKK )
,KK) *
ExtraInformationKK+ ;
,KK; <
TypeKK= A
,KKA B

TotalPriceKKC M
,KKM N
FormatKKO U
.KKU V
ToFormatKKV ^
(KK^ _
)KK_ `
,KK` a
ItemsKKb g
.KKg h
SelectKKh n
(KKn o
xKKo p
=>KKq s
xKKt u
.KKu v
ToItemKKv |
(KK| }
)KK} ~
)KK~ 
.	KK Ä
ToList
KKÄ Ü
(
KKÜ á
)
KKá à
)
KKà â
;
KKâ ä
}LL 
}MM 
publicOO 
recordOO 
AdressCommandOO 
{PP 
publicQQ 

stringQQ 
StreetNumberQQ 
{QQ  
getQQ! $
;QQ$ %
setQQ& )
;QQ) *
}QQ+ ,
=QQ- .
nullQQ/ 3
!QQ3 4
;QQ4 5
publicRR 

stringRR 
StreetRR 
{RR 
getRR 
;RR 
setRR  #
;RR# $
}RR% &
=RR' (
nullRR) -
!RR- .
;RR. /
publicSS 

stringSS 
AddressLine1SS 
{SS  
getSS! $
;SS$ %
setSS& )
;SS) *
}SS+ ,
=SS- .
nullSS/ 3
!SS3 4
;SS4 5
publicTT 

stringTT 
AddressLine2TT 
{TT  
getTT! $
;TT$ %
setTT& )
;TT) *
}TT+ ,
=TT- .
nullTT/ 3
!TT3 4
;TT4 5
publicUU 

stringUU 
CityUU 
{UU 
getUU 
;UU 
setUU !
;UU! "
}UU# $
=UU% &
nullUU' +
!UU+ ,
;UU, -
publicVV 

stringVV 
ZipCodeVV 
{VV 
getVV 
;VV  
setVV! $
;VV$ %
}VV& '
=VV( )
nullVV* .
!VV. /
;VV/ 0
publicWW 

stringWW 
CountryWW 
{WW 
getWW 
;WW  
setWW! $
;WW$ %
}WW& '
=WW( )
nullWW* .
!WW. /
;WW/ 0
publicXX 

decimalXX 
LatitudeXX 
{XX 
getXX !
;XX! "
setXX# &
;XX& '
}XX( )
publicYY 

decimalYY 
	LongitudeYY 
{YY 
getYY "
;YY" #
setYY$ '
;YY' (
}YY) *
public[[ 

Adress[[ 
ToAdress[[ 
([[ 
)[[ 
{\\ 
return]] 
Adress]] 
.]] 
Create]] 
(]] 
StreetNumber]] )
,]]) *
Street]]+ 1
,]]1 2
AddressLine1]]3 ?
,]]? @
AddressLine2]]A M
,]]M N
City]]O S
,]]S T
ZipCode]]U \
,]]\ ]
Country]]^ e
,]]e f
Latitude]]g o
,]]o p
	Longitude]]q z
)]]z {
;]]{ |
}^^ 
}__ 
publicaa 
recordaa 
FormatCommandaa 
{bb 
publiccc 

decimalcc 
Weightcc 
{cc 
getcc 
;cc  
setcc! $
;cc$ %
}cc& '
publicdd 

decimaldd 
Volumedd 
{dd 
getdd 
;dd  
setdd! $
;dd$ %
}dd& '
publicee 

decimalee 
Heightee 
{ee 
getee 
;ee  
setee! $
;ee$ %
}ee& '
publicff 

decimalff 
Lengthff 
{ff 
getff 
;ff  
setff! $
;ff$ %
}ff& '
publicgg 

decimalgg 
Widthgg 
{gg 
getgg 
;gg 
setgg  #
;gg# $
}gg% &
publicii 

Formatii 
ToFormatii 
(ii 
)ii 
{jj 
returnkk 
newkk 
Formatkk 
{ll 	
Weightmm 
=mm 
Weightmm 
,mm 
Volumenn 
=nn 
Volumenn 
,nn 
Heightoo 
=oo 
Heightoo 
,oo 
Lengthpp 
=pp 
Lengthpp 
,pp 
Widthqq 
=qq 
Widthqq 
}rr 	
;rr	 

}ss 
}tt 
publicvv 
recordvv 
ItemCommandvv 
{ww 
publicxx 

stringxx 
Namexx 
{xx 
getxx 
;xx 
setxx !
;xx! "
}xx# $
=xx% &
nullxx' +
!xx+ ,
;xx, -
publicyy 

stringyy 
Descriptionyy 
{yy 
getyy  #
;yy# $
setyy% (
;yy( )
}yy* +
=yy, -
nullyy. 2
!yy2 3
;yy3 4
publiczz 

decimalzz 
Pricezz 
{zz 
getzz 
;zz 
setzz  #
;zz# $
}zz% &
public{{ 

int{{ 
Quantity{{ 
{{{ 
get{{ 
;{{ 
set{{ "
;{{" #
}{{$ %
public}} 

Item}} 
ToItem}} 
(}} 
)}} 
{~~ 
return 
Item 
. 
Create 
( 
Name 
,  
Description! ,
,, -
Price. 3
,3 4
Quantity5 =
)= >
;> ?
}
ÄÄ 
}ÅÅ 
publicÉÉ 
record
ÉÉ 
ContactCommand
ÉÉ 
{ÑÑ 
public
ÖÖ 

string
ÖÖ 
	FirstName
ÖÖ 
{
ÖÖ 
get
ÖÖ !
;
ÖÖ! "
set
ÖÖ# &
;
ÖÖ& '
}
ÖÖ( )
=
ÖÖ* +
null
ÖÖ, 0
!
ÖÖ0 1
;
ÖÖ1 2
public
ÜÜ 

string
ÜÜ 
LastName
ÜÜ 
{
ÜÜ 
get
ÜÜ  
;
ÜÜ  !
set
ÜÜ" %
;
ÜÜ% &
}
ÜÜ' (
=
ÜÜ) *
null
ÜÜ+ /
!
ÜÜ/ 0
;
ÜÜ0 1
public
áá 

string
áá 
Email
áá 
{
áá 
get
áá 
;
áá 
set
áá "
;
áá" #
}
áá$ %
=
áá& '
null
áá( ,
!
áá, -
;
áá- .
public
àà 

string
àà 
Phone
àà 
{
àà 
get
àà 
;
àà 
set
àà "
;
àà" #
}
àà$ %
=
àà& '
null
àà( ,
!
àà, -
;
àà- .
public
ââ 

string
ââ 
Role
ââ 
{
ââ 
get
ââ 
;
ââ 
set
ââ !
;
ââ! "
}
ââ# $
=
ââ% &
null
ââ' +
!
ââ+ ,
;
ââ, -
public
ãã 

List
ãã 
<
ãã 
Contact
ãã 
>
ãã 
	ToContact
ãã "
(
ãã" #
)
ãã# $
{
åå 
return
çç 
new
çç 
List
çç 
<
çç 
Contact
çç 
>
çç  
{
éé 	
Contact
èè 
.
èè 
Create
èè 
(
èè 
	FirstName
èè $
,
èè$ %
LastName
èè& .
,
èè. /
Email
èè0 5
,
èè5 6
Phone
èè7 <
,
èè< =
Role
èè> B
)
èèB C
}
êê 	
;
êê	 

}
ëë 
}íí é%
ÇC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Logistics\Shipment\Commands\Create\CreateShipmentHandler.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
	Logistics' 0
.0 1
Shipment1 9
.9 :
Commands: B
.B C
CreateC I
;I J
public

 
class

 !
CreateShipmentHandler

 "
:

# $
IRequestHandler

% 4
<

4 5!
CreateShipmentCommand

5 J
,

J K
ErrorOr

L S
<

S T
Guid

T X
>

X Y
>

Y Z
{ 
private 
readonly 
IShipmentRepository ("
_pickupPointRepository) ?
;? @
private 
readonly 
IPersonRepository &
_personRepository' 8
;8 9
private 
readonly 
IMapper 
_mapper $
;$ %
private 
readonly 

IValidator 
<  !
CreateShipmentCommand  5
>5 6

_validator7 A
;A B
public 
!
CreateShipmentHandler  
(  !
IShipmentRepository! 4!
pickupPointRepository5 J
,J K
IPersonRepositoryL ]
personRepository^ n
,n o

IValidatorp z
<z {"
CreateShipmentCommand	{ ê
>
ê ë
	validator
í õ
,
õ ú
IMapper
ù §
mapper
• ´
)
´ ¨
{ "
_pickupPointRepository 
=  !
pickupPointRepository! 6
;6 7

_validator 
= 
	validator 
; 
_mapper 
= 
mapper 
; 
_personRepository 
= 
personRepository +
;+ ,
} 
public 

async 
Task 
< 
ErrorOr 
< 
Guid "
>" #
># $
Handle% +
(+ ,!
CreateShipmentCommand, A
requestB I
,I J
CancellationTokenK \
cancellationToken] n
)n o
{ 
var 

validation 
= 

_validator #
.# $
Validate$ ,
(, -
request- 4
)4 5
;5 6
if 

( 
! 

validation 
. 
IsValid 
)  
return 
ErrorOr 
. 
Failure "
<" #
Guid# '
>' (
(( )
Error) .
.. /

Validation/ 9
(9 :
$str: O
,O P

validationQ [
?[ \
.\ ]
Errors] c
?c d
.d e
FirstOrDefaulte s
(s t
)t u
?u v
.v w
ErrorMessage	w É
??
Ñ Ü
$str
á ©
)
© ™
)
™ ´
;
´ ¨
var 
person 
= 
await 
_personRepository ,
., -
GetConnectedPerson- ?
(? @
request@ G
.G H
OwnerIdH O
)O P
;P Q
var!! 
shipment!! 
=!! 
_mapper!! 
.!! 
Map!! "
<!!" #
Domain!!# )
.!!) *
	Logistics!!* 3
.!!3 4
Order!!4 9
.!!9 :
Order!!: ?
>!!? @
(!!@ A
(!!A B
request!!B I
,!!I J
person!!K Q
,!!Q R

UserHelper!!S ]
.!!] ^
GetUser!!^ e
(!!e f
)!!f g
)!!g h
)!!h i
;!!i j
try## 
{$$ 	
await%% "
_pickupPointRepository%% (
.%%( )
AddAsync%%) 1
(%%1 2
shipment%%2 :
)%%: ;
;%%; <
}&& 	
catch'' 
('' 
	Exception'' 
ex'' 
)'' 
{(( 	
return)) 
ErrorOr)) 
.)) 
Failure)) "
<))" #
Guid))# '
>))' (
())( )
Error))) .
.)). /

Unexpected))/ 9
())9 :
$str)): O
,))O P
ex))Q S
.))S T
Message))T [
)))[ \
)))\ ]
;))] ^
}** 	
return,, 
shipment,, 
.,, 
Id,, 
;,, 
}-- 
}.. Ë
ÑC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Logistics\Shipment\Commands\Create\CreateShipmentValidator.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
	Logistics' 0
.0 1
Shipment1 9
.9 :
Commands: B
.B C
CreateC I
;I J
public 
class #
CreateShipmentValidator $
:% &
AbstractValidator' 8
<8 9!
CreateShipmentCommand9 N
>N O
{ 
public 
#
CreateShipmentValidator "
(" #
)# $
{ 
}

 
} §
{C:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Logistics\Shipment\Mappings\ShipmentMappingConfig.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
	Logistics' 0
.0 1
Shipment1 9
.9 :
Mappings: B
;B C
public

 
class

 !
ShipmentMappingConfig

 "
:

# $
	IRegister

% .
{ 
public 

void 
Register 
( 
TypeAdapterConfig *
config+ 1
)1 2
{ 
config 
. 
	NewConfig 
< 
ENTITY 
.  
Order  %
,% &
COMMAND' .
.. /
GetShipmentResult/ @
>@ A
(A B
)B C
; 
config 
. 
	NewConfig 
< 
( !
CreateShipmentCommand /
Shipment0 8
,8 9
Person: @
personA G
,G H
stringI O
	CreatedbyP Y
)Y Z
,Z [
ENTITY[ a
.a b
Orderb g
>i j
(k l
)l m
. 
ConstructUsing 
( 
src 
=> !
src" %
.% &
Shipment& .
.. /

ToShipment/ 9
(9 :
src: =
.= >
person> D
,D E
srcF I
.I J
	CreatedbyJ S
)S T
)T U
; 
} 
} ˚	
yC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Logistics\Shipment\Queries\Get\GetShipmentQuery.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
	Logistics' 0
.0 1
Shipment1 9
.9 :
Queries: A
.A B
GetB E
;E F
public 
class 
GetShipmentQuery 
: 
IRequest  (
<( )
ErrorOr) 0
<0 1
GetShipmentResult1 B
>B C
>C D
{ 
public 

GetShipmentQuery 
( 
Guid  
id! #
,# $
Guid% )
ownerId* 1
)1 2
{		 
Id

 

=

 
id

 
;

 
OwnerId 
= 
ownerId 
; 
} 
public 

Guid 
Id 
{ 
get 
; 
set 
; 
}  
public 

Guid 
OwnerId 
{ 
get 
; 
set "
;" #
}$ %
} ¨
ÄC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Logistics\Shipment\Queries\Get\GetShipmentQueryHandler.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
	Logistics' 0
.0 1
Shipment1 9
.9 :
Queries: A
.A B
GetB E
;E F
public

 
class

 #
GetShipmentQueryHandler

 $
:

% &
IRequestHandler

' 6
<

6 7
GetShipmentQuery

7 G
,

G H
ErrorOr

I P
<

P Q
GetShipmentResult

Q b
>

b c
>

c d
{ 
private 
readonly 
IShipmentRepository (
_repository) 4
;4 5
private 
readonly 
IMapper 
_mapper $
;$ %
public 
#
GetShipmentQueryHandler "
(" #
IShipmentRepository# 6!
pickupPointRepository7 L
,L M
IMapperN U
mapperV \
)\ ]
{ 
_repository 
= !
pickupPointRepository +
;+ ,
_mapper 
= 
mapper 
; 
} 
public 

async 
Task 
< 
ErrorOr 
< 
GetShipmentResult /
>/ 0
>0 1
Handle2 8
(8 9
GetShipmentQuery9 I
requestJ Q
,Q R
CancellationTokenS d
cancellationTokene v
)v w
{ 
var 
model 
= 
await 
_repository %
.% &
GetAsync& .
(. /
request/ 6
.6 7
Id7 9
)9 :
;: ;
if 

( 
model 
is 
null 
) 
return 
ErrorOr 
. 
Failure "
<" #
GetShipmentResult# 4
>4 5
(5 6
Error6 ;
.; <
NotFound< D
(D E
$strE X
,X Y
$"Z \
$str\ x
{x y
request	y Ä
.
Ä Å
Id
Å É
}
É Ñ
$str
Ñ î
"
î ï
)
ï ñ
)
ñ ó
;
ó ò
var 
	visibiliy 
= 
model 
. 
CheckVisibility -
(- .
request. 5
.5 6
OwnerId6 =
)= >
;> ?
if 

( 
	visibiliy 
is 
not 
null !
)! "
return 
ErrorOr 
. 
Failure #
<# $
GetShipmentResult$ 5
>5 6
(6 7
	visibiliy7 @
)@ A
;A B
return   
_mapper   
.   
Map   
<   
GetShipmentResult   ,
>  , -
(  - .
model  . 3
)  3 4
;  4 5
}!! 
}"" ò[
zC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Application\Logistics\Shipment\Queries\Get\GetShipmentResult.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Application &
.& '
	Logistics' 0
.0 1
Shipment1 9
.9 :
Queries: A
.A B
GetB E
;E F
public 
record 
GetShipmentResult 
{ 
public 

Guid 
Id 
{ 
get 
; 
set 
; 
}  
public		 

bool		 
IsValidated		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 

bool

 
IsDelivered

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 

bool 
IsDraft 
{ 
get 
; 
set "
;" #
}$ %
public 

bool 
	IsShipper 
{ 
get 
;  
set! $
;$ %
}& '
public 

bool 
WithInsurance 
{ 
get  #
;# $
set% (
;( )
}* +
public 

DateTime 
FromPickupDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

DateTime 
ToPickupDate  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

PersonResponse 
Shipper !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
null2 6
!6 7
;7 8
public 

PersonResponse 
	Recipient #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
null4 8
!8 9
;9 :
public 

InsuranceResponse 
? 
	Insurance '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 

PackageResponse 
Package "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
} 
public 
record 
InsuranceResponse 
{ 
public 

Guid 
Id 
{ 
get 
; 
set 
; 
}  
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
=% &
string' -
.- .
Empty. 3
;3 4
public 

AdressResponse 
? 
Adress !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

ContactResponse 
? 
Contact #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
public 
record 
PackageResponse 
{ 
public 

Guid 
Id 
{ 
get 
; 
set 
; 
}  
public   

string   
Description   
{   
get    #
;  # $
set  % (
;  ( )
}  * +
=  , -
string  . 4
.  4 5
Empty  5 :
;  : ;
public!! 

string!! 
ExtraInformation!! "
{!!# $
get!!% (
;!!( )
set!!* -
;!!- .
}!!/ 0
=!!1 2
string!!3 9
.!!9 :
Empty!!: ?
;!!? @
public"" 

PackageType"" 
Type"" 
{"" 
get"" !
;""! "
set""# &
;""& '
}""( )
public## 

decimal## 

TotalPrice## 
{## 
get##  #
;### $
set##% (
;##( )
}##* +
public$$ 

FormatResponse$$ 
Format$$  
{$$! "
get$$# &
;$$& '
set$$( +
;$$+ ,
}$$- .
=$$/ 0
null$$1 5
!$$5 6
;$$6 7
public%% 

List%% 
<%% 
ItemResponse%% 
>%% 
Items%% #
{%%$ %
get%%& )
;%%) *
set%%+ .
;%%. /
}%%0 1
=%%2 3
new%%4 7
(%%7 8
)%%8 9
;%%9 :
}&& 
public(( 
record(( 
PersonResponse(( 
{(( 
public)) 

Guid)) 
Id)) 
{)) 
get)) 
;)) 
set)) 
;)) 
}))  
public** 

string** 
	FirstName** 
{** 
get** !
;**! "
set**# &
;**& '
}**( )
=*** +
string**, 2
.**2 3
Empty**3 8
;**8 9
public++ 

string++ 
LastName++ 
{++ 
get++  
;++  !
set++" %
;++% &
}++' (
=++) *
string+++ 1
.++1 2
Empty++2 7
;++7 8
public,, 

AdressResponse,, 
Adress,,  
{,,! "
get,,# &
;,,& '
set,,( +
;,,+ ,
},,- .
=,,/ 0
null,,1 5
!,,5 6
;,,6 7
}-- 
public// 
record// 
AdressResponse// 
{// 
public00 

Guid00 
Id00 
{00 
get00 
;00 
set00 
;00 
}00  
public11 

string11 
StreetNumber11 
{11  
get11! $
;11$ %
set11& )
;11) *
}11+ ,
=11- .
string11/ 5
.115 6
Empty116 ;
;11; <
public22 

string22 
Street22 
{22 
get22 
;22 
set22  #
;22# $
}22% &
=22' (
string22) /
.22/ 0
Empty220 5
;225 6
public33 

string33 
AddressLine133 
{33  
get33! $
;33$ %
set33& )
;33) *
}33+ ,
=33- .
string33/ 5
.335 6
Empty336 ;
;33; <
public44 

string44 
AddressLine244 
{44  
get44! $
;44$ %
set44& )
;44) *
}44+ ,
=44- .
string44/ 5
.445 6
Empty446 ;
;44; <
public55 

string55 
City55 
{55 
get55 
;55 
set55 !
;55! "
}55# $
=55% &
string55' -
.55- .
Empty55. 3
;553 4
public66 

string66 
ZipCode66 
{66 
get66 
;66  
set66! $
;66$ %
}66& '
=66( )
string66* 0
.660 1
Empty661 6
;666 7
public77 

string77 
Country77 
{77 
get77 
;77  
set77! $
;77$ %
}77& '
=77( )
string77* 0
.770 1
Empty771 6
;776 7
public88 

decimal88 
Latitude88 
{88 
get88 !
;88! "
set88# &
;88& '
}88( )
public99 

decimal99 
	Longitude99 
{99 
get99 "
;99" #
set99$ '
;99' (
}99) *
}:: 
public== 
record== 
FormatResponse== 
{== 
public>> 

Guid>> 
Id>> 
{>> 
get>> 
;>> 
set>> 
;>> 
}>>  
public?? 

decimal?? 
Weight?? 
{?? 
get?? 
;??  
set??! $
;??$ %
}??& '
public@@ 

decimal@@ 
Volume@@ 
{@@ 
get@@ 
;@@  
set@@! $
;@@$ %
}@@& '
publicAA 

decimalAA 
HeightAA 
{AA 
getAA 
;AA  
setAA! $
;AA$ %
}AA& '
publicBB 

decimalBB 
LengthBB 
{BB 
getBB 
;BB  
setBB! $
;BB$ %
}BB& '
publicCC 

decimalCC 
WidthCC 
{CC 
getCC 
;CC 
setCC  #
;CC# $
}CC% &
}DD 
publicFF 
recordFF 
ItemResponseFF 
{FF 
publicGG 

GuidGG 
IdGG 
{GG 
getGG 
;GG 
setGG 
;GG 
}GG  
publicHH 

stringHH 
NameHH 
{HH 
getHH 
;HH 
setHH !
;HH! "
}HH# $
=HH% &
stringHH' -
.HH- .
EmptyHH. 3
;HH3 4
publicII 

stringII 
DescriptionII 
{II 
getII  #
;II# $
setII% (
;II( )
}II* +
=II, -
stringII. 4
.II4 5
EmptyII5 :
;II: ;
publicJJ 

decimalJJ 
PriceJJ 
{JJ 
getJJ 
;JJ 
setJJ  #
;JJ# $
}JJ% &
publicKK 

intKK 
QuantityKK 
{KK 
getKK 
;KK 
setKK "
;KK" #
}KK$ %
}LL 
publicNN 
recordNN 
ContactResponseNN 
{OO 
publicPP 

GuidPP 
IdPP 
{PP 
getPP 
;PP 
setPP 
;PP 
}PP  
publicQQ 

stringQQ 
	FirstNameQQ 
{QQ 
getQQ !
;QQ! "
setQQ# &
;QQ& '
}QQ( )
=QQ* +
stringQQ, 2
.QQ2 3
EmptyQQ3 8
;QQ8 9
publicRR 

stringRR 
LastNameRR 
{RR 
getRR  
;RR  !
setRR" %
;RR% &
}RR' (
=RR) *
stringRR+ 1
.RR1 2
EmptyRR2 7
;RR7 8
publicSS 

stringSS 
EmailSS 
{SS 
getSS 
;SS 
setSS "
;SS" #
}SS$ %
=SS& '
stringSS( .
.SS. /
EmptySS/ 4
;SS4 5
publicTT 

stringTT 
PhoneTT 
{TT 
getTT 
;TT 
setTT "
;TT" #
}TT$ %
=TT& '
stringTT( .
.TT. /
EmptyTT/ 4
;TT4 5
publicUU 

stringUU 
RoleUU 
{UU 
getUU 
;UU 
setUU !
;UU! "
}UU# $
=UU% &
stringUU' -
.UU- .
EmptyUU. 3
;UU3 4
}VV 