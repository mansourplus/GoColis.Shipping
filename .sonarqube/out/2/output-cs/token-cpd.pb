‘
ÇC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Authentication\Configurations\PermissionConfiguration.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
Authentication* 8
.8 9
Configurations9 G
;G H
public 
class #
PermissionConfiguration %
:& '$
IEntityTypeConfiguration( @
<@ A

PermissionA K
>K L
{		 
public

 

void

 
	Configure

 
(

 
EntityTypeBuilder

 +
<

+ ,

Permission

, 6
>

6 7
builder

8 ?
)

? @
{ $
ConfigurePermissionTable  
(  !
builder! (
)( )
;) *!
ConfigureRelationShip 
( 
builder %
)% &
;& '
} 
private 
static 
void !
ConfigureRelationShip -
(- .
EntityTypeBuilder. ?
<? @

Permission@ J
>J K
builderL S
)S T
{ 
builder 
. 
HasMany 
( 
x 
=> 
x 
. 
Roles "
)" #
. 
WithMany 
( 
x 
=> 
x 
. 
Permissions &
)& '
. 
UsingEntity 
< 
RolePermission '
>' (
(( )
)) *
. 
ToTable 
( 
$str &
)& '
; 
} 
private 
static 
void $
ConfigurePermissionTable 0
(0 1
EntityTypeBuilder1 B
<B C

PermissionC M
>M N
builderO V
)V W
{ 
builder 
. 
ToTable 
( 
$str %
)% &
;& '
builder 
. 
HasKey 
( 
x 
=> 
x 
. 
Id  
)  !
; 
builder!! 
.!! 
Property!! 
(!! 
x!! 
=>!! 
x!! 
.!!  
Id!!  "
)!!" #
."" 
ValueGeneratedNever""  
(""  !
)""! "
;""" #
builder$$ 
.$$ 
Property$$ 
($$ 
x$$ 
=>$$ 
x$$ 
.$$  
Name$$  $
)$$$ %
.%% 
HasMaxLength%% 
(%% 
$num%% 
)%% 
;%% 
var'' 
permissions'' 
='' 
Enum'' 
.'' 
	GetValues'' (
<''( )
	Constants'') 2
.''2 3
PermissionConstants''3 F
>''F G
(''G H
)''H I
.(( 
Select(( 
((( 
x(( 
=>(( 
new(( 

Permission(( '
{)) 
Id** 
=** 
(** 
int** 
)** 
x** 
,** 
Name++ 
=++ 
x++ 
.++ 
ToString++ !
(++! "
)++" #
},, 
),, 
;,, 
builder.. 
... 
HasData.. 
(.. 
permissions.. #
)..# $
;..$ %
}// 
}00 ˘
|C:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Authentication\Configurations\RoleConfiguration.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
Authentication* 8
.8 9
Configurations9 G
;G H
public 
class 
RoleConfiguration 
:  $
IEntityTypeConfiguration! 9
<9 :
Role: >
>> ?
{		 
public

 

void

 
	Configure

 
(

 
EntityTypeBuilder

 +
<

+ ,
Role

, 0
>

0 1
builder

2 9
)

9 :
{ 
builder 
. 
HasMany 
( 
x 
=> 
x 
. 
Permissions *
)* +
. 
WithMany 
( 
x 
=> 
x 
. 
Roles "
)" #
. 
UsingEntity 
< 
RolePermission '
>' (
(( )
)) *
. 
ToTable 
( 
$str &
)& '
;' (
builder 
. 
HasData 
( 
Roles 
. 
Carrier %
)% &
;& '
builder 
. 
HasData 
( 
Roles 
. 
Client $
)$ %
;% &
builder 
. 
HasData 
( 
Roles 
. 

SuperAdmin (
)( )
;) *
} 
} —
ÜC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Authentication\Configurations\RolePermissionConfiguration.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
Authentication* 8
.8 9
Configurations9 G
;G H
public 
class '
RolePermissionConfiguration (
:) *$
IEntityTypeConfiguration+ C
<C D
RolePermissionD R
>R S
{		 
public

 

void

 
	Configure

 
(

 
EntityTypeBuilder

 +
<

+ ,
RolePermission

, :
>

: ;
builder

< C
)

C D
{ 
builder 
. 
ToTable 
( 
$str )
)) *
;* +
builder 
. 
HasData 
( $
RolePermissionsConstants 0
.0 1!
SuperAdminPermissions1 F
)F G
;G H
builder 
. 
HasData 
( $
RolePermissionsConstants 0
.0 1
ClientPermissions1 B
)B C
;C D
builder 
. 
HasData 
( $
RolePermissionsConstants 0
.0 1
CarrierPermissions1 C
)C D
;D E
} 
} Ë
yC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Authentication\Constants\PermissionConstants.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
Authentication* 8
.8 9
	Constants9 B
;B C
public 
enum 
PermissionConstants 
{ 
ReadShipping 
= 
$num 
, 
CreateShipping 
= 
$num 
, 
UpdateShipping 
= 
$num 
, 
DeleteShipping		 
=		 
$num		 
,		 
ReadRelayPoint 
= 
$num 
, 
CreateRelayPoint 
= 
$num 
, 
UpdateRelayPoint 
= 
$num 
, 
DeleteRelayPoint 
= 
$num 
, 
ReadCarrier 
= 
$num 
, 
CreateCarrier 
= 
$num 
, 
UpdateCarrier 
= 
$num 
, 
DeleteCarrier 
= 
$num 
, 

ReadPerson 
= 
$num 
, 
CreatePerson 
= 
$num 
, 
UpdatePerson 
= 
$num 
, 
DeletePerson 
= 
$num 
, 
} ù9
sC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Authentication\Constants\RoleConstants.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
Authentication* 8
.8 9
	Constants9 B
;B C
public 
static 
class 
RoleConstants !
{ 
public 

static 
readonly 
Role 
Client  &
=' (
new) ,
(, -
)- .
{		 
Id

 

=

 
new

 
Guid

 
(

 
$str

 <
)

< =
,

= >
Name 
= 
Application 
. 
Authentication )
.) *
	Constants* 3
.3 4
Roles4 9
.9 :
Client: @
,@ A
NormalizedName 
= 
Application $
.$ %
Authentication% 3
.3 4
	Constants4 =
.= >
Roles> C
.C D
ClientD J
.J K
ToUpperK R
(R S
)S T
,T U
} 
; 
public 

static 
readonly 
Role 
Carrier  '
=( )
new* -
(. /
)/ 0
{ 
Id 

= 
new 
Guid 
( 
$str <
)< =
,= >
Name 
= 
Application 
. 
Authentication )
.) *
	Constants* 3
.3 4
Roles4 9
.9 :
Carrier: A
,A B
NormalizedName 
= 
Application $
.$ %
Authentication% 3
.3 4
	Constants4 =
.= >
Roles> C
.C D
CarrierD K
.K L
ToUpperL S
(S T
)T U
,U V
} 
; 
public 

static 
readonly 
Role 

SuperAdmin  *
=+ ,
new- 0
(1 2
)2 3
{ 
Id 

= 
new 
Guid 
( 
$str <
)< =
,= >
Name 
= 
Application 
. 
Authentication )
.) *
	Constants* 3
.3 4
Roles4 9
.9 :

SuperAdmin: D
,D E
NormalizedName 
= 
Application $
.$ %
Authentication% 3
.3 4
	Constants4 =
.= >
Roles> C
.C D

SuperAdminD N
.N O
ToUpperO V
(V W
)W X
,X Y
} 
; 
public 

static 
readonly 
ImmutableArray )
<) *

Permission* 4
>4 5
ClientPermissions6 G
=H I
newJ M
(M N
)N O
{ 	 
CreateRolePermission    
(    !
PermissionConstants  " 5
.  5 6
CreateShipping  6 D
)  D E
,  E F 
CreateRolePermission!!  
(!!  !
PermissionConstants!!" 5
.!!5 6
UpdateShipping!!6 D
)!!D E
,!!E F 
CreateRolePermission""  
(""  !
PermissionConstants""" 5
.""5 6
DeleteShipping""6 D
)""D E
,""E F 
CreateRolePermission##  
(##  !
PermissionConstants##" 5
.##5 6
ReadShipping##6 B
)##B C
,##C D 
CreateRolePermission%%  
(%%  !
PermissionConstants%%" 5
.%%5 6
ReadCarrier%%6 A
)%%A B
,%%B C 
CreateRolePermission&&  
(&&  !
PermissionConstants&&" 5
.&&5 6
ReadRelayPoint&&6 D
)&&D E
,&&E F 
CreateRolePermission''  
(''  !
PermissionConstants''" 5
.''5 6

ReadPerson''6 @
)''@ A
})) 	
;))	 

public++ 

static++ 
readonly++ 
ImmutableArray++ )
<++) *

Permission++* 4
>++4 5
CarrierPermissions++6 H
=++I J
new++K N
(++N O
)++O P
{,, 	 
CreateRolePermission--  
(--  !
PermissionConstants--" 5
.--5 6
ReadShipping--6 B
)--B C
,--C D 
CreateRolePermission//  
(//  !
PermissionConstants//" 5
.//5 6
ReadCarrier//6 A
)//A B
,//B C 
CreateRolePermission00  
(00  !
PermissionConstants00" 5
.005 6
CreateCarrier006 C
)00C D
,00D E 
CreateRolePermission11  
(11  !
PermissionConstants11" 5
.115 6
UpdateCarrier116 C
)11C D
,11D E 
CreateRolePermission22  
(22  !
PermissionConstants22" 5
.225 6
DeleteCarrier226 C
)22C D
,22D E 
CreateRolePermission44  
(44  !
PermissionConstants44" 5
.445 6
ReadRelayPoint446 D
)44D E
,44E F 
CreateRolePermission55  
(55  !
PermissionConstants55" 5
.555 6
CreateRelayPoint556 F
)55F G
,55G H 
CreateRolePermission66  
(66  !
PermissionConstants66" 5
.665 6
UpdateRelayPoint666 F
)66F G
,66G H 
CreateRolePermission77  
(77  !
PermissionConstants77" 5
.775 6
DeleteRelayPoint776 F
)77F G
,77G H 
CreateRolePermission99  
(99  !
PermissionConstants99" 5
.995 6

ReadPerson996 @
)99@ A
};; 	
;;;	 

public== 

static== 
readonly== 
ImmutableList== (
<==( )

Permission==) 3
>==3 4!
SuperAdminPermissions==5 J
===K L
Enum==M Q
.==Q R
	GetValues==R [
<==[ \
PermissionConstants==\ o
>==o p
(==p q
)==q r
.==r s
Select==s y
(==y z!
CreateRolePermission	==z é
)
==é è
.
==è ê
ToImmutableList
==ê ü
(
==ü †
)
==† °
;
==° ¢
private@@ 
static@@ 

Permission@@  
CreateRolePermission@@ 2
(@@2 3
PermissionConstants@@4 G

permission@@H R
)@@R S
{AA 
returnBB 
newBB 

PermissionBB 
(BB 
)BB 
{CC 	
IdDD 
=DD 
(DD 
intDD 
)DD 

permissionDD  
,DD  !
NameEE 
=EE 

permissionEE 
.EE 
ToStringEE &
(EE& '
)EE' (
}FF 	
;FF	 

}GG 
}HH ì1
~C:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Authentication\Constants\RolePermissionsConstants.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
Authentication* 8
.8 9
	Constants9 B
;B C
public 
static 
class $
RolePermissionsConstants ,
{ 
public 

static 
readonly 
ImmutableArray )
<) *
RolePermission* 8
>8 9
ClientPermissions: K
=L M
newN Q
(Q R
)R S
{		 	 
CreateRolePermission

  
(

  !
RoleConstants

! .
.

. /
Client

/ 5
,

5 6
PermissionConstants

7 J
.

J K
CreateShipping

K Y
)

Y Z
,

Z [ 
CreateRolePermission  
(  !
RoleConstants! .
.. /
Client/ 5
,5 6
PermissionConstants7 J
.J K
UpdateShippingK Y
)Y Z
,Z [ 
CreateRolePermission  
(  !
RoleConstants! .
.. /
Client/ 5
,5 6
PermissionConstants7 J
.J K
DeleteShippingK Y
)Y Z
,Z [ 
CreateRolePermission  
(  !
RoleConstants! .
.. /
Client/ 5
,5 6
PermissionConstants7 J
.J K
ReadShippingK W
)W X
,X Y 
CreateRolePermission  
(  !
RoleConstants! .
.. /
Client/ 5
,5 6
PermissionConstants7 J
.J K
ReadCarrierK V
)V W
,W X 
CreateRolePermission  
(  !
RoleConstants! .
.. /
Client/ 5
,5 6
PermissionConstants7 J
.J K
ReadRelayPointK Y
)Y Z
,Z [ 
CreateRolePermission  
(  !
RoleConstants! .
.. /
Client/ 5
,5 6
PermissionConstants7 J
.J K

ReadPersonK U
)U V
} 	
;	 

public 

static 
readonly 
ImmutableArray )
<) *
RolePermission* 8
>8 9
CarrierPermissions: L
=M N
newO R
(R S
)S T
{ 	 
CreateRolePermission  
(  !
RoleConstants! .
.. /
Carrier/ 6
,6 7
PermissionConstants8 K
.K L
ReadShippingL X
)X Y
,Y Z 
CreateRolePermission  
(  !
RoleConstants! .
.. /
Carrier/ 6
,6 7
PermissionConstants8 K
.K L
ReadCarrierL W
)W X
,X Y 
CreateRolePermission  
(  !
RoleConstants! .
.. /
Carrier/ 6
,6 7
PermissionConstants8 K
.K L
CreateCarrierL Y
)Y Z
,Z [ 
CreateRolePermission  
(  !
RoleConstants! .
.. /
Carrier/ 6
,6 7
PermissionConstants8 K
.K L
UpdateCarrierL Y
)Y Z
,Z [ 
CreateRolePermission  
(  !
RoleConstants! .
.. /
Carrier/ 6
,6 7
PermissionConstants8 K
.K L
DeleteCarrierL Y
)Y Z
,Z [ 
CreateRolePermission  
(  !
RoleConstants! .
.. /
Carrier/ 6
,6 7
PermissionConstants8 K
.K L
ReadRelayPointL Z
)Z [
,[ \ 
CreateRolePermission  
(  !
RoleConstants! .
.. /
Carrier/ 6
,6 7
PermissionConstants8 K
.K L
CreateRelayPointL \
)\ ]
,] ^ 
CreateRolePermission    
(    !
RoleConstants  ! .
.  . /
Carrier  / 6
,  6 7
PermissionConstants  8 K
.  K L
UpdateRelayPoint  L \
)  \ ]
,  ] ^ 
CreateRolePermission!!  
(!!  !
RoleConstants!!! .
.!!. /
Carrier!!/ 6
,!!6 7
PermissionConstants!!8 K
.!!K L
DeleteRelayPoint!!L \
)!!\ ]
,!!] ^ 
CreateRolePermission##  
(##  !
RoleConstants##! .
.##. /
Carrier##/ 6
,##6 7
PermissionConstants##8 K
.##K L

ReadPerson##L V
)##V W
}%% 	
;%%	 

public'' 

static'' 
readonly'' 
ImmutableList'' (
<''( )
RolePermission'') 7
>''7 8!
SuperAdminPermissions''9 N
=''O P
Enum''Q U
.''U V
	GetValues''V _
<''_ `
PermissionConstants''` s
>''s t
(''t u
)''u v
.''v w
Select''w }
(''} ~
x''~ 
=>	'' Å"
CreateRolePermission
''Ç ñ
(
''ñ ó
RoleConstants
''ó §
.
''§ •

SuperAdmin
''• Ø
,
''Ø ∞
x
''∞ ±
)
''± ≤
)
''≤ ≥
.
''≥ ¥
ToImmutableList
''¥ √
(
''√ ƒ
)
''ƒ ≈
;
''≈ ∆
private** 
static** 
RolePermission** ! 
CreateRolePermission**" 6
(**6 7
Role**7 ;
role**< @
,**@ A
PermissionConstants**A T

permission**U _
)**_ `
{++ 
return,, 
new,, 
RolePermission,, !
(,,! "
),," #
{-- 	
RoleId.. 
=.. 
role.. 
... 
Id.. 
,.. 
PermissionId// 
=// 
(// 
int// 
)//  

permission//  *
}00 	
;00	 

}11 
}22 ¿

nC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Authentication\Options\JwtOptions.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
Authentication* 8
.8 9
Options9 @
;@ A
public 
class 

JwtOptions 
{ 
public 

string 
Secret 
{ 
get 
; 
set  #
;# $
}% &
=' (
string) /
./ 0
Empty0 5
;5 6
public 

List 
< 
string 
> 
ValidAudiences &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
new7 :
(: ;
); <
;< =
public 

string 
ValidIssuer 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
string. 4
.4 5
Empty5 :
;: ;
public 

double 
ExpiryMinutes 
{  !
get" %
;% &
set' *
;* +
}, -
}		 ñ*
tC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Authentication\Repositories\JwtProvider.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
Authentication* 8
.8 9
Repositories9 E
;E F
public 
class 
JwtProvider 
: 

Repository %
,% &
IJwtProvider' 3
{ 
private 
readonly 
IOptions 
< 

JwtOptions (
>( )
_jwtOptions* 5
;5 6
public 

JwtProvider 
( 
DatabaseContext &
	dbContext' 0
,0 1
IOptions2 :
<: ;

JwtOptions; E
>E F

jwtOptionsG Q
)Q R
:S T
baseU Y
(Y Z
	dbContextZ c
)c d
{ 
_jwtOptions 
= 

jwtOptions 
;  
} 
public 

Task 
< 
string 
> 
Generate  
(  !
User! %
user& *
,* +
IEnumerable, 7
<7 8
string8 >
>> ?
roles@ E
)E F
{ 
var 

authClaims 
= 
new 
List !
<! "
Claim" '
>' (
{ 
new 
Claim 
( #
JwtRegisteredClaimNames 5
.5 6
Sub6 9
,9 :
user; ?
.? @
Id@ B
.B C
ToStringC K
(K L
)L M
)M N
,N O
new 
Claim 
( #
JwtRegisteredClaimNames 5
.5 6
Email6 ;
,; <
user= A
.A B
EmailB G
!G H
)H I
,I J
new 
Claim 
( #
JwtRegisteredClaimNames 5
.5 6

UniqueName6 @
,@ A
userB F
.F G
UserNameG O
!O P
)P Q
,Q R
new 
Claim 
( 

ClaimTypes (
.( )
Role) -
,- .
Guid/ 3
.3 4
NewGuid4 ;
(; <
)< =
.= >
ToString> F
(F G
)G H
)H I
}   
;   
foreach"" 
("" 
var"" 
role"" 
in"" 
roles"" "
)""" #
{## 	

authClaims$$ 
.$$ 
Add$$ 
($$ 
new$$ 
Claim$$ $
($$$ %

ClaimTypes$$% /
.$$/ 0
Role$$0 4
,$$4 5
role$$6 :
)$$: ;
)$$; <
;$$< =
}%% 	
foreach'' 
('' 
var'' 
audience'' 
in''  
_jwtOptions''! ,
.'', -
Value''- 2
.''2 3
ValidAudiences''3 A
)''A B
{(( 	

authClaims)) 
.)) 
Add)) 
()) 
new)) 
Claim)) $
())$ %#
JwtRegisteredClaimNames))% <
.))< =
Aud))= @
,))@ A
audience))B J
)))J K
)))K L
;))L M
}** 	
var++ 
authSigningKey++ 
=++ 
new++   
SymmetricSecurityKey++! 5
(++5 6
Encoding++6 >
.++> ?
UTF8++? C
.++C D
GetBytes++D L
(++L M
_jwtOptions++M X
.++X Y
Value++Y ^
.++^ _
Secret++_ e
)++e f
)++f g
;++g h
var-- 
token-- 
=-- 
new-- 
JwtSecurityToken-- (
(--( )
expires.. 
:.. 
DateTime.. 
... 
Now.. !
...! "

AddMinutes.." ,
(.., -
_jwtOptions..- 8
...8 9
Value..9 >
...> ?
ExpiryMinutes..? L
)..L M
,..M N
claims// 
:// 

authClaims// 
,// 
audience00 
:00 
null00 
,00 
issuer11 
:11 
_jwtOptions11 
.11  
Value11  %
.11% &
ValidIssuer11& 1
,111 2
signingCredentials22 
:22 
new22  #
	Microsoft22$ -
.22- .
IdentityModel22. ;
.22; <
Tokens22< B
.22B C
SigningCredentials22C U
(22U V
authSigningKey22V d
,22d e
SecurityAlgorithms22f x
.22x y

HmacSha256	22y É
)
22É Ñ
)33 
;33 
var55 

tokenValue55 
=55 
new55 #
JwtSecurityTokenHandler55 3
(553 4
)554 5
.555 6

WriteToken556 @
(55@ A
token55A F
)55F G
;55G H
return77 
Task77 
.77 

FromResult77 
(77 

tokenValue77 )
)77) *
;77* +
}88 
}99 ı$
}C:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Authentication\Repositories\PermissionRepository.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
Authentication* 8
.8 9
Repositories9 E
{		 
internal

 
class

  
PermissionRepository

 '
:

( )

Repository

* 4
,

4 5!
IPermissionRepository

6 K
{ 
private 
readonly 
IMemoryCache %
_memoryCache& 2
;2 3
public  
PermissionRepository #
(# $
DatabaseContext$ 3
	dbContext4 =
,= >
IMemoryCache? K
memoryCacheL W
)W X
:Y Z
base[ _
(_ `
	dbContext` i
)i j
{ 	
_memoryCache 
= 
memoryCache &
;& '
} 	
public 
async 
Task 
< 
IEnumerable %
<% &

Permission& 0
>0 1
>1 2
GetRolePermission3 D
(D E
stringE K
RoleL P
)P Q
{ 	
return 
await 
_memoryCache %
.% &
GetOrCreateAsync& 6
(6 7
$" 
$str "
{" #
Role# '
}' (
"( )
,) *

cacheEntry 
=> 
{ 

cacheEntry 
. 
SlidingExpiration 0
=1 2
TimeSpan3 ;
.; <
	FromHours< E
(E F
$numF H
)H I
;I J
var 
permissions #
=$ %
	DbContext& /
./ 0
Roles0 5
.5 6
Include6 =
(= >
x> ?
=>@ B
xC D
.D E
PermissionsE P
)P Q
. 
Where 
( 
x 
=> 
x 
. 
Name "
==# %
Role& *
)* +
. 

SelectMany 
( 
x 
=>  
x! "
." #
Permissions# .
). /
;/ 0
return 
permissions &
.& '
ToListAsync' 2
(2 3
)3 4
;4 5
} 
) 
?? 
new 
( 
) 
; 
}   	
public"" 
async"" 
Task"" 
<"" 
IEnumerable"" %
<""% &

Permission""& 0
>""0 1
>""1 2
GetUserPermission""3 D
(""D E
Guid""E I
userId""J P
)""P Q
{## 	
return$$ 
await$$ 
_memoryCache$$ %
.$$% &
GetOrCreateAsync$$& 6
($$6 7
$"%% 
$str%% $
{%%$ %
userId%%% +
}%%+ ,
"%%, -
,%%- .

cacheEntry&& 
=>&& 
{'' 

cacheEntry(( 
.(( 
SlidingExpiration(( 0
=((1 2
TimeSpan((3 ;
.((; <
	FromHours((< E
(((E F
$num((F H
)((H I
;((I J
var** 
roles** 
=** 
from**  $
role**% )
in*** ,
	DbContext**- 6
.**6 7
Roles**7 <
.**< =
Include**= D
(**D E
x**E F
=>**G I
x**J K
.**K L
Permissions**L W
)**W X
join++ #
userRole++$ ,
in++- /
	DbContext++0 9
.++9 :
	UserRoles++: C
on++D F
role++G K
.++K L
Id++L N
equals++O U
userRole++V ^
.++^ _
RoleId++_ e
where,, $
userRole,,% -
.,,- .
UserId,,. 4
==,,5 7
userId,,8 >
select-- %
role--& *
;--* +
var// 
permissions// #
=//$ %
roles//& +
.//+ ,

SelectMany//, 6
(//6 7
x//7 8
=>//9 ;
x//< =
.//= >
Permissions//> I
)//I J
;//J K
return11 
permissions11 &
.11& '
ToListAsync11' 2
(112 3
)113 4
;114 5
}22 
)22 
??22 
new22 
(22 
)22 
;22 
}33 	
}44 
}55 ≤
cC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Common\DatabaseContext.cs
	namespace		 	
GoColis		
 
.		 
Shipping		 
.		 
Infrastructure		 )
.		) *
Common		* 0
;		0 1
public 
class 
DatabaseContext 
: 
IdentityDbContext 0
<0 1
User1 5
,5 6
Role7 ;
,; <
Guid= A
,A B
	UserClaimC L
,L M
UserRoleM U
,U V
	UserLoginW `
,` a
	RoleClaimb k
,k l
	UserTokenm v
>v w
{ 
public 

DatabaseContext 
( 
DbContextOptions +
options, 3
)3 4
:5 6
base7 ;
(; <
options< C
)C D
{ 
} 
public 

DbSet 
< 

RelayPoint 
> 
RelayPoints (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 

DbSet 
< 
Person 
> 
Persons  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

DbSet 
< 
Carrier 
> 
Carriers "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

DbSet 
< 
Order 
> 
	Shipments !
{" #
get$ '
;' (
set) ,
;, -
}. /
	protected 
override 
void 
OnModelCreating +
(+ ,
ModelBuilder, 8
builder9 @
)@ A
{ 
builder 
. +
ApplyConfigurationsFromAssembly /
(/ 0
typeof0 6
(6 7
DatabaseContext7 F
)F G
.G H
AssemblyH P
)P Q
;Q R
base 
. 
OnModelCreating 
( 
builder $
)$ %
;% &
} 
} ∞
gC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Common\DependencyInjection.cs
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
 
Infrastructure

 )
.

) *
Common

* 0
;

0 1
public 
static 
class 
DependencyInjection '
{ 
public 

static 
IServiceCollection $%
AddInfrastructureServices% >
(> ?
this? C
IServiceCollectionD V
servicesW _
,_ `
IConfiguration 
configuration $
,$ %
bool& *
IsDevelopment+ 8
)8 9
{ 
services## 
.## 
AddDbContext## 
<## 
DatabaseContext## -
>##- .
(##. /
options##/ 6
=>##7 9
options$$ 
.$$ 
UseSqlServer$$  
($$  !
configuration$$! .
.$$. /
GetConnectionString$$/ B
($$B C
$str$$C U
)$$U V
)$$V W
.%% 
LogTo%% 
(%% 
Console%% 
.%% 
	WriteLine%% (
,%%( )
	Microsoft%%* 3
.%%3 4

Extensions%%4 >
.%%> ?
Logging%%? F
.%%F G
LogLevel%%G O
.%%O P
Debug%%P U
)%%U V
.&& &
EnableSensitiveDataLogging&& +
(&&+ ,
)&&, -
.''  
EnableDetailedErrors'' %
(''% &
)''& '
)(( 	
;((	 

services** 
.** 
	AddScoped** 
<** !
IRelayPointRepository** 0
,**0 1 
RelayPointRepository**2 F
>**F G
(**G H
)**H I
;**I J
services++ 
.++ 
	AddScoped++ 
<++ 
IShipmentRepository++ .
,++. /
ShipmentRepository++0 B
>++B C
(++C D
)++D E
;++E F
services,, 
.,, 
	AddScoped,, 
<,, 
ICarrierRepository,, -
,,,- .
CarrierRepository,,/ @
>,,@ A
(,,A B
),,B C
;,,C D
services-- 
.-- 
	AddScoped-- 
<-- 
IPersonRepository-- ,
,--, -
PersonRepository--. >
>--> ?
(--? @
)--@ A
;--A B
services.. 
... 
	AddScoped.. 
<.. 
IJwtProvider.. '
,..' (
JwtProvider..) 4
>..4 5
(..5 6
)..6 7
;..7 8
services00 
.00 
	AddScoped00 
<00 !
IPermissionRepository00 0
,000 1 
PermissionRepository002 F
>00F G
(00G H
)00H I
;00I J
services11 
.11 
	AddScoped11 
<11 
IMemoryCache11 '
,11' (
MemoryCache11) 4
>114 5
(115 6
)116 7
;117 8
return33 
services33 
;33 
}44 
public66 

static66 
IServiceScope66 
MigrateDatabase66  /
(66/ 0
this660 4
IServiceScope665 B
scope66C H
)66H I
{77 
using88 
var88 
db88 
=88 
scope88 
.88 
ServiceProvider88 ,
.88, -

GetService88- 7
<887 8
DatabaseContext888 G
>88G H
(88H I
)88I J
;88J K
db99 

!99
 
.99 
Database99 
.99 
Migrate99 
(99 
)99 
;99 
return;; 
scope;; 
;;; 
}<< 
}== ”
^C:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Common\Repository.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
Common* 0
;0 1
public 
abstract 
class 

Repository  
{ 
internal 
readonly 
DatabaseContext %
	DbContext& /
;/ 0
	protected 

Repository 
( 
DatabaseContext (
	dbContext) 2
)2 3
{ 
	DbContext		 
=		 
	dbContext		 
;		 
}

 
} Ü
yC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Logistics\Configurations\AdressConfiguration.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
	Logistics* 3
.3 4
Configurations4 B
;B C
internal 
class	 
AdressConfiguration "
:# $$
IEntityTypeConfiguration% =
<= >
Adress> D
>D E
{ 
public 

void 
	Configure 
( 
EntityTypeBuilder +
<+ ,
Adress, 2
>2 3
builder4 ;
); <
{		 %
ConfigureCoordinatesTable

 !
(

! "
builder

" )
)

) *
;

* +
} 
private 
static 
void %
ConfigureCoordinatesTable 1
(1 2
EntityTypeBuilder2 C
<C D
AdressD J
>J K
builderL S
)S T
{ 
builder 
. 
ToTable 
( 
$str  
)  !
;! "
builder 
. 
HasKey 
( 
x 
=> 
x 
. 
Id  
)  !
;! "
builder 
. 
Property 
( 
x 
=> 
x 
.  
StreetNumber  ,
), -
. 
HasMaxLength 
( 
$num 
) 
; 
builder 
. 
Property 
( 
x 
=> 
x 
.  
Street  &
)& '
. 
HasMaxLength 
( 
$num 
) 
; 
builder 
. 
Property 
( 
x 
=> 
x 
.  
AddressLine1  ,
), -
. 
HasMaxLength 
( 
$num 
) 
; 
builder 
. 
Property 
( 
x 
=> 
x 
.  
AddressLine2  ,
), -
. 
HasMaxLength 
( 
$num 
) 
; 
builder 
. 
Property 
( 
x 
=> 
x 
.  
City  $
)$ %
.   
HasMaxLength   
(   
$num   
)   
;   
builder"" 
."" 
Property"" 
("" 
x"" 
=>"" 
x"" 
.""  
ZipCode""  '
)""' (
.## 
HasMaxLength## 
(## 
$num## 
)## 
;## 
builder%% 
.%% 
Property%% 
(%% 
x%% 
=>%% 
x%% 
.%%  
Country%%  '
)%%' (
.&& 
HasMaxLength&& 
(&& 
$num&& 
)&& 
;&& 
builder(( 
.(( 
Property(( 
((( 
x(( 
=>(( 
x(( 
.((  
Latitude((  (
)((( )
.)) 
HasPrecision)) 
()) 
$num)) 
,)) 
$num))  
)))  !
;))! "
builder++ 
.++ 
Property++ 
(++ 
x++ 
=>++ 
x++ 
.++  
	Longitude++  )
)++) *
.,, 
HasPrecision,, 
(,, 
$num,, 
,,, 
$num,,  
),,  !
;,,! "
}-- 
}.. ’2
zC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Logistics\Configurations\CarrierConfiguration.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
	Logistics* 3
.3 4
Configurations4 B
;B C
internal 
class	  
CarrierConfiguration #
:$ %$
IEntityTypeConfiguration& >
<> ?
Carrier? F
>F G
{ 
public 

void 
	Configure 
( 
EntityTypeBuilder +
<+ ,
Carrier, 3
>3 4
builder5 <
)< =
{		 !
ConfigureCarrierTable

 
(

 
builder

 %
)

% &
;

& ')
ConfigurePricePointRelayTable %
(% &
builder& -
)- .
;. /!
ConfigureRelationShip 
( 
builder %
)% &
;& '
} 
private 
static 
void !
ConfigureCarrierTable -
(- .
EntityTypeBuilder. ?
<? @
Carrier@ G
>G H
builderI P
)P Q
{ 
builder 
. 
ToTable 
( 
$str "
)" #
;# $
builder 
. 
HasKey 
( 
x 
=> 
x 
. 
Id  
)  !
;! "
builder 
. 
Property 
( 
x 
=> 
x 
.  
Name  $
)$ %
. 
HasMaxLength 
( 
$num 
) 
; 
} 
private 
static 
void !
ConfigureRelationShip -
(- .
EntityTypeBuilder. ?
<? @
Carrier@ G
>G H
builderI P
)P Q
{ 
builder 
. 
Metadata 
. 
FindNavigation '
(' (
nameof( .
(. /
Carrier/ 6
.6 7
Person7 =
)= >
)> ?
!? @
. !
SetPropertyAccessMode "
(" #
PropertyAccessMode# 5
.5 6
Property6 >
)> ?
;? @
builder 
. 
Metadata 
. 
FindNavigation '
(' (
nameof( .
(. /
Carrier/ 6
.6 7
Person7 =
)= >
)> ?
!? @
. !
SetPropertyAccessMode "
(" #
PropertyAccessMode# 5
.5 6
Property6 >
)> ?
;? @
builder!! 
.!! 
Metadata!! 
.!! 
FindNavigation!! '
(!!' (
nameof!!( .
(!!. /
Carrier!!/ 6
.!!6 7
RelayPointPrices!!7 G
)!!G H
)!!H I
!!!I J
."" !
SetPropertyAccessMode"" "
(""" #
PropertyAccessMode""# 5
.""5 6
Field""6 ;
)""; <
;""< =
}## 
private%% 
static%% 
void%% )
ConfigurePricePointRelayTable%% 5
(%%5 6
EntityTypeBuilder%%6 G
<%%G H
Carrier%%H O
>%%O P
builder%%Q X
)%%X Y
{&& 
builder'' 
.'' 
OwnsMany'' 
('' 
x'' 
=>'' 
x'' 
.''  
RelayPointPrices''  0
,''0 1
ib''2 4
=>''5 7
{(( 	
ib)) 
.)) 
ToTable)) 
()) 
$str)) )
)))) *
;))* +
ib++ 
.++ 
HasKey++ 
(++ 
x++ 
=>++ 
x++ 
.++ 
Id++ 
)++  
;++  !
ib-- 
.-- 
	WithOwner-- 
(-- 
)-- 
.-- 
HasForeignKey-- (
(--( )
$str--) 4
)--4 5
;--5 6
ib// 
.// 
Property// 
(// 
x// 
=>// 
x// 
.// 
Id// !
)//! "
.00 
ValueGeneratedNever00 
(00  
)00  !
.11 
HasConversion11 
(11 
id11 
=>11 
id11  "
,11" #
value11$ )
=>11* ,
Guid11- 1
.111 2
NewGuid112 9
(119 :
)11: ;
)11; <
;11< =
ib33 
.33 
Property33 
(33 
x33 
=>33 
x33 
.33 
PricePerCubicMeter33 1
)331 2
.44 
HasPrecision44 
(44 
$num44 
,44 
$num44 
)44 
;44  
ib66 
.66 
Property66 
(66 
x66 
=>66 
x66 
.66 
PricePerKilometer66 0
)660 1
.77 
HasPrecision77 
(77 
$num77 
,77 
$num77 
)77  
;77  !
ib99 
.99 
Property99 
(99 
x99 
=>99 
x99 
.99 
PricePerKilogram99 /
)99/ 0
.:: 
HasPrecision:: 
(:: 
$num:: 
,:: 
$num:: 
)::  
;::  !
ib<< 
.<< 
Property<< 
(<< 
x<< 
=><< 
x<< 
.<< 
	MaxWeight<< (
)<<( )
.== 
HasPrecision== 
(== 
$num== 
,== 
$num== 
)==  
;==  !
ib?? 
.?? 
Property?? 
(?? 
x?? 
=>?? 
x?? 
.?? 
MaxDimension?? +
)??+ ,
.@@ 
HasPrecision@@ 
(@@ 
$num@@ 
,@@ 
$num@@ 
)@@  
;@@  !
}AA 	
)AA	 

;AA
 
}BB 
}CC Ô
zC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Logistics\Configurations\ContactConfiguration.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
	Logistics* 3
.3 4
Configurations4 B
;B C
internal 
class	  
ContactConfiguration #
:$ %$
IEntityTypeConfiguration& >
<> ?
Contact? F
>F G
{ 
public 

void 
	Configure 
( 
EntityTypeBuilder +
<+ ,
Contact, 3
>3 4
builder5 <
)< =
{		 %
ConfigureCoordinatesTable

 !
(

! "
builder

" )
)

) *
;

* +
} 
private 
static 
void %
ConfigureCoordinatesTable 1
(1 2
EntityTypeBuilder2 C
<C D
ContactD K
>K L
builderM T
)T U
{ 
builder 
. 
ToTable 
( 
$str "
)" #
;# $
builder 
. 
HasKey 
( 
x 
=> 
x 
. 
Id  
)  !
;! "
builder 
. 
Property 
( 
x 
=> 
x 
.  
	FirstName  )
)) *
. 
HasMaxLength 
( 
$num 
) 
; 
builder 
. 
Property 
( 
x 
=> 
x 
.  
LastName  (
)( )
. 
HasMaxLength 
( 
$num 
) 
; 
builder 
. 
Property 
( 
x 
=> 
x 
.  
Email  %
)% &
. 
HasMaxLength 
( 
$num 
) 
; 
builder 
. 
Property 
( 
x 
=> 
x 
.  
Role  $
)$ %
. 
HasMaxLength 
( 
$num 
) 
; 
builder 
. 
Property 
( 
x 
=> 
x 
.  
Phone  %
)% &
.   
HasMaxLength   
(   
$num   
)   
;   
}!! 
}"" ª
|C:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Logistics\Configurations\InsuranceConfiguration.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
	Logistics* 3
.3 4
Configurations4 B
;B C
internal 
class	 "
InsuranceConfiguration %
:& '$
IEntityTypeConfiguration( @
<@ A
	InsuranceA J
>J K
{ 
public 

void 
	Configure 
( 
EntityTypeBuilder +
<+ ,
	Insurance, 5
>5 6
builder7 >
)> ?
{		  
ConfigureClientTable

 
(

 
builder

 $
)

$ %
;

% &!
ConfigureRelationShip 
( 
builder %
)% &
;& '
} 
private 
static 
void  
ConfigureClientTable ,
(, -
EntityTypeBuilder- >
<> ?
	Insurance? H
>H I
builderJ Q
)Q R
{ 
builder 
. 
ToTable 
( 
$str $
)$ %
;% &
builder 
. 
HasKey 
( 
x 
=> 
x 
. 
Id  
)  !
;! "
builder 
. 
Property 
( 
x 
=> 
x 
.  
Name  $
)$ %
. 
HasMaxLength 
( 
$num 
) 
; 
} 
private 
static 
void !
ConfigureRelationShip -
(- .
EntityTypeBuilder. ?
<? @
	Insurance@ I
>I J
builderK R
)R S
{ 
builder 
. 

Navigation 
( 
x 
=> 
x  !
.! "
Adress" (
)( )
. !
UsePropertyAccessMode "
(" #
PropertyAccessMode# 5
.5 6
Property6 >
)> ?
. 
AutoInclude 
( 
) 
; 
builder 
. 

Navigation 
( 
x 
=> 
x  !
.! "
Contact" )
)) *
. !
UsePropertyAccessMode "
(" #
PropertyAccessMode# 5
.5 6
Property6 >
)> ?
.   
AutoInclude   
(   
)   
;   
}!! 
}"" Ø8
zC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Logistics\Configurations\PackageConfiguration.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
	Logistics* 3
.3 4
Configurations4 B
;B C
internal 
class	  
PackageConfiguration #
:$ %$
IEntityTypeConfiguration& >
<> ?
Package? F
>F G
{ 
public 

void 
	Configure 
( 
EntityTypeBuilder +
<+ ,
Package, 3
>3 4
builder5 <
)< =
{		 !
ConfigurePackageTable

 
(

 
builder

 %
)

% &
;

& '&
ConfigurePackageItemsTable "
(" #
builder# *
)* +
;+ , 
ConfigureFormatTable 
( 
builder $
)$ %
;% &!
ConfigureRelationShip 
( 
builder %
)% &
;& '
} 
private 
static 
void !
ConfigurePackageTable -
(- .
EntityTypeBuilder. ?
<? @
Package@ G
>G H
builderI P
)P Q
{ 
builder 
. 
ToTable 
( 
$str "
)" #
;# $
builder 
. 
HasKey 
( 
x 
=> 
x 
. 
Id  
)  !
;! "
builder 
. 
Property 
( 
x 
=> 
x 
.  
Description  +
)+ ,
. 
HasMaxLength 
( 
$num 
) 
; 
builder 
. 
Property 
( 
x 
=> 
x 
.  
ExtraInformation  0
)0 1
. 
HasMaxLength 
( 
$num 
) 
;  
builder 
. 
Property 
( 
x 
=> 
x 
.  

TotalPrice  *
)* +
. 
HasPrecision 
( 
$num 
, 
$num 
)  
;  !
} 
private   
static   
void   &
ConfigurePackageItemsTable   2
(  2 3
EntityTypeBuilder  3 D
<  D E
Package  E L
>  L M
builder  N U
)  U V
{!! 
builder"" 
."" 
OwnsMany"" 
("" 
x"" 
=>"" 
x"" 
.""  
Items""  %
,""% &
ib""' )
=>""* ,
{## 	
ib$$ 
.$$ 
ToTable$$ 
($$ 
$str$$ %
)$$% &
;$$& '
ib&& 
.&& 
	WithOwner&& 
(&& 
)&& 
.&& 
HasForeignKey&& (
(&&( )
$str&&) 4
)&&4 5
;&&5 6
ib(( 
.(( 
Property(( 
((( 
x(( 
=>(( 
x(( 
.(( 
Name(( #
)((# $
.)) 
HasMaxLength)) 
()) 
$num)) 
))) 
;)) 
ib++ 
.++ 
Property++ 
(++ 
x++ 
=>++ 
x++ 
.++ 
Price++ $
)++$ %
.,, 
HasPrecision,, 
(,, 
$num,, 
,,, 
$num,, 
),,  
;,,  !
}-- 	
)--	 

;--
 
}00 
private22 
static22 
void22  
ConfigureFormatTable22 ,
(22, -
EntityTypeBuilder22- >
<22> ?
Package22? F
>22F G
builder22H O
)22O P
{33 
builder44 
.44 
OwnsOne44 
(44 
x44 
=>44 
x44 
.44 
Format44 %
,44% &
ib44' )
=>44* ,
{55 	
ib66 
.66 
ToTable66 
(66 
$str66 !
)66! "
;66" #
ib88 
.88 
Property88 
(88 
x88 
=>88 
x88 
.88 
Width88 $
)88$ %
.99 
HasPrecision99 
(99 
$num99 
,99 
$num99 
)99  
;99  !
ib;; 
.;; 
Property;; 
(;; 
x;; 
=>;; 
x;; 
.;; 
Height;; %
);;% &
.<< 
HasPrecision<< 
(<< 
$num<< 
,<< 
$num<< 
)<<  
;<<  !
ib>> 
.>> 
Property>> 
(>> 
x>> 
=>>> 
x>> 
.>> 
Length>> %
)>>% &
.?? 
HasPrecision?? 
(?? 
$num?? 
,?? 
$num?? 
)??  
;??  !
ibAA 
.AA 
PropertyAA 
(AA 
xAA 
=>AA 
xAA 
.AA 
WeightAA %
)AA% &
.BB 
HasPrecisionBB 
(BB 
$numBB 
,BB 
$numBB 
)BB  
;BB  !
ibDD 
.DD 
PropertyDD 
(DD 
xDD 
=>DD 
xDD 
.DD 
VolumeDD %
)DD% &
.EE 
HasPrecisionEE 
(EE 
$numEE 
,EE 
$numEE 
)EE  
;EE  !
}FF 	
)FF	 

;FF
 
}II 
privateKK 
staticKK 
voidKK !
ConfigureRelationShipKK -
(KK- .
EntityTypeBuilderKK. ?
<KK? @
PackageKK@ G
>KKG H
builderKKI P
)KKP Q
{LL 
builderMM 
.MM 
MetadataMM 
.MM 
FindNavigationMM '
(MM' (
nameofMM( .
(MM. /
PackageMM/ 6
.MM6 7
ItemsMM7 <
)MM< =
)MM= >
!MM> ?
.NN !
SetPropertyAccessModeNN #
(NN# $
PropertyAccessModeNN$ 6
.NN6 7
FieldNN7 <
)NN< =
;NN= >
builderPP 
.PP 
MetadataPP 
.PP 
FindNavigationPP '
(PP' (
nameofPP( .
(PP. /
PackagePP/ 6
.PP6 7
FormatPP7 =
)PP= >
)PP> ?
!PP? @
.QQ !
SetPropertyAccessModeQQ "
(QQ" #
PropertyAccessModeQQ# 5
.QQ5 6
PropertyQQ6 >
)QQ> ?
;QQ? @
}RR 
}SS ·
ÄC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Logistics\Configurations\PaymentMethodConfiguration.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
	Logistics* 3
.3 4
Configurations4 B
;B C
internal 
class	 &
PaymentMethodConfiguration )
:* +$
IEntityTypeConfiguration, D
<D E
PaymentMethodE R
>R S
{ 
public 

void 
	Configure 
( 
EntityTypeBuilder +
<+ ,
PaymentMethod, 9
>9 :
builder; B
)B C
{		 '
ConfigurePaymentMethodTable

 #
(

# $
builder

$ +
)

+ ,
;

, -
} 
private 
static 
void '
ConfigurePaymentMethodTable 3
(3 4
EntityTypeBuilder4 E
<E F
PaymentMethodF S
>S T
builderU \
)\ ]
{ 
builder 
. 
ToTable 
( 
$str (
)( )
;) *
builder 
. 
HasKey 
( 
x 
=> 
x 
. 
Id  
)  !
;! "
builder 
. 
Property 
( 
x 
=> 
x 
.  
Name  $
)$ %
. 
HasMaxLength 
( 
$num 
) 
; 
builder 
. 
Property 
( 
x 
=> 
x 
.  
IsActive  (
)( )
. 
HasDefaultValue 
( 
true !
)! "
;" #
} 
} ß
yC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Logistics\Configurations\PersonConfiguration.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
	Logistics* 3
.3 4
Configurations4 B
;B C
internal 
class	 
PersonConfiguration "
:# $$
IEntityTypeConfiguration% =
<= >
Person> D
>D E
{ 
public		 

void		 
	Configure		 
(		 
EntityTypeBuilder		 +
<		+ ,
Person		, 2
>		2 3
builder		4 ;
)		; <
{

 
builder 
. 
ToTable 
( 
$str !
)! "
;" #
builder 
. 
HasKey 
( 
x 
=> 
x 
. 
Id  
)  !
;! "
builder 
. 

Navigation 
( 
x 
=> 
x  !
.! "
User" &
)& '
. 
AutoInclude 
( 
) 
; 
builder 
. 

Navigation 
( 
x 
=> 
x  !
.! "
Adress" (
)( )
. 	
AutoInclude	 
( 
) 
; 
builder 
. 

Navigation 
( 
x 
=> 
x  !
.! "
Contacts" *
)* +
. 	
AutoInclude	 
( 
) 
; 
} 
} ¨
xC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Logistics\Configurations\PhotoConfiguration.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
	Logistics* 3
.3 4
Configurations4 B
;B C
internal 
class	 
PhotoConfiguration !
:" #$
IEntityTypeConfiguration$ <
<< =
Photo= B
>B C
{ 
public		 

void		 
	Configure		 
(		 
EntityTypeBuilder		 +
<		+ ,
Photo		, 1
>		1 2
builder		3 :
)		: ;
{

 %
ConfigureCoordinatesTable !
(! "
builder" )
)) *
;* +
} 
private 
static 
void %
ConfigureCoordinatesTable 1
(1 2
EntityTypeBuilder2 C
<C D
PhotoD I
>I J
builderK R
)R S
{ 
builder 
. 
ToTable 
( 
$str  
)  !
;! "
builder 
. 
HasKey 
( 
x 
=> 
x 
. 
Id  
)  !
;! "
builder 
. 
Property 
( 
x 
=> 
x 
.  
Name  $
)$ %
. 
HasMaxLength 
( 
$num 
) 
; 
builder 
. 
Property 
( 
x 
=> 
x 
.  
Url  #
)# $
. 
HasMaxLength 
( 
$num 
) 
; 
} 
} ¥%
}C:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Logistics\Configurations\RelayPointConfiguration.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
	Logistics* 3
.3 4
Configurations4 B
;B C
internal 
class	 #
RelayPointConfiguration &
:' ($
IEntityTypeConfiguration) A
<A B

RelayPointB L
>L M
{		 
public

 

void

 
	Configure

 
(

 
EntityTypeBuilder

 +
<

+ ,

RelayPoint

, 6
>

6 7
builder

8 ?
)

? @
{ $
ConfigureRelayPointTable  
(  !
builder! (
)( )
;) *!
ConfigureRelationShip 
( 
builder %
)% &
;& ',
 ConfigureRelayPointScheduleTable (
(( )
builder) 0
)0 1
;1 2
} 
private 
static 
void $
ConfigureRelayPointTable 0
(0 1
EntityTypeBuilder1 B
<B C

RelayPointC M
>M N
builderO V
)V W
{ 
builder 
. 
ToTable 
( 
$str %
)% &
;& '
builder 
. 
HasKey 
( 
x 
=> 
x 
. 
Id  
)  !
;! "
builder 
. 
Property 
( 
x 
=> 
x 
.  
Name  $
)$ %
. 
HasMaxLength 
( 
$num 
) 
; 
} 
private 
static 
void !
ConfigureRelationShip -
(- .
EntityTypeBuilder. ?
<? @

RelayPoint@ J
>J K
builderL S
)S T
{ 
builder 
. 
Metadata 
. 
FindNavigation '
(' (
nameof( .
(. /

RelayPoint/ 9
.9 :
Adress: @
)@ A
)A B
!B C
. !
SetPropertyAccessMode "
(" #
PropertyAccessMode# 5
.5 6
Property6 >
)> ?
;? @
builder!! 
.!! 
Metadata!! 
.!! 
FindNavigation!! '
(!!' (
nameof!!( .
(!!. /

RelayPoint!!/ 9
.!!9 :
Contacts!!: B
)!!B C
)!!C D
!!!D E
."" !
SetPropertyAccessMode"" "
(""" #
PropertyAccessMode""# 5
.""5 6
Property""6 >
)""> ?
;""? @
}## 
private%% 
static%% 
void%% ,
 ConfigureRelayPointScheduleTable%% 8
(%%8 9
EntityTypeBuilder%%9 J
<%%J K

RelayPoint%%K U
>%%U V
builder%%W ^
)%%^ _
{&& 
builder'' 
.'' 
OwnsMany'' 
('' 
x'' 
=>'' 
x'' 
.''  
RelayPointSchedules''  3
,''3 4
sb''5 7
=>''8 :
{(( 	
sb)) 
.)) 
ToTable)) 
()) 
$str)) ,
))), -
;))- .
sb++ 
.++ 
	WithOwner++ 
(++ 
)++ 
.++ 
HasForeignKey++ (
(++( )
$str++) 7
)++7 8
;++8 9
sb-- 
.-- 
HasKey-- 
(-- 
x-- 
=>-- 
x-- 
.-- 
Id-- 
)--  
;--  !
}// 	
)//	 

;//
 
builder11 
.11 

Navigation11 
(11 
x11 
=>11 
x11  !
.11! "
RelayPointSchedules11" 5
)115 6
.22 
Metadata22 
.22 
SetField22 
(22 
$str22 4
)224 5
;225 6
builder44 
.44 

Navigation44 
(44 
x44 
=>44 
x44  !
.44! "
RelayPointSchedules44" 5
)445 6
.55 !
UsePropertyAccessMode55 "
(55" #
PropertyAccessMode55# 5
.555 6
Field556 ;
)55; <
.66 
AutoInclude66 
(66 
)66 
;66 
}77 
}88 ∏;
{C:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Logistics\Configurations\ShipmentConfiguration.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
	Logistics* 3
.3 4
Configurations4 B
;B C
internal 
class	 !
ShipmentConfiguration $
:% &$
IEntityTypeConfiguration' ?
<? @
Order@ E
>E F
{ 
public 

void 
	Configure 
( 
EntityTypeBuilder +
<+ ,
Order, 1
>1 2
builder3 :
): ;
{		 "
ConfigureShipmentTable

 
(

 
builder

 &
)

& '
;

' (!
ConfigurePaymentTable 
( 
builder %
)% &
;& '!
ConfigureRelationShip 
( 
builder %
)% &
;& '
} 
private 
static 
void "
ConfigureShipmentTable .
(. /
EntityTypeBuilder/ @
<@ A
OrderA F
>F G
builderH O
)O P
{ 
builder 
. 
ToTable 
( 
$str #
)# $
;$ %
builder 
. 
HasKey 
( 
x 
=> 
x 
. 
Id  
)  !
;! "
} 
private 
static 
void !
ConfigureRelationShip -
(- .
EntityTypeBuilder. ?
<? @
Order@ E
>E F
builderG N
)N O
{ 
builder 
. 
Metadata 
. 
FindNavigation '
(' (
nameof( .
(. /
Order/ 4
.4 5
Package5 <
)< =
)= >
!> ?
. !
SetPropertyAccessMode "
(" #
PropertyAccessMode# 5
.5 6
Property6 >
)> ?
;? @
builder 
. 

Navigation 
( 
x 
=> 
x  !
.! "
Package" )
)) *
. 
AutoInclude 
( 
) 
; 
builder 
. 

Navigation 
( 
x 
=> 
x  !
.! "
	Insurance" +
)+ ,
. 
AutoInclude 
( 
) 
; 
builder!! 
.!! 

Navigation!! 
(!! 
x!! 
=>!! 
x!!  !
.!!! "
Sender!!" (
)!!( )
."" 
AutoInclude"" 
("" 
)"" 
;"" 
builder$$ 
.$$ 

Navigation$$ 
($$ 
x$$ 
=>$$ 
x$$  !
.$$! "
Receiver$$" *
)$$* +
.%% 
AutoInclude%% 
(%% 
)%% 
;%% 
builder'' 
.'' 
Metadata'' 
.'' 
FindNavigation'' '
(''' (
nameof''( .
(''. /
Order''/ 4
.''4 5
Carrier''5 <
)''< =
)''= >
!''> ?
.(( !
SetPropertyAccessMode(( "
(((" #
PropertyAccessMode((# 5
.((5 6
Property((6 >
)((> ?
;((? @
builder** 
.** 
Metadata** 
.** 
FindNavigation** '
(**' (
nameof**( .
(**. /
Order**/ 4
.**4 5
PickupPoint**5 @
)**@ A
)**A B
!**B C
.++ !
SetPropertyAccessMode++ "
(++" #
PropertyAccessMode++# 5
.++5 6
Property++6 >
)++> ?
;++? @
builder-- 
.-- 
Metadata-- 
.-- 
FindNavigation-- '
(--' (
nameof--( .
(--. /
Order--/ 4
.--4 5

RelayPoint--5 ?
)--? @
)--@ A
!--A B
... !
SetPropertyAccessMode.. "
(.." #
PropertyAccessMode..# 5
...5 6
Property..6 >
)..> ?
;..? @
builder00 
.00 
Metadata00 
.00 
FindNavigation00 '
(00' (
nameof00( .
(00. /
Order00/ 4
.004 5
PaymentMethod005 B
)00B C
)00C D
!00D E
.11 !
SetPropertyAccessMode11 "
(11" #
PropertyAccessMode11# 5
.115 6
Property116 >
)11> ?
;11? @
builder33 
.33 
Metadata33 
.33 
FindNavigation33 '
(33' (
nameof33( .
(33. /
Order33/ 4
.334 5
Payments335 =
)33= >
)33> ?
!33? @
.44 !
SetPropertyAccessMode44 "
(44" #
PropertyAccessMode44# 5
.445 6
Field446 ;
)44; <
;44< =
builder66 
.66 
Metadata66 
.66 
FindNavigation66 '
(66' (
nameof66( .
(66. /
Order66/ 4
.664 5
Photos665 ;
)66; <
)66< =
!66= >
.77 !
SetPropertyAccessMode77 "
(77" #
PropertyAccessMode77# 5
.775 6
Field776 ;
)77; <
;77< =
builder99 
.99 
Metadata99 
.99 
FindNavigation99 '
(99' (
nameof99( .
(99. /
Order99/ 4
.994 5
	Insurance995 >
)99> ?
)99? @
!99@ A
.:: !
SetPropertyAccessMode:: "
(::" #
PropertyAccessMode::# 5
.::5 6
Property::6 >
)::> ?
;::? @
};; 
private== 
static== 
void== !
ConfigurePaymentTable== -
(==- .
EntityTypeBuilder==. ?
<==? @
Order==@ E
>==E F
builder==G N
)==N O
{>> 
builder?? 
.?? 
OwnsMany?? 
(?? 
x?? 
=>?? 
x?? 
.??  
Payments??  (
,??( )
ib??* ,
=>??- /
{@@ 	
ibAA 
.AA 
ToTableAA 
(AA 
$strAA !
)AA! "
;AA" #
ibCC 
.CC 
HasKeyCC 
(CC 
xCC 
=>CC 
xCC 
.CC 
IdCC 
)CC  
;CC  !
ibEE 
.EE 
PropertyEE 
(EE 
xEE 
=>EE 
xEE 
.EE 
AmountEE %
)EE% &
.FF 
HasPrecisionFF 
(FF 
$numFF 
,FF 
$numFF 
)FF 
;FF  
ibHH 
.HH 
PropertyHH 
(HH 
xHH 
=>HH 
xHH 
.HH 
PaymentDateHH *
)HH* +
.II 
ValueGeneratedOnAddII  
(II  !
)II! "
;II" #
}JJ 	
)JJ	 

;JJ
 
}KK 
}LL å
uC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Logistics\Repositories\CarrierRepository.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
	Logistics* 3
.3 4
Repositories4 @
;@ A
public 
class 
CarrierRepository 
:  

Repository! +
,+ ,
ICarrierRepository- ?
{		 
public

 

CarrierRepository

 
(

 
DatabaseContext

 ,
	dbContext

- 6
)

6 7
:

8 9
base

: >
(

> ?
	dbContext

? H
)

H I
{ 
} 
public 

async 
Task 
AddAsync 
( 
Carrier &
entity' -
)- .
{ 
await 
	DbContext 
. 
Carriers  
.  !
AddAsync! )
() *
entity* 0
)0 1
;1 2
	DbContext 
. 
SaveChanges 
( 
) 
;  
} 
public 

async 
Task 
< 
Carrier 
? 
> 
GetAsync  (
(( )
Guid) -
id. 0
)0 1
{ 
var 
entity 
= 
await 
	DbContext $
.$ %
Carriers% -
. 
Include 
( 
x 
=> 
x 
. 
Person "
)" #
. 
ThenInclude 
( 
x 
=> 
x 
. 
Contacts &
)& '
. 
FirstOrDefaultAsync  
(  !
x! "
=># %
x& '
.' (
Id( *
==+ -
id. 0
)0 1
;1 2
if 

( 
entity 
== 
null 
) 
return 
default 
; 
return 
entity 
; 
} 
}   ´
tC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Logistics\Repositories\PersonRepository.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
	Logistics* 3
.3 4
Repositories4 @
;@ A
public		 
class		 
PersonRepository		 
:		 

Repository		  *
,		* +
IPersonRepository		, =
{

 
public 

PersonRepository 
( 
DatabaseContext +
	dbContext, 5
)5 6
:7 8
base9 =
(= >
	dbContext> G
)G H
{ 
} 
public 

async 
Task 
AddAsync 
( 
Person %
entity& ,
), -
{ 
await 
	DbContext 
. 
Persons 
.  
AddAsync  (
(( )
entity) /
)/ 0
;0 1
	DbContext 
. 
SaveChanges 
( 
) 
;  
} 
public 

async 
Task 
< 
Person 
? 
> 
GetAsync '
(' (
Guid( ,
id- /
)/ 0
{ 
var 
entity 
= 
await 
	DbContext $
.$ %
Persons% ,
. 
Include 
( 
x 
=> 
x 
. 
Contacts $
)$ %
. 
Include 
( 
x 
=> 
x 
. 
Adress "
)" #
. 
Include 
( 
x 
=> 
x 
. 
User 
) 
. 
FirstOrDefaultAsync  
(  !
x! "
=># %
x& '
.' (
Id( *
==+ -
id. 0
)0 1
;1 2
if 

( 
entity 
== 
null 
) 
return 
default 
; 
return 
entity 
; 
}   
public"" 

async"" 
Task"" 
<"" 
Person"" 
?"" 
>"" 
GetConnectedPerson"" 1
(""1 2
Guid""2 6
id""7 9
)""9 :
{## 
var$$ 
entity$$ 
=$$ 
await$$ 
	DbContext$$ $
.$$$ %
Persons$$% ,
.%% 
FirstOrDefaultAsync%%  
(%%  !
x%%! "
=>%%# %
x%%& '
.%%' (
User%%( ,
!=%%- /
null%%0 4
&&%%5 7
x%%8 9
.%%9 :
User%%: >
.%%> ?
Id%%? A
==%%B D
id%%E G
)%%G H
;%%H I
if'' 

('' 
entity'' 
=='' 
null'' 
)'' 
return(( 
default(( 
;(( 
return** 
entity** 
;** 
}++ 
},, é
xC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Logistics\Repositories\RelayPointRepository.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
	Logistics* 3
.3 4
Repositories4 @
;@ A
public 
class  
RelayPointRepository !
:" #

Repository$ .
,. /!
IRelayPointRepository0 E
{		 
public

 
 
RelayPointRepository

 
(

  
DatabaseContext

  /
	dbContext

0 9
)

9 :
:

; <
base

= A
(

A B
	dbContext

B K
)

K L
{ 
} 
public 

async 
Task 
AddAsync 
( 

RelayPoint )
entity* 0
)0 1
{ 
var 
	creatDate 
= 
DateTime  
.  !
UtcNow! '
;' (
entity 
. 
	CreatedAt 
= 
	creatDate #
;# $
await 
	DbContext 
. 
RelayPoints #
.# $
AddAsync$ ,
(, -
entity- 3
)3 4
;4 5
	DbContext 
. 
SaveChanges 
( 
) 
;  
} 
public 

async 
Task 
< 

RelayPoint  
?  !
>! "
GetAsync# +
(+ ,
Guid, 0
id1 3
)3 4
{ 
var 
entity 
= 
await 
	DbContext $
.$ %
RelayPoints% 0
. 
Include 
( 
x 
=> 
x 
. 
Contacts $
)$ %
. 
Include 
( 
x 
=> 
x 
. 
Adress "
)" #
. 
FirstOrDefaultAsync  
(  !
x! "
=># %
x& '
.' (
Id( *
==+ -
id. 0
)0 1
;1 2
if 

( 
entity 
== 
null 
) 
return 
default 
; 
return!! 
entity!! 
;!! 
}"" 
}## ≠
vC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Logistics\Repositories\ShipmentRepository.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *
	Logistics* 3
.3 4
Repositories4 @
;@ A
public 
class 
ShipmentRepository 
:  !

Repository" ,
,, -
IShipmentRepository. A
{		 
public

 

ShipmentRepository

 
(

 
DatabaseContext

 -
	dbContext

. 7
)

7 8
:

9 :
base

; ?
(

? @
	dbContext

@ I
)

I J
{ 
} 
public 

async 
Task 
AddAsync 
( 
Order $
entity% +
)+ ,
{ 
var 
	creatDate 
= 
DateTime  
.  !
UtcNow! '
;' (
entity 
. 
	CreatedAt 
= 
	creatDate $
;$ %
await 
	DbContext 
. 
	Shipments !
.! "
AddAsync" *
(* +
entity+ 1
)1 2
;2 3
	DbContext 
. 
SaveChanges 
( 
) 
;  
} 
public 

async 
Task 
< 
Order 
? 
> 
GetAsync &
(& '
Guid' +
id, .
). /
{ 
var 
entity 
= 
await 
	DbContext $
.$ %
	Shipments% .
. 
Include 
( 
x 
=> 
x 
. 
	Insurance #
)# $
. 
AsSplitQuery 
( 
) 
. 
FirstOrDefaultAsync  
(  !
x! "
=># %
x& '
.' (
Id( *
==+ -
id. 0
)0 1
;1 2
if 

( 
entity 
== 
null 
) 
return   
default   
;   
return"" 
entity"" 
;"" 
}## 
}$$ »–
pC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Migrations\20230326034814_InitCrate.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *

Migrations* 4
{ 
public		 

partial		 
class		 
	InitCrate		 "
:		# $
	Migration		% .
{

 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
Guid& *
>* +
(+ ,
type, 0
:0 1
$str2 D
,D E
nullableF N
:N O
falseP U
)U V
,V W
StreetNumber  
=! "
table# (
.( )
Column) /
</ 0
string0 6
>6 7
(7 8
type8 <
:< =
$str> L
,L M
	maxLengthN W
:W X
$numY [
,[ \
nullable] e
:e f
falseg l
)l m
,m n
Street 
= 
table "
." #
Column# )
<) *
string* 0
>0 1
(1 2
type2 6
:6 7
$str8 G
,G H
	maxLengthI R
:R S
$numT W
,W X
nullableY a
:a b
falsec h
)h i
,i j
AddressLine1  
=! "
table# (
.( )
Column) /
</ 0
string0 6
>6 7
(7 8
type8 <
:< =
$str> M
,M N
	maxLengthO X
:X Y
$numZ ]
,] ^
nullable_ g
:g h
falsei n
)n o
,o p
AddressLine2  
=! "
table# (
.( )
Column) /
</ 0
string0 6
>6 7
(7 8
type8 <
:< =
$str> M
,M N
	maxLengthO X
:X Y
$numZ ]
,] ^
nullable_ g
:g h
falsei n
)n o
,o p
City 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 D
,D E
	maxLengthF O
:O P
$numQ S
,S T
nullableU ]
:] ^
false_ d
)d e
,e f
ZipCode 
= 
table #
.# $
Column$ *
<* +
string+ 1
>1 2
(2 3
type3 7
:7 8
$str9 G
,G H
	maxLengthI R
:R S
$numT V
,V W
nullableX `
:` a
falseb g
)g h
,h i
Country 
= 
table #
.# $
Column$ *
<* +
string+ 1
>1 2
(2 3
type3 7
:7 8
$str9 G
,G H
	maxLengthI R
:R S
$numT V
,V W
nullableX `
:` a
falseb g
)g h
,h i
Latitude 
= 
table $
.$ %
Column% +
<+ ,
decimal, 3
>3 4
(4 5
type5 9
:9 :
$str; K
,K L
	precisionM V
:V W
$numX Z
,Z [
scale\ a
:a b
$numc e
,e f
nullableg o
:o p
falseq v
)v w
,w x
	Longitude 
= 
table  %
.% &
Column& ,
<, -
decimal- 4
>4 5
(5 6
type6 :
:: ;
$str< L
,L M
	precisionN W
:W X
$numY [
,[ \
scale] b
:b c
$numd f
,f g
nullableh p
:p q
falser w
)w x
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 0
,0 1
x2 3
=>4 6
x7 8
.8 9
Id9 ;
); <
;< =
}   
)   
;   
migrationBuilder"" 
."" 
CreateTable"" (
(""( )
name## 
:## 
$str##  
,##  !
columns$$ 
:$$ 
table$$ 
=>$$ !
new$$" %
{%% 
Id&& 
=&& 
table&& 
.&& 
Column&& %
<&&% &
Guid&&& *
>&&* +
(&&+ ,
type&&, 0
:&&0 1
$str&&2 D
,&&D E
nullable&&F N
:&&N O
false&&P U
)&&U V
,&&V W
	FirstName'' 
='' 
table''  %
.''% &
Column''& ,
<'', -
string''- 3
>''3 4
(''4 5
type''5 9
:''9 :
$str''; I
,''I J
	maxLength''K T
:''T U
$num''V X
,''X Y
nullable''Z b
:''b c
false''d i
)''i j
,''j k
LastName(( 
=(( 
table(( $
.(($ %
Column((% +
<((+ ,
string((, 2
>((2 3
(((3 4
type((4 8
:((8 9
$str((: H
,((H I
	maxLength((J S
:((S T
$num((U W
,((W X
nullable((Y a
:((a b
false((c h
)((h i
,((i j
Email)) 
=)) 
table)) !
.))! "
Column))" (
<))( )
string))) /
>))/ 0
())0 1
type))1 5
:))5 6
$str))7 E
,))E F
	maxLength))G P
:))P Q
$num))R T
,))T U
nullable))V ^
:))^ _
false))` e
)))e f
,))f g
Phone** 
=** 
table** !
.**! "
Column**" (
<**( )
string**) /
>**/ 0
(**0 1
type**1 5
:**5 6
$str**7 E
,**E F
	maxLength**G P
:**P Q
$num**R T
,**T U
nullable**V ^
:**^ _
false**` e
)**e f
,**f g
Role++ 
=++ 
table++  
.++  !
Column++! '
<++' (
string++( .
>++. /
(++/ 0
type++0 4
:++4 5
$str++6 D
,++D E
	maxLength++F O
:++O P
$num++Q S
,++S T
nullable++U ]
:++] ^
false++_ d
)++d e
},, 
,,, 
constraints-- 
:-- 
table-- "
=>--# %
{.. 
table// 
.// 

PrimaryKey// $
(//$ %
$str//% 2
,//2 3
x//4 5
=>//6 8
x//9 :
.//: ;
Id//; =
)//= >
;//> ?
}00 
)00 
;00 
migrationBuilder22 
.22 
CreateTable22 (
(22( )
name33 
:33 
$str33  
,33  !
columns44 
:44 
table44 
=>44 !
new44" %
{55 
Id66 
=66 
table66 
.66 
Column66 %
<66% &
Guid66& *
>66* +
(66+ ,
type66, 0
:660 1
$str662 D
,66D E
nullable66F N
:66N O
false66P U
)66U V
,66V W
Description77 
=77  !
table77" '
.77' (
Column77( .
<77. /
string77/ 5
>775 6
(776 7
type777 ;
:77; <
$str77= L
,77L M
	maxLength77N W
:77W X
$num77Y \
,77\ ]
nullable77^ f
:77f g
false77h m
)77m n
,77n o
ExtraInformation88 $
=88% &
table88' ,
.88, -
Column88- 3
<883 4
string884 :
>88: ;
(88; <
type88< @
:88@ A
$str88B R
,88R S
	maxLength88T ]
:88] ^
$num88_ c
,88c d
nullable88e m
:88m n
false88o t
)88t u
,88u v
Type99 
=99 
table99  
.99  !
Column99! '
<99' (
int99( +
>99+ ,
(99, -
type99- 1
:991 2
$str993 8
,998 9
nullable99: B
:99B C
false99D I
)99I J
,99J K

TotalPrice:: 
=::  
table::! &
.::& '
Column::' -
<::- .
decimal::. 5
>::5 6
(::6 7
type::7 ;
:::; <
$str::= L
,::L M
	precision::N W
:::W X
$num::Y [
,::[ \
scale::] b
:::b c
$num::d e
,::e f
nullable::g o
:::o p
false::q v
)::v w
,::w x
Format_Weight;; !
=;;" #
table;;$ )
.;;) *
Column;;* 0
<;;0 1
decimal;;1 8
>;;8 9
(;;9 :
type;;: >
:;;> ?
$str;;@ O
,;;O P
	precision;;Q Z
:;;Z [
$num;;\ ^
,;;^ _
scale;;` e
:;;e f
$num;;g h
,;;h i
nullable;;j r
:;;r s
false;;t y
);;y z
,;;z {
Format_Volume<< !
=<<" #
table<<$ )
.<<) *
Column<<* 0
<<<0 1
decimal<<1 8
><<8 9
(<<9 :
type<<: >
:<<> ?
$str<<@ O
,<<O P
	precision<<Q Z
:<<Z [
$num<<\ ^
,<<^ _
scale<<` e
:<<e f
$num<<g h
,<<h i
nullable<<j r
:<<r s
false<<t y
)<<y z
,<<z {
Format_Height== !
===" #
table==$ )
.==) *
Column==* 0
<==0 1
decimal==1 8
>==8 9
(==9 :
type==: >
:==> ?
$str==@ O
,==O P
	precision==Q Z
:==Z [
$num==\ ^
,==^ _
scale==` e
:==e f
$num==g h
,==h i
nullable==j r
:==r s
false==t y
)==y z
,==z {
Format_Length>> !
=>>" #
table>>$ )
.>>) *
Column>>* 0
<>>0 1
decimal>>1 8
>>>8 9
(>>9 :
type>>: >
:>>> ?
$str>>@ O
,>>O P
	precision>>Q Z
:>>Z [
$num>>\ ^
,>>^ _
scale>>` e
:>>e f
$num>>g h
,>>h i
nullable>>j r
:>>r s
false>>t y
)>>y z
,>>z {
Format_Width??  
=??! "
table??# (
.??( )
Column??) /
<??/ 0
decimal??0 7
>??7 8
(??8 9
type??9 =
:??= >
$str??? N
,??N O
	precision??P Y
:??Y Z
$num??[ ]
,??] ^
scale??_ d
:??d e
$num??f g
,??g h
nullable??i q
:??q r
false??s x
)??x y
}@@ 
,@@ 
constraintsAA 
:AA 
tableAA "
=>AA# %
{BB 
tableCC 
.CC 

PrimaryKeyCC $
(CC$ %
$strCC% 2
,CC2 3
xCC4 5
=>CC6 8
xCC9 :
.CC: ;
IdCC; =
)CC= >
;CC> ?
}DD 
)DD 
;DD 
migrationBuilderFF 
.FF 
CreateTableFF (
(FF( )
nameGG 
:GG 
$strGG &
,GG& '
columnsHH 
:HH 
tableHH 
=>HH !
newHH" %
{II 
IdJJ 
=JJ 
tableJJ 
.JJ 
ColumnJJ %
<JJ% &
GuidJJ& *
>JJ* +
(JJ+ ,
typeJJ, 0
:JJ0 1
$strJJ2 D
,JJD E
nullableJJF N
:JJN O
falseJJP U
)JJU V
,JJV W
NameKK 
=KK 
tableKK  
.KK  !
ColumnKK! '
<KK' (
stringKK( .
>KK. /
(KK/ 0
typeKK0 4
:KK4 5
$strKK6 D
,KKD E
	maxLengthKKF O
:KKO P
$numKKQ S
,KKS T
nullableKKU ]
:KK] ^
falseKK_ d
)KKd e
,KKe f
IsOnlineLL 
=LL 
tableLL $
.LL$ %
ColumnLL% +
<LL+ ,
boolLL, 0
>LL0 1
(LL1 2
typeLL2 6
:LL6 7
$strLL8 =
,LL= >
nullableLL? G
:LLG H
falseLLI N
)LLN O
,LLO P
IsCashOnDeliveryMM $
=MM% &
tableMM' ,
.MM, -
ColumnMM- 3
<MM3 4
boolMM4 8
>MM8 9
(MM9 :
typeMM: >
:MM> ?
$strMM@ E
,MME F
nullableMMG O
:MMO P
falseMMQ V
)MMV W
,MMW X
IsCreditCardNN  
=NN! "
tableNN# (
.NN( )
ColumnNN) /
<NN/ 0
boolNN0 4
>NN4 5
(NN5 6
typeNN6 :
:NN: ;
$strNN< A
,NNA B
nullableNNC K
:NNK L
falseNNM R
)NNR S
,NNS T
IsBankTransferOO "
=OO# $
tableOO% *
.OO* +
ColumnOO+ 1
<OO1 2
boolOO2 6
>OO6 7
(OO7 8
typeOO8 <
:OO< =
$strOO> C
,OOC D
nullableOOE M
:OOM N
falseOOO T
)OOT U
,OOU V
IsActivePP 
=PP 
tablePP $
.PP$ %
ColumnPP% +
<PP+ ,
boolPP, 0
>PP0 1
(PP1 2
typePP2 6
:PP6 7
$strPP8 =
,PP= >
nullablePP? G
:PPG H
falsePPI N
,PPN O
defaultValuePPP \
:PP\ ]
truePP^ b
)PPb c
}QQ 
,QQ 
constraintsRR 
:RR 
tableRR "
=>RR# %
{SS 
tableTT 
.TT 

PrimaryKeyTT $
(TT$ %
$strTT% 8
,TT8 9
xTT: ;
=>TT< >
xTT? @
.TT@ A
IdTTA C
)TTC D
;TTD E
}UU 
)UU 
;UU 
migrationBuilderWW 
.WW 
CreateTableWW (
(WW( )
nameXX 
:XX 
$strXX  
,XX  !
columnsYY 
:YY 
tableYY 
=>YY !
newYY" %
{ZZ 
Id[[ 
=[[ 
table[[ 
.[[ 
Column[[ %
<[[% &
Guid[[& *
>[[* +
([[+ ,
type[[, 0
:[[0 1
$str[[2 D
,[[D E
nullable[[F N
:[[N O
false[[P U
)[[U V
,[[V W
Name\\ 
=\\ 
table\\  
.\\  !
Column\\! '
<\\' (
string\\( .
>\\. /
(\\/ 0
type\\0 4
:\\4 5
$str\\6 E
,\\E F
	maxLength\\G P
:\\P Q
$num\\R U
,\\U V
nullable\\W _
:\\_ `
false\\a f
)\\f g
,\\g h
AdressId]] 
=]] 
table]] $
.]]$ %
Column]]% +
<]]+ ,
Guid]], 0
>]]0 1
(]]1 2
type]]2 6
:]]6 7
$str]]8 J
,]]J K
nullable]]L T
:]]T U
true]]V Z
)]]Z [
,]][ \
	ContactId^^ 
=^^ 
table^^  %
.^^% &
Column^^& ,
<^^, -
Guid^^- 1
>^^1 2
(^^2 3
type^^3 7
:^^7 8
$str^^9 K
,^^K L
nullable^^M U
:^^U V
true^^W [
)^^[ \
,^^\ ]
	CreatedAt__ 
=__ 
table__  %
.__% &
Column__& ,
<__, -
DateTime__- 5
>__5 6
(__6 7
type__7 ;
:__; <
$str__= H
,__H I
nullable__J R
:__R S
true__T X
)__X Y
,__Y Z
	UpdatedAt`` 
=`` 
table``  %
.``% &
Column``& ,
<``, -
DateTime``- 5
>``5 6
(``6 7
type``7 ;
:``; <
$str``= H
,``H I
nullable``J R
:``R S
true``T X
)``X Y
,``Y Z
	CreatedByaa 
=aa 
tableaa  %
.aa% &
Columnaa& ,
<aa, -
stringaa- 3
>aa3 4
(aa4 5
typeaa5 9
:aa9 :
$straa; J
,aaJ K
nullableaaL T
:aaT U
trueaaV Z
)aaZ [
,aa[ \
	UpdatedBybb 
=bb 
tablebb  %
.bb% &
Columnbb& ,
<bb, -
stringbb- 3
>bb3 4
(bb4 5
typebb5 9
:bb9 :
$strbb; J
,bbJ K
nullablebbL T
:bbT U
truebbV Z
)bbZ [
}cc 
,cc 
constraintsdd 
:dd 
tabledd "
=>dd# %
{ee 
tableff 
.ff 

PrimaryKeyff $
(ff$ %
$strff% 2
,ff2 3
xff4 5
=>ff6 8
xff9 :
.ff: ;
Idff; =
)ff= >
;ff> ?
tablegg 
.gg 

ForeignKeygg $
(gg$ %
namehh 
:hh 
$strhh ;
,hh; <
columnii 
:ii 
xii  !
=>ii" $
xii% &
.ii& '
AdressIdii' /
,ii/ 0
principalTablejj &
:jj& '
$strjj( 0
,jj0 1
principalColumnkk '
:kk' (
$strkk) -
)kk- .
;kk. /
tablell 
.ll 

ForeignKeyll $
(ll$ %
namemm 
:mm 
$strmm >
,mm> ?
columnnn 
:nn 
xnn  !
=>nn" $
xnn% &
.nn& '
	ContactIdnn' 0
,nn0 1
principalTableoo &
:oo& '
$stroo( 2
,oo2 3
principalColumnpp '
:pp' (
$strpp) -
)pp- .
;pp. /
}qq 
)qq 
;qq 
migrationBuilderss 
.ss 
CreateTabless (
(ss( )
namett 
:tt 
$strtt "
,tt" #
columnsuu 
:uu 
tableuu 
=>uu !
newuu" %
{vv 
Idww 
=ww 
tableww 
.ww 
Columnww %
<ww% &
Guidww& *
>ww* +
(ww+ ,
typeww, 0
:ww0 1
$strww2 D
,wwD E
nullablewwF N
:wwN O
falsewwP U
)wwU V
,wwV W
Namexx 
=xx 
tablexx  
.xx  !
Columnxx! '
<xx' (
stringxx( .
>xx. /
(xx/ 0
typexx0 4
:xx4 5
$strxx6 E
,xxE F
	maxLengthxxG P
:xxP Q
$numxxR U
,xxU V
nullablexxW _
:xx_ `
falsexxa f
)xxf g
,xxg h
AdressIdyy 
=yy 
tableyy $
.yy$ %
Columnyy% +
<yy+ ,
Guidyy, 0
>yy0 1
(yy1 2
typeyy2 6
:yy6 7
$stryy8 J
,yyJ K
nullableyyL T
:yyT U
falseyyV [
)yy[ \
,yy\ ]
	ContactIdzz 
=zz 
tablezz  %
.zz% &
Columnzz& ,
<zz, -
Guidzz- 1
>zz1 2
(zz2 3
typezz3 7
:zz7 8
$strzz9 K
,zzK L
nullablezzM U
:zzU V
falsezzW \
)zz\ ]
}{{ 
,{{ 
constraints|| 
:|| 
table|| "
=>||# %
{}} 
table~~ 
.~~ 

PrimaryKey~~ $
(~~$ %
$str~~% 4
,~~4 5
x~~6 7
=>~~8 :
x~~; <
.~~< =
Id~~= ?
)~~? @
;~~@ A
table 
. 

ForeignKey $
($ %
name
ÄÄ 
:
ÄÄ 
$str
ÄÄ =
,
ÄÄ= >
column
ÅÅ 
:
ÅÅ 
x
ÅÅ  !
=>
ÅÅ" $
x
ÅÅ% &
.
ÅÅ& '
AdressId
ÅÅ' /
,
ÅÅ/ 0
principalTable
ÇÇ &
:
ÇÇ& '
$str
ÇÇ( 0
,
ÇÇ0 1
principalColumn
ÉÉ '
:
ÉÉ' (
$str
ÉÉ) -
,
ÉÉ- .
onDelete
ÑÑ  
:
ÑÑ  !
ReferentialAction
ÑÑ" 3
.
ÑÑ3 4
Restrict
ÑÑ4 <
)
ÑÑ< =
;
ÑÑ= >
table
ÖÖ 
.
ÖÖ 

ForeignKey
ÖÖ $
(
ÖÖ$ %
name
ÜÜ 
:
ÜÜ 
$str
ÜÜ @
,
ÜÜ@ A
column
áá 
:
áá 
x
áá  !
=>
áá" $
x
áá% &
.
áá& '
	ContactId
áá' 0
,
áá0 1
principalTable
àà &
:
àà& '
$str
àà( 2
,
àà2 3
principalColumn
ââ '
:
ââ' (
$str
ââ) -
,
ââ- .
onDelete
ää  
:
ää  !
ReferentialAction
ää" 3
.
ää3 4
Restrict
ää4 <
)
ää< =
;
ää= >
}
ãã 
)
ãã 
;
ãã 
migrationBuilder
çç 
.
çç 
CreateTable
çç (
(
çç( )
name
éé 
:
éé 
$str
éé 
,
éé  
columns
èè 
:
èè 
table
èè 
=>
èè !
new
èè" %
{
êê 
Id
ëë 
=
ëë 
table
ëë 
.
ëë 
Column
ëë %
<
ëë% &
Guid
ëë& *
>
ëë* +
(
ëë+ ,
type
ëë, 0
:
ëë0 1
$str
ëë2 D
,
ëëD E
nullable
ëëF N
:
ëëN O
false
ëëP U
)
ëëU V
,
ëëV W
	FirstName
íí 
=
íí 
table
íí  %
.
íí% &
Column
íí& ,
<
íí, -
string
íí- 3
>
íí3 4
(
íí4 5
type
íí5 9
:
íí9 :
$str
íí; J
,
ííJ K
	maxLength
ííL U
:
ííU V
$num
ííW Z
,
ííZ [
nullable
íí\ d
:
ííd e
false
ííf k
)
íík l
,
ííl m
LastName
ìì 
=
ìì 
table
ìì $
.
ìì$ %
Column
ìì% +
<
ìì+ ,
string
ìì, 2
>
ìì2 3
(
ìì3 4
type
ìì4 8
:
ìì8 9
$str
ìì: I
,
ììI J
	maxLength
ììK T
:
ììT U
$num
ììV Y
,
ììY Z
nullable
ìì[ c
:
ììc d
false
ììe j
)
ììj k
,
ììk l
AdressId
îî 
=
îî 
table
îî $
.
îî$ %
Column
îî% +
<
îî+ ,
Guid
îî, 0
>
îî0 1
(
îî1 2
type
îî2 6
:
îî6 7
$str
îî8 J
,
îîJ K
nullable
îîL T
:
îîT U
false
îîV [
)
îî[ \
,
îî\ ]
	ContactId
ïï 
=
ïï 
table
ïï  %
.
ïï% &
Column
ïï& ,
<
ïï, -
Guid
ïï- 1
>
ïï1 2
(
ïï2 3
type
ïï3 7
:
ïï7 8
$str
ïï9 K
,
ïïK L
nullable
ïïM U
:
ïïU V
false
ïïW \
)
ïï\ ]
}
ññ 
,
ññ 
constraints
óó 
:
óó 
table
óó "
=>
óó# %
{
òò 
table
ôô 
.
ôô 

PrimaryKey
ôô $
(
ôô$ %
$str
ôô% 1
,
ôô1 2
x
ôô3 4
=>
ôô5 7
x
ôô8 9
.
ôô9 :
Id
ôô: <
)
ôô< =
;
ôô= >
table
öö 
.
öö 

ForeignKey
öö $
(
öö$ %
name
õõ 
:
õõ 
$str
õõ :
,
õõ: ;
column
úú 
:
úú 
x
úú  !
=>
úú" $
x
úú% &
.
úú& '
AdressId
úú' /
,
úú/ 0
principalTable
ùù &
:
ùù& '
$str
ùù( 0
,
ùù0 1
principalColumn
ûû '
:
ûû' (
$str
ûû) -
,
ûû- .
onDelete
üü  
:
üü  !
ReferentialAction
üü" 3
.
üü3 4
Restrict
üü4 <
)
üü< =
;
üü= >
table
†† 
.
†† 

ForeignKey
†† $
(
††$ %
name
°° 
:
°° 
$str
°° =
,
°°= >
column
¢¢ 
:
¢¢ 
x
¢¢  !
=>
¢¢" $
x
¢¢% &
.
¢¢& '
	ContactId
¢¢' 0
,
¢¢0 1
principalTable
££ &
:
££& '
$str
££( 2
,
££2 3
principalColumn
§§ '
:
§§' (
$str
§§) -
,
§§- .
onDelete
••  
:
••  !
ReferentialAction
••" 3
.
••3 4
Restrict
••4 <
)
••< =
;
••= >
}
¶¶ 
)
¶¶ 
;
¶¶ 
migrationBuilder
®® 
.
®® 
CreateTable
®® (
(
®®( )
name
©© 
:
©© 
$str
©© #
,
©©# $
columns
™™ 
:
™™ 
table
™™ 
=>
™™ !
new
™™" %
{
´´ 
Id
¨¨ 
=
¨¨ 
table
¨¨ 
.
¨¨ 
Column
¨¨ %
<
¨¨% &
Guid
¨¨& *
>
¨¨* +
(
¨¨+ ,
type
¨¨, 0
:
¨¨0 1
$str
¨¨2 D
,
¨¨D E
nullable
¨¨F N
:
¨¨N O
false
¨¨P U
)
¨¨U V
,
¨¨V W
Name
≠≠ 
=
≠≠ 
table
≠≠  
.
≠≠  !
Column
≠≠! '
<
≠≠' (
string
≠≠( .
>
≠≠. /
(
≠≠/ 0
type
≠≠0 4
:
≠≠4 5
$str
≠≠6 E
,
≠≠E F
	maxLength
≠≠G P
:
≠≠P Q
$num
≠≠R U
,
≠≠U V
nullable
≠≠W _
:
≠≠_ `
false
≠≠a f
)
≠≠f g
,
≠≠g h
AdressID
ÆÆ 
=
ÆÆ 
table
ÆÆ $
.
ÆÆ$ %
Column
ÆÆ% +
<
ÆÆ+ ,
Guid
ÆÆ, 0
>
ÆÆ0 1
(
ÆÆ1 2
type
ÆÆ2 6
:
ÆÆ6 7
$str
ÆÆ8 J
,
ÆÆJ K
nullable
ÆÆL T
:
ÆÆT U
false
ÆÆV [
)
ÆÆ[ \
,
ÆÆ\ ]
	ContactId
ØØ 
=
ØØ 
table
ØØ  %
.
ØØ% &
Column
ØØ& ,
<
ØØ, -
Guid
ØØ- 1
>
ØØ1 2
(
ØØ2 3
type
ØØ3 7
:
ØØ7 8
$str
ØØ9 K
,
ØØK L
nullable
ØØM U
:
ØØU V
true
ØØW [
)
ØØ[ \
,
ØØ\ ]
	CreatedAt
∞∞ 
=
∞∞ 
table
∞∞  %
.
∞∞% &
Column
∞∞& ,
<
∞∞, -
DateTime
∞∞- 5
>
∞∞5 6
(
∞∞6 7
type
∞∞7 ;
:
∞∞; <
$str
∞∞= H
,
∞∞H I
nullable
∞∞J R
:
∞∞R S
true
∞∞T X
)
∞∞X Y
,
∞∞Y Z
	UpdatedAt
±± 
=
±± 
table
±±  %
.
±±% &
Column
±±& ,
<
±±, -
DateTime
±±- 5
>
±±5 6
(
±±6 7
type
±±7 ;
:
±±; <
$str
±±= H
,
±±H I
nullable
±±J R
:
±±R S
true
±±T X
)
±±X Y
,
±±Y Z
	CreatedBy
≤≤ 
=
≤≤ 
table
≤≤  %
.
≤≤% &
Column
≤≤& ,
<
≤≤, -
string
≤≤- 3
>
≤≤3 4
(
≤≤4 5
type
≤≤5 9
:
≤≤9 :
$str
≤≤; J
,
≤≤J K
nullable
≤≤L T
:
≤≤T U
true
≤≤V Z
)
≤≤Z [
,
≤≤[ \
	UpdatedBy
≥≥ 
=
≥≥ 
table
≥≥  %
.
≥≥% &
Column
≥≥& ,
<
≥≥, -
string
≥≥- 3
>
≥≥3 4
(
≥≥4 5
type
≥≥5 9
:
≥≥9 :
$str
≥≥; J
,
≥≥J K
nullable
≥≥L T
:
≥≥T U
true
≥≥V Z
)
≥≥Z [
}
¥¥ 
,
¥¥ 
constraints
µµ 
:
µµ 
table
µµ "
=>
µµ# %
{
∂∂ 
table
∑∑ 
.
∑∑ 

PrimaryKey
∑∑ $
(
∑∑$ %
$str
∑∑% 5
,
∑∑5 6
x
∑∑7 8
=>
∑∑9 ;
x
∑∑< =
.
∑∑= >
Id
∑∑> @
)
∑∑@ A
;
∑∑A B
table
∏∏ 
.
∏∏ 

ForeignKey
∏∏ $
(
∏∏$ %
name
ππ 
:
ππ 
$str
ππ >
,
ππ> ?
column
∫∫ 
:
∫∫ 
x
∫∫  !
=>
∫∫" $
x
∫∫% &
.
∫∫& '
AdressID
∫∫' /
,
∫∫/ 0
principalTable
ªª &
:
ªª& '
$str
ªª( 0
,
ªª0 1
principalColumn
ºº '
:
ºº' (
$str
ºº) -
,
ºº- .
onDelete
ΩΩ  
:
ΩΩ  !
ReferentialAction
ΩΩ" 3
.
ΩΩ3 4
Restrict
ΩΩ4 <
)
ΩΩ< =
;
ΩΩ= >
table
ææ 
.
ææ 

ForeignKey
ææ $
(
ææ$ %
name
øø 
:
øø 
$str
øø A
,
øøA B
column
¿¿ 
:
¿¿ 
x
¿¿  !
=>
¿¿" $
x
¿¿% &
.
¿¿& '
	ContactId
¿¿' 0
,
¿¿0 1
principalTable
¡¡ &
:
¡¡& '
$str
¡¡( 2
,
¡¡2 3
principalColumn
¬¬ '
:
¬¬' (
$str
¬¬) -
)
¬¬- .
;
¬¬. /
}
√√ 
)
√√ 
;
√√ 
migrationBuilder
≈≈ 
.
≈≈ 
CreateTable
≈≈ (
(
≈≈( )
name
∆∆ 
:
∆∆ 
$str
∆∆ $
,
∆∆$ %
columns
«« 
:
«« 
table
«« 
=>
«« !
new
««" %
{
»» 
Id
…… 
=
…… 
table
…… 
.
…… 
Column
…… %
<
……% &
Guid
……& *
>
……* +
(
……+ ,
type
……, 0
:
……0 1
$str
……2 D
,
……D E
nullable
……F N
:
……N O
false
……P U
)
……U V
,
……V W
	PackageId
   
=
   
table
    %
.
  % &
Column
  & ,
<
  , -
Guid
  - 1
>
  1 2
(
  2 3
type
  3 7
:
  7 8
$str
  9 K
,
  K L
nullable
  M U
:
  U V
false
  W \
)
  \ ]
,
  ] ^
Name
ÀÀ 
=
ÀÀ 
table
ÀÀ  
.
ÀÀ  !
Column
ÀÀ! '
<
ÀÀ' (
string
ÀÀ( .
>
ÀÀ. /
(
ÀÀ/ 0
type
ÀÀ0 4
:
ÀÀ4 5
$str
ÀÀ6 E
,
ÀÀE F
	maxLength
ÀÀG P
:
ÀÀP Q
$num
ÀÀR U
,
ÀÀU V
nullable
ÀÀW _
:
ÀÀ_ `
false
ÀÀa f
)
ÀÀf g
,
ÀÀg h
Description
ÃÃ 
=
ÃÃ  !
table
ÃÃ" '
.
ÃÃ' (
Column
ÃÃ( .
<
ÃÃ. /
string
ÃÃ/ 5
>
ÃÃ5 6
(
ÃÃ6 7
type
ÃÃ7 ;
:
ÃÃ; <
$str
ÃÃ= L
,
ÃÃL M
nullable
ÃÃN V
:
ÃÃV W
false
ÃÃX ]
)
ÃÃ] ^
,
ÃÃ^ _
Price
ÕÕ 
=
ÕÕ 
table
ÕÕ !
.
ÕÕ! "
Column
ÕÕ" (
<
ÕÕ( )
decimal
ÕÕ) 0
>
ÕÕ0 1
(
ÕÕ1 2
type
ÕÕ2 6
:
ÕÕ6 7
$str
ÕÕ8 G
,
ÕÕG H
	precision
ÕÕI R
:
ÕÕR S
$num
ÕÕT V
,
ÕÕV W
scale
ÕÕX ]
:
ÕÕ] ^
$num
ÕÕ_ `
,
ÕÕ` a
nullable
ÕÕb j
:
ÕÕj k
false
ÕÕl q
)
ÕÕq r
,
ÕÕr s
Quantity
ŒŒ 
=
ŒŒ 
table
ŒŒ $
.
ŒŒ$ %
Column
ŒŒ% +
<
ŒŒ+ ,
int
ŒŒ, /
>
ŒŒ/ 0
(
ŒŒ0 1
type
ŒŒ1 5
:
ŒŒ5 6
$str
ŒŒ7 <
,
ŒŒ< =
nullable
ŒŒ> F
:
ŒŒF G
false
ŒŒH M
)
ŒŒM N
}
œœ 
,
œœ 
constraints
–– 
:
–– 
table
–– "
=>
––# %
{
—— 
table
““ 
.
““ 

PrimaryKey
““ $
(
““$ %
$str
““% 6
,
““6 7
x
““8 9
=>
““: <
new
““= @
{
““A B
x
““C D
.
““D E
	PackageId
““E N
,
““N O
x
““P Q
.
““Q R
Id
““R T
}
““U V
)
““V W
;
““W X
table
”” 
.
”” 

ForeignKey
”” $
(
””$ %
name
‘‘ 
:
‘‘ 
$str
‘‘ B
,
‘‘B C
column
’’ 
:
’’ 
x
’’  !
=>
’’" $
x
’’% &
.
’’& '
	PackageId
’’' 0
,
’’0 1
principalTable
÷÷ &
:
÷÷& '
$str
÷÷( 2
,
÷÷2 3
principalColumn
◊◊ '
:
◊◊' (
$str
◊◊) -
,
◊◊- .
onDelete
ÿÿ  
:
ÿÿ  !
ReferentialAction
ÿÿ" 3
.
ÿÿ3 4
Restrict
ÿÿ4 <
)
ÿÿ< =
;
ÿÿ= >
}
ŸŸ 
)
ŸŸ 
;
ŸŸ 
migrationBuilder
€€ 
.
€€ 
CreateTable
€€ (
(
€€( )
name
‹‹ 
:
‹‹ 
$str
‹‹ )
,
‹‹) *
columns
›› 
:
›› 
table
›› 
=>
›› !
new
››" %
{
ﬁﬁ 

CarriersId
ﬂﬂ 
=
ﬂﬂ  
table
ﬂﬂ! &
.
ﬂﬂ& '
Column
ﬂﬂ' -
<
ﬂﬂ- .
Guid
ﬂﬂ. 2
>
ﬂﬂ2 3
(
ﬂﬂ3 4
type
ﬂﬂ4 8
:
ﬂﬂ8 9
$str
ﬂﬂ: L
,
ﬂﬂL M
nullable
ﬂﬂN V
:
ﬂﬂV W
false
ﬂﬂX ]
)
ﬂﬂ] ^
,
ﬂﬂ^ _
RelayPointsId
‡‡ !
=
‡‡" #
table
‡‡$ )
.
‡‡) *
Column
‡‡* 0
<
‡‡0 1
Guid
‡‡1 5
>
‡‡5 6
(
‡‡6 7
type
‡‡7 ;
:
‡‡; <
$str
‡‡= O
,
‡‡O P
nullable
‡‡Q Y
:
‡‡Y Z
false
‡‡[ `
)
‡‡` a
}
·· 
,
·· 
constraints
‚‚ 
:
‚‚ 
table
‚‚ "
=>
‚‚# %
{
„„ 
table
‰‰ 
.
‰‰ 

PrimaryKey
‰‰ $
(
‰‰$ %
$str
‰‰% ;
,
‰‰; <
x
‰‰= >
=>
‰‰? A
new
‰‰B E
{
‰‰F G
x
‰‰H I
.
‰‰I J

CarriersId
‰‰J T
,
‰‰T U
x
‰‰V W
.
‰‰W X
RelayPointsId
‰‰X e
}
‰‰f g
)
‰‰g h
;
‰‰h i
table
ÂÂ 
.
ÂÂ 

ForeignKey
ÂÂ $
(
ÂÂ$ %
name
ÊÊ 
:
ÊÊ 
$str
ÊÊ H
,
ÊÊH I
column
ÁÁ 
:
ÁÁ 
x
ÁÁ  !
=>
ÁÁ" $
x
ÁÁ% &
.
ÁÁ& '

CarriersId
ÁÁ' 1
,
ÁÁ1 2
principalTable
ËË &
:
ËË& '
$str
ËË( 2
,
ËË2 3
principalColumn
ÈÈ '
:
ÈÈ' (
$str
ÈÈ) -
,
ÈÈ- .
onDelete
ÍÍ  
:
ÍÍ  !
ReferentialAction
ÍÍ" 3
.
ÍÍ3 4
Restrict
ÍÍ4 <
)
ÍÍ< =
;
ÍÍ= >
table
ÎÎ 
.
ÎÎ 

ForeignKey
ÎÎ $
(
ÎÎ$ %
name
ÏÏ 
:
ÏÏ 
$str
ÏÏ N
,
ÏÏN O
column
ÌÌ 
:
ÌÌ 
x
ÌÌ  !
=>
ÌÌ" $
x
ÌÌ% &
.
ÌÌ& '
RelayPointsId
ÌÌ' 4
,
ÌÌ4 5
principalTable
ÓÓ &
:
ÓÓ& '
$str
ÓÓ( 5
,
ÓÓ5 6
principalColumn
ÔÔ '
:
ÔÔ' (
$str
ÔÔ) -
,
ÔÔ- .
onDelete
  
:
  !
ReferentialAction
" 3
.
3 4
Restrict
4 <
)
< =
;
= >
}
ÒÒ 
)
ÒÒ 
;
ÒÒ 
migrationBuilder
ÛÛ 
.
ÛÛ 
CreateTable
ÛÛ (
(
ÛÛ( )
name
ÙÙ 
:
ÙÙ 
$str
ÙÙ (
,
ÙÙ( )
columns
ıı 
:
ıı 
table
ıı 
=>
ıı !
new
ıı" %
{
ˆˆ 
Id
˜˜ 
=
˜˜ 
table
˜˜ 
.
˜˜ 
Column
˜˜ %
<
˜˜% &
Guid
˜˜& *
>
˜˜* +
(
˜˜+ ,
type
˜˜, 0
:
˜˜0 1
$str
˜˜2 D
,
˜˜D E
nullable
˜˜F N
:
˜˜N O
false
˜˜P U
)
˜˜U V
,
˜˜V W
PricePerKilogram
¯¯ $
=
¯¯% &
table
¯¯' ,
.
¯¯, -
Column
¯¯- 3
<
¯¯3 4
decimal
¯¯4 ;
>
¯¯; <
(
¯¯< =
type
¯¯= A
:
¯¯A B
$str
¯¯C R
,
¯¯R S
	precision
¯¯T ]
:
¯¯] ^
$num
¯¯_ a
,
¯¯a b
scale
¯¯c h
:
¯¯h i
$num
¯¯j k
,
¯¯k l
nullable
¯¯m u
:
¯¯u v
false
¯¯w |
)
¯¯| }
,
¯¯} ~
	MaxWeight
˘˘ 
=
˘˘ 
table
˘˘  %
.
˘˘% &
Column
˘˘& ,
<
˘˘, -
decimal
˘˘- 4
>
˘˘4 5
(
˘˘5 6
type
˘˘6 :
:
˘˘: ;
$str
˘˘< K
,
˘˘K L
	precision
˘˘M V
:
˘˘V W
$num
˘˘X Z
,
˘˘Z [
scale
˘˘\ a
:
˘˘a b
$num
˘˘c d
,
˘˘d e
nullable
˘˘f n
:
˘˘n o
false
˘˘p u
)
˘˘u v
,
˘˘v w 
PricePerCubicMeter
˙˙ &
=
˙˙' (
table
˙˙) .
.
˙˙. /
Column
˙˙/ 5
<
˙˙5 6
decimal
˙˙6 =
>
˙˙= >
(
˙˙> ?
type
˙˙? C
:
˙˙C D
$str
˙˙E T
,
˙˙T U
	precision
˙˙V _
:
˙˙_ `
$num
˙˙a c
,
˙˙c d
scale
˙˙e j
:
˙˙j k
$num
˙˙l m
,
˙˙m n
nullable
˙˙o w
:
˙˙w x
false
˙˙y ~
)
˙˙~ 
,˙˙ Ä
MaxDimension
˚˚  
=
˚˚! "
table
˚˚# (
.
˚˚( )
Column
˚˚) /
<
˚˚/ 0
decimal
˚˚0 7
>
˚˚7 8
(
˚˚8 9
type
˚˚9 =
:
˚˚= >
$str
˚˚? N
,
˚˚N O
	precision
˚˚P Y
:
˚˚Y Z
$num
˚˚[ ]
,
˚˚] ^
scale
˚˚_ d
:
˚˚d e
$num
˚˚f g
,
˚˚g h
nullable
˚˚i q
:
˚˚q r
false
˚˚s x
)
˚˚x y
,
˚˚y z
PricePerKilometer
¸¸ %
=
¸¸& '
table
¸¸( -
.
¸¸- .
Column
¸¸. 4
<
¸¸4 5
decimal
¸¸5 <
>
¸¸< =
(
¸¸= >
type
¸¸> B
:
¸¸B C
$str
¸¸D S
,
¸¸S T
	precision
¸¸U ^
:
¸¸^ _
$num
¸¸` b
,
¸¸b c
scale
¸¸d i
:
¸¸i j
$num
¸¸k l
,
¸¸l m
nullable
¸¸n v
:
¸¸v w
false
¸¸x }
)
¸¸} ~
,
¸¸~ 
RelayPointId
˝˝  
=
˝˝! "
table
˝˝# (
.
˝˝( )
Column
˝˝) /
<
˝˝/ 0
Guid
˝˝0 4
>
˝˝4 5
(
˝˝5 6
type
˝˝6 :
:
˝˝: ;
$str
˝˝< N
,
˝˝N O
nullable
˝˝P X
:
˝˝X Y
false
˝˝Z _
)
˝˝_ `
,
˝˝` a
	CarrierId
˛˛ 
=
˛˛ 
table
˛˛  %
.
˛˛% &
Column
˛˛& ,
<
˛˛, -
Guid
˛˛- 1
>
˛˛1 2
(
˛˛2 3
type
˛˛3 7
:
˛˛7 8
$str
˛˛9 K
,
˛˛K L
nullable
˛˛M U
:
˛˛U V
false
˛˛W \
)
˛˛\ ]
}
ˇˇ 
,
ˇˇ 
constraints
ÄÄ 
:
ÄÄ 
table
ÄÄ "
=>
ÄÄ# %
{
ÅÅ 
table
ÇÇ 
.
ÇÇ 

PrimaryKey
ÇÇ $
(
ÇÇ$ %
$str
ÇÇ% :
,
ÇÇ: ;
x
ÇÇ< =
=>
ÇÇ> @
x
ÇÇA B
.
ÇÇB C
Id
ÇÇC E
)
ÇÇE F
;
ÇÇF G
table
ÉÉ 
.
ÉÉ 

ForeignKey
ÉÉ $
(
ÉÉ$ %
name
ÑÑ 
:
ÑÑ 
$str
ÑÑ F
,
ÑÑF G
column
ÖÖ 
:
ÖÖ 
x
ÖÖ  !
=>
ÖÖ" $
x
ÖÖ% &
.
ÖÖ& '
	CarrierId
ÖÖ' 0
,
ÖÖ0 1
principalTable
ÜÜ &
:
ÜÜ& '
$str
ÜÜ( 2
,
ÜÜ2 3
principalColumn
áá '
:
áá' (
$str
áá) -
,
áá- .
onDelete
àà  
:
àà  !
ReferentialAction
àà" 3
.
àà3 4
Restrict
àà4 <
)
àà< =
;
àà= >
table
ââ 
.
ââ 

ForeignKey
ââ $
(
ââ$ %
name
ää 
:
ää 
$str
ää L
,
ääL M
column
ãã 
:
ãã 
x
ãã  !
=>
ãã" $
x
ãã% &
.
ãã& '
RelayPointId
ãã' 3
,
ãã3 4
principalTable
åå &
:
åå& '
$str
åå( 5
,
åå5 6
principalColumn
çç '
:
çç' (
$str
çç) -
,
çç- .
onDelete
éé  
:
éé  !
ReferentialAction
éé" 3
.
éé3 4
Restrict
éé4 <
)
éé< =
;
éé= >
}
èè 
)
èè 
;
èè 
migrationBuilder
ëë 
.
ëë 
CreateTable
ëë (
(
ëë( )
name
íí 
:
íí 
$str
íí +
,
íí+ ,
columns
ìì 
:
ìì 
table
ìì 
=>
ìì !
new
ìì" %
{
îî 
Id
ïï 
=
ïï 
table
ïï 
.
ïï 
Column
ïï %
<
ïï% &
Guid
ïï& *
>
ïï* +
(
ïï+ ,
type
ïï, 0
:
ïï0 1
$str
ïï2 D
,
ïïD E
nullable
ïïF N
:
ïïN O
false
ïïP U
)
ïïU V
,
ïïV W
	DayOfWeek
ññ 
=
ññ 
table
ññ  %
.
ññ% &
Column
ññ& ,
<
ññ, -
int
ññ- 0
>
ññ0 1
(
ññ1 2
type
ññ2 6
:
ññ6 7
$str
ññ8 =
,
ññ= >
nullable
ññ? G
:
ññG H
false
ññI N
)
ññN O
,
ññO P
	StartTime
óó 
=
óó 
table
óó  %
.
óó% &
Column
óó& ,
<
óó, -
DateTime
óó- 5
>
óó5 6
(
óó6 7
type
óó7 ;
:
óó; <
$str
óó= H
,
óóH I
nullable
óóJ R
:
óóR S
false
óóT Y
)
óóY Z
,
óóZ [
EndTime
òò 
=
òò 
table
òò #
.
òò# $
Column
òò$ *
<
òò* +
DateTime
òò+ 3
>
òò3 4
(
òò4 5
type
òò5 9
:
òò9 :
$str
òò; F
,
òòF G
nullable
òòH P
:
òòP Q
false
òòR W
)
òòW X
,
òòX Y
RelayPointId
ôô  
=
ôô! "
table
ôô# (
.
ôô( )
Column
ôô) /
<
ôô/ 0
Guid
ôô0 4
>
ôô4 5
(
ôô5 6
type
ôô6 :
:
ôô: ;
$str
ôô< N
,
ôôN O
nullable
ôôP X
:
ôôX Y
false
ôôZ _
)
ôô_ `
}
öö 
,
öö 
constraints
õõ 
:
õõ 
table
õõ "
=>
õõ# %
{
úú 
table
ùù 
.
ùù 

PrimaryKey
ùù $
(
ùù$ %
$str
ùù% =
,
ùù= >
x
ùù? @
=>
ùùA C
x
ùùD E
.
ùùE F
Id
ùùF H
)
ùùH I
;
ùùI J
table
ûû 
.
ûû 

ForeignKey
ûû $
(
ûû$ %
name
üü 
:
üü 
$str
üü O
,
üüO P
column
†† 
:
†† 
x
††  !
=>
††" $
x
††% &
.
††& '
RelayPointId
††' 3
,
††3 4
principalTable
°° &
:
°°& '
$str
°°( 5
,
°°5 6
principalColumn
¢¢ '
:
¢¢' (
$str
¢¢) -
,
¢¢- .
onDelete
££  
:
££  !
ReferentialAction
££" 3
.
££3 4
Restrict
££4 <
)
££< =
;
££= >
}
§§ 
)
§§ 
;
§§ 
migrationBuilder
¶¶ 
.
¶¶ 
CreateTable
¶¶ (
(
¶¶( )
name
ßß 
:
ßß 
$str
ßß !
,
ßß! "
columns
®® 
:
®® 
table
®® 
=>
®® !
new
®®" %
{
©© 
Id
™™ 
=
™™ 
table
™™ 
.
™™ 
Column
™™ %
<
™™% &
Guid
™™& *
>
™™* +
(
™™+ ,
type
™™, 0
:
™™0 1
$str
™™2 D
,
™™D E
nullable
™™F N
:
™™N O
false
™™P U
)
™™U V
,
™™V W
OwnerId
´´ 
=
´´ 
table
´´ #
.
´´# $
Column
´´$ *
<
´´* +
Guid
´´+ /
>
´´/ 0
(
´´0 1
type
´´1 5
:
´´5 6
$str
´´7 I
,
´´I J
nullable
´´K S
:
´´S T
false
´´U Z
)
´´Z [
,
´´[ \
IsValidated
¨¨ 
=
¨¨  !
table
¨¨" '
.
¨¨' (
Column
¨¨( .
<
¨¨. /
bool
¨¨/ 3
>
¨¨3 4
(
¨¨4 5
type
¨¨5 9
:
¨¨9 :
$str
¨¨; @
,
¨¨@ A
nullable
¨¨B J
:
¨¨J K
false
¨¨L Q
)
¨¨Q R
,
¨¨R S
IsDraft
≠≠ 
=
≠≠ 
table
≠≠ #
.
≠≠# $
Column
≠≠$ *
<
≠≠* +
bool
≠≠+ /
>
≠≠/ 0
(
≠≠0 1
type
≠≠1 5
:
≠≠5 6
$str
≠≠7 <
,
≠≠< =
nullable
≠≠> F
:
≠≠F G
false
≠≠H M
)
≠≠M N
,
≠≠N O
IsDelivered
ÆÆ 
=
ÆÆ  !
table
ÆÆ" '
.
ÆÆ' (
Column
ÆÆ( .
<
ÆÆ. /
bool
ÆÆ/ 3
>
ÆÆ3 4
(
ÆÆ4 5
type
ÆÆ5 9
:
ÆÆ9 :
$str
ÆÆ; @
,
ÆÆ@ A
nullable
ÆÆB J
:
ÆÆJ K
false
ÆÆL Q
)
ÆÆQ R
,
ÆÆR S
	IsShipper
ØØ 
=
ØØ 
table
ØØ  %
.
ØØ% &
Column
ØØ& ,
<
ØØ, -
bool
ØØ- 1
>
ØØ1 2
(
ØØ2 3
type
ØØ3 7
:
ØØ7 8
$str
ØØ9 >
,
ØØ> ?
nullable
ØØ@ H
:
ØØH I
false
ØØJ O
)
ØØO P
,
ØØP Q
WithInsurance
∞∞ !
=
∞∞" #
table
∞∞$ )
.
∞∞) *
Column
∞∞* 0
<
∞∞0 1
bool
∞∞1 5
>
∞∞5 6
(
∞∞6 7
type
∞∞7 ;
:
∞∞; <
$str
∞∞= B
,
∞∞B C
nullable
∞∞D L
:
∞∞L M
false
∞∞N S
)
∞∞S T
,
∞∞T U
FromPickupDate
±± "
=
±±# $
table
±±% *
.
±±* +
Column
±±+ 1
<
±±1 2
DateTime
±±2 :
>
±±: ;
(
±±; <
type
±±< @
:
±±@ A
$str
±±B M
,
±±M N
nullable
±±O W
:
±±W X
false
±±Y ^
)
±±^ _
,
±±_ `
ToPickupDate
≤≤  
=
≤≤! "
table
≤≤# (
.
≤≤( )
Column
≤≤) /
<
≤≤/ 0
DateTime
≤≤0 8
>
≤≤8 9
(
≤≤9 :
type
≤≤: >
:
≤≤> ?
$str
≤≤@ K
,
≤≤K L
nullable
≤≤M U
:
≤≤U V
false
≤≤W \
)
≤≤\ ]
,
≤≤] ^
	ShipperId
≥≥ 
=
≥≥ 
table
≥≥  %
.
≥≥% &
Column
≥≥& ,
<
≥≥, -
Guid
≥≥- 1
>
≥≥1 2
(
≥≥2 3
type
≥≥3 7
:
≥≥7 8
$str
≥≥9 K
,
≥≥K L
nullable
≥≥M U
:
≥≥U V
false
≥≥W \
)
≥≥\ ]
,
≥≥] ^
RecipientId
¥¥ 
=
¥¥  !
table
¥¥" '
.
¥¥' (
Column
¥¥( .
<
¥¥. /
Guid
¥¥/ 3
>
¥¥3 4
(
¥¥4 5
type
¥¥5 9
:
¥¥9 :
$str
¥¥; M
,
¥¥M N
nullable
¥¥O W
:
¥¥W X
false
¥¥Y ^
)
¥¥^ _
,
¥¥_ `
InsuranceId
µµ 
=
µµ  !
table
µµ" '
.
µµ' (
Column
µµ( .
<
µµ. /
Guid
µµ/ 3
>
µµ3 4
(
µµ4 5
type
µµ5 9
:
µµ9 :
$str
µµ; M
,
µµM N
nullable
µµO W
:
µµW X
false
µµY ^
)
µµ^ _
,
µµ_ `
	CarrierId
∂∂ 
=
∂∂ 
table
∂∂  %
.
∂∂% &
Column
∂∂& ,
<
∂∂, -
Guid
∂∂- 1
>
∂∂1 2
(
∂∂2 3
type
∂∂3 7
:
∂∂7 8
$str
∂∂9 K
,
∂∂K L
nullable
∂∂M U
:
∂∂U V
true
∂∂W [
)
∂∂[ \
,
∂∂\ ]
PickupPointId
∑∑ !
=
∑∑" #
table
∑∑$ )
.
∑∑) *
Column
∑∑* 0
<
∑∑0 1
Guid
∑∑1 5
>
∑∑5 6
(
∑∑6 7
type
∑∑7 ;
:
∑∑; <
$str
∑∑= O
,
∑∑O P
nullable
∑∑Q Y
:
∑∑Y Z
true
∑∑[ _
)
∑∑_ `
,
∑∑` a
RelayPointId
∏∏  
=
∏∏! "
table
∏∏# (
.
∏∏( )
Column
∏∏) /
<
∏∏/ 0
Guid
∏∏0 4
>
∏∏4 5
(
∏∏5 6
type
∏∏6 :
:
∏∏: ;
$str
∏∏< N
,
∏∏N O
nullable
∏∏P X
:
∏∏X Y
true
∏∏Z ^
)
∏∏^ _
,
∏∏_ `
	PackageId
ππ 
=
ππ 
table
ππ  %
.
ππ% &
Column
ππ& ,
<
ππ, -
Guid
ππ- 1
>
ππ1 2
(
ππ2 3
type
ππ3 7
:
ππ7 8
$str
ππ9 K
,
ππK L
nullable
ππM U
:
ππU V
false
ππW \
)
ππ\ ]
,
ππ] ^
PaymentMethodId
∫∫ #
=
∫∫$ %
table
∫∫& +
.
∫∫+ ,
Column
∫∫, 2
<
∫∫2 3
Guid
∫∫3 7
>
∫∫7 8
(
∫∫8 9
type
∫∫9 =
:
∫∫= >
$str
∫∫? Q
,
∫∫Q R
nullable
∫∫S [
:
∫∫[ \
false
∫∫] b
)
∫∫b c
,
∫∫c d
	CreatedAt
ªª 
=
ªª 
table
ªª  %
.
ªª% &
Column
ªª& ,
<
ªª, -
DateTime
ªª- 5
>
ªª5 6
(
ªª6 7
type
ªª7 ;
:
ªª; <
$str
ªª= H
,
ªªH I
nullable
ªªJ R
:
ªªR S
true
ªªT X
)
ªªX Y
,
ªªY Z
	UpdatedAt
ºº 
=
ºº 
table
ºº  %
.
ºº% &
Column
ºº& ,
<
ºº, -
DateTime
ºº- 5
>
ºº5 6
(
ºº6 7
type
ºº7 ;
:
ºº; <
$str
ºº= H
,
ººH I
nullable
ººJ R
:
ººR S
true
ººT X
)
ººX Y
,
ººY Z
	CreatedBy
ΩΩ 
=
ΩΩ 
table
ΩΩ  %
.
ΩΩ% &
Column
ΩΩ& ,
<
ΩΩ, -
string
ΩΩ- 3
>
ΩΩ3 4
(
ΩΩ4 5
type
ΩΩ5 9
:
ΩΩ9 :
$str
ΩΩ; J
,
ΩΩJ K
nullable
ΩΩL T
:
ΩΩT U
true
ΩΩV Z
)
ΩΩZ [
,
ΩΩ[ \
	UpdatedBy
ææ 
=
ææ 
table
ææ  %
.
ææ% &
Column
ææ& ,
<
ææ, -
string
ææ- 3
>
ææ3 4
(
ææ4 5
type
ææ5 9
:
ææ9 :
$str
ææ; J
,
ææJ K
nullable
ææL T
:
ææT U
true
ææV Z
)
ææZ [
}
øø 
,
øø 
constraints
¿¿ 
:
¿¿ 
table
¿¿ "
=>
¿¿# %
{
¡¡ 
table
¬¬ 
.
¬¬ 

PrimaryKey
¬¬ $
(
¬¬$ %
$str
¬¬% 3
,
¬¬3 4
x
¬¬5 6
=>
¬¬7 9
x
¬¬: ;
.
¬¬; <
Id
¬¬< >
)
¬¬> ?
;
¬¬? @
table
√√ 
.
√√ 

ForeignKey
√√ $
(
√√$ %
name
ƒƒ 
:
ƒƒ 
$str
ƒƒ ?
,
ƒƒ? @
column
≈≈ 
:
≈≈ 
x
≈≈  !
=>
≈≈" $
x
≈≈% &
.
≈≈& '
	CarrierId
≈≈' 0
,
≈≈0 1
principalTable
∆∆ &
:
∆∆& '
$str
∆∆( 2
,
∆∆2 3
principalColumn
«« '
:
««' (
$str
««) -
)
««- .
;
««. /
table
»» 
.
»» 

ForeignKey
»» $
(
»»$ %
name
…… 
:
…… 
$str
…… C
,
……C D
column
   
:
   
x
    !
=>
  " $
x
  % &
.
  & '
InsuranceId
  ' 2
,
  2 3
principalTable
ÀÀ &
:
ÀÀ& '
$str
ÀÀ( 4
,
ÀÀ4 5
principalColumn
ÃÃ '
:
ÃÃ' (
$str
ÃÃ) -
,
ÃÃ- .
onDelete
ÕÕ  
:
ÕÕ  !
ReferentialAction
ÕÕ" 3
.
ÕÕ3 4
Restrict
ÕÕ4 <
)
ÕÕ< =
;
ÕÕ= >
table
ŒŒ 
.
ŒŒ 

ForeignKey
ŒŒ $
(
ŒŒ$ %
name
œœ 
:
œœ 
$str
œœ ?
,
œœ? @
column
–– 
:
–– 
x
––  !
=>
––" $
x
––% &
.
––& '
	PackageId
––' 0
,
––0 1
principalTable
—— &
:
——& '
$str
——( 2
,
——2 3
principalColumn
““ '
:
““' (
$str
““) -
,
““- .
onDelete
””  
:
””  !
ReferentialAction
””" 3
.
””3 4
Restrict
””4 <
)
””< =
;
””= >
table
‘‘ 
.
‘‘ 

ForeignKey
‘‘ $
(
‘‘$ %
name
’’ 
:
’’ 
$str
’’ K
,
’’K L
column
÷÷ 
:
÷÷ 
x
÷÷  !
=>
÷÷" $
x
÷÷% &
.
÷÷& '
PaymentMethodId
÷÷' 6
,
÷÷6 7
principalTable
◊◊ &
:
◊◊& '
$str
◊◊( 8
,
◊◊8 9
principalColumn
ÿÿ '
:
ÿÿ' (
$str
ÿÿ) -
,
ÿÿ- .
onDelete
ŸŸ  
:
ŸŸ  !
ReferentialAction
ŸŸ" 3
.
ŸŸ3 4
Restrict
ŸŸ4 <
)
ŸŸ< =
;
ŸŸ= >
table
⁄⁄ 
.
⁄⁄ 

ForeignKey
⁄⁄ $
(
⁄⁄$ %
name
€€ 
:
€€ 
$str
€€ @
,
€€@ A
column
‹‹ 
:
‹‹ 
x
‹‹  !
=>
‹‹" $
x
‹‹% &
.
‹‹& '
RecipientId
‹‹' 2
,
‹‹2 3
principalTable
›› &
:
››& '
$str
››( 1
,
››1 2
principalColumn
ﬁﬁ '
:
ﬁﬁ' (
$str
ﬁﬁ) -
,
ﬁﬁ- .
onDelete
ﬂﬂ  
:
ﬂﬂ  !
ReferentialAction
ﬂﬂ" 3
.
ﬂﬂ3 4
Restrict
ﬂﬂ4 <
)
ﬂﬂ< =
;
ﬂﬂ= >
table
‡‡ 
.
‡‡ 

ForeignKey
‡‡ $
(
‡‡$ %
name
·· 
:
·· 
$str
·· >
,
··> ?
column
‚‚ 
:
‚‚ 
x
‚‚  !
=>
‚‚" $
x
‚‚% &
.
‚‚& '
	ShipperId
‚‚' 0
,
‚‚0 1
principalTable
„„ &
:
„„& '
$str
„„( 1
,
„„1 2
principalColumn
‰‰ '
:
‰‰' (
$str
‰‰) -
,
‰‰- .
onDelete
ÂÂ  
:
ÂÂ  !
ReferentialAction
ÂÂ" 3
.
ÂÂ3 4
Restrict
ÂÂ4 <
)
ÂÂ< =
;
ÂÂ= >
table
ÊÊ 
.
ÊÊ 

ForeignKey
ÊÊ $
(
ÊÊ$ %
name
ÁÁ 
:
ÁÁ 
$str
ÁÁ F
,
ÁÁF G
column
ËË 
:
ËË 
x
ËË  !
=>
ËË" $
x
ËË% &
.
ËË& '
PickupPointId
ËË' 4
,
ËË4 5
principalTable
ÈÈ &
:
ÈÈ& '
$str
ÈÈ( 5
,
ÈÈ5 6
principalColumn
ÍÍ '
:
ÍÍ' (
$str
ÍÍ) -
)
ÍÍ- .
;
ÍÍ. /
table
ÎÎ 
.
ÎÎ 

ForeignKey
ÎÎ $
(
ÎÎ$ %
name
ÏÏ 
:
ÏÏ 
$str
ÏÏ E
,
ÏÏE F
column
ÌÌ 
:
ÌÌ 
x
ÌÌ  !
=>
ÌÌ" $
x
ÌÌ% &
.
ÌÌ& '
RelayPointId
ÌÌ' 3
,
ÌÌ3 4
principalTable
ÓÓ &
:
ÓÓ& '
$str
ÓÓ( 5
,
ÓÓ5 6
principalColumn
ÔÔ '
:
ÔÔ' (
$str
ÔÔ) -
)
ÔÔ- .
;
ÔÔ. /
}
 
)
 
;
 
migrationBuilder
ÚÚ 
.
ÚÚ 
CreateTable
ÚÚ (
(
ÚÚ( )
name
ÛÛ 
:
ÛÛ 
$str
ÛÛ  
,
ÛÛ  !
columns
ÙÙ 
:
ÙÙ 
table
ÙÙ 
=>
ÙÙ !
new
ÙÙ" %
{
ıı 
Id
ˆˆ 
=
ˆˆ 
table
ˆˆ 
.
ˆˆ 
Column
ˆˆ %
<
ˆˆ% &
Guid
ˆˆ& *
>
ˆˆ* +
(
ˆˆ+ ,
type
ˆˆ, 0
:
ˆˆ0 1
$str
ˆˆ2 D
,
ˆˆD E
nullable
ˆˆF N
:
ˆˆN O
false
ˆˆP U
)
ˆˆU V
,
ˆˆV W
Amount
˜˜ 
=
˜˜ 
table
˜˜ "
.
˜˜" #
Column
˜˜# )
<
˜˜) *
decimal
˜˜* 1
>
˜˜1 2
(
˜˜2 3
type
˜˜3 7
:
˜˜7 8
$str
˜˜9 H
,
˜˜H I
	precision
˜˜J S
:
˜˜S T
$num
˜˜U W
,
˜˜W X
scale
˜˜Y ^
:
˜˜^ _
$num
˜˜` a
,
˜˜a b
nullable
˜˜c k
:
˜˜k l
false
˜˜m r
)
˜˜r s
,
˜˜s t
PaymentDate
¯¯ 
=
¯¯  !
table
¯¯" '
.
¯¯' (
Column
¯¯( .
<
¯¯. /
DateTime
¯¯/ 7
>
¯¯7 8
(
¯¯8 9
type
¯¯9 =
:
¯¯= >
$str
¯¯? J
,
¯¯J K
nullable
¯¯L T
:
¯¯T U
false
¯¯V [
)
¯¯[ \
,
¯¯\ ]
PaymentMethodId
˘˘ #
=
˘˘$ %
table
˘˘& +
.
˘˘+ ,
Column
˘˘, 2
<
˘˘2 3
Guid
˘˘3 7
>
˘˘7 8
(
˘˘8 9
type
˘˘9 =
:
˘˘= >
$str
˘˘? Q
,
˘˘Q R
nullable
˘˘S [
:
˘˘[ \
false
˘˘] b
)
˘˘b c
,
˘˘c d

ShipmentId
˙˙ 
=
˙˙  
table
˙˙! &
.
˙˙& '
Column
˙˙' -
<
˙˙- .
Guid
˙˙. 2
>
˙˙2 3
(
˙˙3 4
type
˙˙4 8
:
˙˙8 9
$str
˙˙: L
,
˙˙L M
nullable
˙˙N V
:
˙˙V W
false
˙˙X ]
)
˙˙] ^
}
˚˚ 
,
˚˚ 
constraints
¸¸ 
:
¸¸ 
table
¸¸ "
=>
¸¸# %
{
˝˝ 
table
˛˛ 
.
˛˛ 

PrimaryKey
˛˛ $
(
˛˛$ %
$str
˛˛% 2
,
˛˛2 3
x
˛˛4 5
=>
˛˛6 8
x
˛˛9 :
.
˛˛: ;
Id
˛˛; =
)
˛˛= >
;
˛˛> ?
table
ˇˇ 
.
ˇˇ 

ForeignKey
ˇˇ $
(
ˇˇ$ %
name
ÄÄ 
:
ÄÄ 
$str
ÄÄ J
,
ÄÄJ K
column
ÅÅ 
:
ÅÅ 
x
ÅÅ  !
=>
ÅÅ" $
x
ÅÅ% &
.
ÅÅ& '
PaymentMethodId
ÅÅ' 6
,
ÅÅ6 7
principalTable
ÇÇ &
:
ÇÇ& '
$str
ÇÇ( 8
,
ÇÇ8 9
principalColumn
ÉÉ '
:
ÉÉ' (
$str
ÉÉ) -
,
ÉÉ- .
onDelete
ÑÑ  
:
ÑÑ  !
ReferentialAction
ÑÑ" 3
.
ÑÑ3 4
Restrict
ÑÑ4 <
)
ÑÑ< =
;
ÑÑ= >
table
ÖÖ 
.
ÖÖ 

ForeignKey
ÖÖ $
(
ÖÖ$ %
name
ÜÜ 
:
ÜÜ 
$str
ÜÜ @
,
ÜÜ@ A
column
áá 
:
áá 
x
áá  !
=>
áá" $
x
áá% &
.
áá& '

ShipmentId
áá' 1
,
áá1 2
principalTable
àà &
:
àà& '
$str
àà( 3
,
àà3 4
principalColumn
ââ '
:
ââ' (
$str
ââ) -
,
ââ- .
onDelete
ää  
:
ää  !
ReferentialAction
ää" 3
.
ää3 4
Restrict
ää4 <
)
ää< =
;
ää= >
}
ãã 
)
ãã 
;
ãã 
migrationBuilder
çç 
.
çç 
CreateTable
çç (
(
çç( )
name
éé 
:
éé 
$str
éé 
,
éé 
columns
èè 
:
èè 
table
èè 
=>
èè !
new
èè" %
{
êê 
Id
ëë 
=
ëë 
table
ëë 
.
ëë 
Column
ëë %
<
ëë% &
Guid
ëë& *
>
ëë* +
(
ëë+ ,
type
ëë, 0
:
ëë0 1
$str
ëë2 D
,
ëëD E
nullable
ëëF N
:
ëëN O
false
ëëP U
)
ëëU V
,
ëëV W
Name
íí 
=
íí 
table
íí  
.
íí  !
Column
íí! '
<
íí' (
string
íí( .
>
íí. /
(
íí/ 0
type
íí0 4
:
íí4 5
$str
íí6 E
,
ííE F
	maxLength
ííG P
:
ííP Q
$num
ííR U
,
ííU V
nullable
ííW _
:
íí_ `
false
íía f
)
ííf g
,
ííg h
Url
ìì 
=
ìì 
table
ìì 
.
ìì  
Column
ìì  &
<
ìì& '
string
ìì' -
>
ìì- .
(
ìì. /
type
ìì/ 3
:
ìì3 4
$str
ìì5 D
,
ììD E
	maxLength
ììF O
:
ììO P
$num
ììQ T
,
ììT U
nullable
ììV ^
:
ìì^ _
false
ìì` e
)
ììe f
,
ììf g

ShipmentId
îî 
=
îî  
table
îî! &
.
îî& '
Column
îî' -
<
îî- .
Guid
îî. 2
>
îî2 3
(
îî3 4
type
îî4 8
:
îî8 9
$str
îî: L
,
îîL M
nullable
îîN V
:
îîV W
true
îîX \
)
îî\ ]
}
ïï 
,
ïï 
constraints
ññ 
:
ññ 
table
ññ "
=>
ññ# %
{
óó 
table
òò 
.
òò 

PrimaryKey
òò $
(
òò$ %
$str
òò% 0
,
òò0 1
x
òò2 3
=>
òò4 6
x
òò7 8
.
òò8 9
Id
òò9 ;
)
òò; <
;
òò< =
table
ôô 
.
ôô 

ForeignKey
ôô $
(
ôô$ %
name
öö 
:
öö 
$str
öö >
,
öö> ?
column
õõ 
:
õõ 
x
õõ  !
=>
õõ" $
x
õõ% &
.
õõ& '

ShipmentId
õõ' 1
,
õõ1 2
principalTable
úú &
:
úú& '
$str
úú( 3
,
úú3 4
principalColumn
ùù '
:
ùù' (
$str
ùù) -
)
ùù- .
;
ùù. /
}
ûû 
)
ûû 
;
ûû 
migrationBuilder
†† 
.
†† 
CreateIndex
†† (
(
††( )
name
°° 
:
°° 
$str
°° :
,
°°: ;
table
¢¢ 
:
¢¢ 
$str
¢¢ *
,
¢¢* +
column
££ 
:
££ 
$str
££ '
)
££' (
;
££( )
migrationBuilder
•• 
.
•• 
CreateIndex
•• (
(
••( )
name
¶¶ 
:
¶¶ 
$str
¶¶ ,
,
¶¶, -
table
ßß 
:
ßß 
$str
ßß !
,
ßß! "
column
®® 
:
®® 
$str
®® "
)
®®" #
;
®®# $
migrationBuilder
™™ 
.
™™ 
CreateIndex
™™ (
(
™™( )
name
´´ 
:
´´ 
$str
´´ -
,
´´- .
table
¨¨ 
:
¨¨ 
$str
¨¨ !
,
¨¨! "
column
≠≠ 
:
≠≠ 
$str
≠≠ #
)
≠≠# $
;
≠≠$ %
migrationBuilder
ØØ 
.
ØØ 
CreateIndex
ØØ (
(
ØØ( )
name
∞∞ 
:
∞∞ 
$str
∞∞ .
,
∞∞. /
table
±± 
:
±± 
$str
±± #
,
±±# $
column
≤≤ 
:
≤≤ 
$str
≤≤ "
)
≤≤" #
;
≤≤# $
migrationBuilder
¥¥ 
.
¥¥ 
CreateIndex
¥¥ (
(
¥¥( )
name
µµ 
:
µµ 
$str
µµ /
,
µµ/ 0
table
∂∂ 
:
∂∂ 
$str
∂∂ #
,
∂∂# $
column
∑∑ 
:
∑∑ 
$str
∑∑ #
)
∑∑# $
;
∑∑$ %
migrationBuilder
ππ 
.
ππ 
CreateIndex
ππ (
(
ππ( )
name
∫∫ 
:
∫∫ 
$str
∫∫ 3
,
∫∫3 4
table
ªª 
:
ªª 
$str
ªª !
,
ªª! "
column
ºº 
:
ºº 
$str
ºº )
)
ºº) *
;
ºº* +
migrationBuilder
ææ 
.
ææ 
CreateIndex
ææ (
(
ææ( )
name
øø 
:
øø 
$str
øø .
,
øø. /
table
¿¿ 
:
¿¿ 
$str
¿¿ !
,
¿¿! "
column
¡¡ 
:
¡¡ 
$str
¡¡ $
)
¡¡$ %
;
¡¡% &
migrationBuilder
√√ 
.
√√ 
CreateIndex
√√ (
(
√√( )
name
ƒƒ 
:
ƒƒ 
$str
ƒƒ +
,
ƒƒ+ ,
table
≈≈ 
:
≈≈ 
$str
≈≈  
,
≈≈  !
column
∆∆ 
:
∆∆ 
$str
∆∆ "
)
∆∆" #
;
∆∆# $
migrationBuilder
»» 
.
»» 
CreateIndex
»» (
(
»»( )
name
…… 
:
…… 
$str
…… ,
,
……, -
table
   
:
   
$str
    
,
    !
column
ÀÀ 
:
ÀÀ 
$str
ÀÀ #
)
ÀÀ# $
;
ÀÀ$ %
migrationBuilder
ÕÕ 
.
ÕÕ 
CreateIndex
ÕÕ (
(
ÕÕ( )
name
ŒŒ 
:
ŒŒ 
$str
ŒŒ ,
,
ŒŒ, -
table
œœ 
:
œœ 
$str
œœ 
,
œœ  
column
–– 
:
–– 
$str
–– $
)
––$ %
;
––% &
migrationBuilder
““ 
.
““ 
CreateIndex
““ (
(
““( )
name
”” 
:
”” 
$str
”” 5
,
””5 6
table
‘‘ 
:
‘‘ 
$str
‘‘ )
,
‘‘) *
column
’’ 
:
’’ 
$str
’’ #
)
’’# $
;
’’$ %
migrationBuilder
◊◊ 
.
◊◊ 
CreateIndex
◊◊ (
(
◊◊( )
name
ÿÿ 
:
ÿÿ 
$str
ÿÿ 8
,
ÿÿ8 9
table
ŸŸ 
:
ŸŸ 
$str
ŸŸ )
,
ŸŸ) *
column
⁄⁄ 
:
⁄⁄ 
$str
⁄⁄ &
)
⁄⁄& '
;
⁄⁄' (
migrationBuilder
‹‹ 
.
‹‹ 
CreateIndex
‹‹ (
(
‹‹( )
name
›› 
:
›› 
$str
›› /
,
››/ 0
table
ﬁﬁ 
:
ﬁﬁ 
$str
ﬁﬁ $
,
ﬁﬁ$ %
column
ﬂﬂ 
:
ﬂﬂ 
$str
ﬂﬂ "
)
ﬂﬂ" #
;
ﬂﬂ# $
migrationBuilder
·· 
.
·· 
CreateIndex
·· (
(
··( )
name
‚‚ 
:
‚‚ 
$str
‚‚ 0
,
‚‚0 1
table
„„ 
:
„„ 
$str
„„ $
,
„„$ %
column
‰‰ 
:
‰‰ 
$str
‰‰ #
)
‰‰# $
;
‰‰$ %
migrationBuilder
ÊÊ 
.
ÊÊ 
CreateIndex
ÊÊ (
(
ÊÊ( )
name
ÁÁ 
:
ÁÁ 
$str
ÁÁ ;
,
ÁÁ; <
table
ËË 
:
ËË 
$str
ËË ,
,
ËË, -
column
ÈÈ 
:
ÈÈ 
$str
ÈÈ &
)
ÈÈ& '
;
ÈÈ' (
migrationBuilder
ÎÎ 
.
ÎÎ 
CreateIndex
ÎÎ (
(
ÎÎ( )
name
ÏÏ 
:
ÏÏ 
$str
ÏÏ .
,
ÏÏ. /
table
ÌÌ 
:
ÌÌ 
$str
ÌÌ "
,
ÌÌ" #
column
ÓÓ 
:
ÓÓ 
$str
ÓÓ #
)
ÓÓ# $
;
ÓÓ$ %
migrationBuilder
 
.
 
CreateIndex
 (
(
( )
name
ÒÒ 
:
ÒÒ 
$str
ÒÒ 0
,
ÒÒ0 1
table
ÚÚ 
:
ÚÚ 
$str
ÚÚ "
,
ÚÚ" #
column
ÛÛ 
:
ÛÛ 
$str
ÛÛ %
)
ÛÛ% &
;
ÛÛ& '
migrationBuilder
ıı 
.
ıı 
CreateIndex
ıı (
(
ıı( )
name
ˆˆ 
:
ˆˆ 
$str
ˆˆ .
,
ˆˆ. /
table
˜˜ 
:
˜˜ 
$str
˜˜ "
,
˜˜" #
column
¯¯ 
:
¯¯ 
$str
¯¯ #
)
¯¯# $
;
¯¯$ %
migrationBuilder
˙˙ 
.
˙˙ 
CreateIndex
˙˙ (
(
˙˙( )
name
˚˚ 
:
˚˚ 
$str
˚˚ 4
,
˚˚4 5
table
¸¸ 
:
¸¸ 
$str
¸¸ "
,
¸¸" #
column
˝˝ 
:
˝˝ 
$str
˝˝ )
)
˝˝) *
;
˝˝* +
migrationBuilder
ˇˇ 
.
ˇˇ 
CreateIndex
ˇˇ (
(
ˇˇ( )
name
ÄÄ 
:
ÄÄ 
$str
ÄÄ 2
,
ÄÄ2 3
table
ÅÅ 
:
ÅÅ 
$str
ÅÅ "
,
ÅÅ" #
column
ÇÇ 
:
ÇÇ 
$str
ÇÇ '
)
ÇÇ' (
;
ÇÇ( )
migrationBuilder
ÑÑ 
.
ÑÑ 
CreateIndex
ÑÑ (
(
ÑÑ( )
name
ÖÖ 
:
ÖÖ 
$str
ÖÖ 0
,
ÖÖ0 1
table
ÜÜ 
:
ÜÜ 
$str
ÜÜ "
,
ÜÜ" #
column
áá 
:
áá 
$str
áá %
)
áá% &
;
áá& '
migrationBuilder
ââ 
.
ââ 
CreateIndex
ââ (
(
ââ( )
name
ää 
:
ää 
$str
ää 1
,
ää1 2
table
ãã 
:
ãã 
$str
ãã "
,
ãã" #
column
åå 
:
åå 
$str
åå &
)
åå& '
;
åå' (
migrationBuilder
éé 
.
éé 
CreateIndex
éé (
(
éé( )
name
èè 
:
èè 
$str
èè .
,
èè. /
table
êê 
:
êê 
$str
êê "
,
êê" #
column
ëë 
:
ëë 
$str
ëë #
)
ëë# $
;
ëë$ %
}
íí 	
	protected
ïï 
override
ïï 
void
ïï 
Down
ïï  $
(
ïï$ %
MigrationBuilder
ïï% 5
migrationBuilder
ïï6 F
)
ïïF G
{
ññ 	
migrationBuilder
óó 
.
óó 
	DropTable
óó &
(
óó& '
name
òò 
:
òò 
$str
òò )
)
òò) *
;
òò* +
migrationBuilder
öö 
.
öö 
	DropTable
öö &
(
öö& '
name
õõ 
:
õõ 
$str
õõ $
)
õõ$ %
;
õõ% &
migrationBuilder
ùù 
.
ùù 
	DropTable
ùù &
(
ùù& '
name
ûû 
:
ûû 
$str
ûû  
)
ûû  !
;
ûû! "
migrationBuilder
†† 
.
†† 
	DropTable
†† &
(
††& '
name
°° 
:
°° 
$str
°° 
)
°° 
;
°°  
migrationBuilder
££ 
.
££ 
	DropTable
££ &
(
££& '
name
§§ 
:
§§ 
$str
§§ (
)
§§( )
;
§§) *
migrationBuilder
¶¶ 
.
¶¶ 
	DropTable
¶¶ &
(
¶¶& '
name
ßß 
:
ßß 
$str
ßß +
)
ßß+ ,
;
ßß, -
migrationBuilder
©© 
.
©© 
	DropTable
©© &
(
©©& '
name
™™ 
:
™™ 
$str
™™ !
)
™™! "
;
™™" #
migrationBuilder
¨¨ 
.
¨¨ 
	DropTable
¨¨ &
(
¨¨& '
name
≠≠ 
:
≠≠ 
$str
≠≠  
)
≠≠  !
;
≠≠! "
migrationBuilder
ØØ 
.
ØØ 
	DropTable
ØØ &
(
ØØ& '
name
∞∞ 
:
∞∞ 
$str
∞∞ "
)
∞∞" #
;
∞∞# $
migrationBuilder
≤≤ 
.
≤≤ 
	DropTable
≤≤ &
(
≤≤& '
name
≥≥ 
:
≥≥ 
$str
≥≥  
)
≥≥  !
;
≥≥! "
migrationBuilder
µµ 
.
µµ 
	DropTable
µµ &
(
µµ& '
name
∂∂ 
:
∂∂ 
$str
∂∂ &
)
∂∂& '
;
∂∂' (
migrationBuilder
∏∏ 
.
∏∏ 
	DropTable
∏∏ &
(
∏∏& '
name
ππ 
:
ππ 
$str
ππ 
)
ππ  
;
ππ  !
migrationBuilder
ªª 
.
ªª 
	DropTable
ªª &
(
ªª& '
name
ºº 
:
ºº 
$str
ºº #
)
ºº# $
;
ºº$ %
migrationBuilder
ææ 
.
ææ 
	DropTable
ææ &
(
ææ& '
name
øø 
:
øø 
$str
øø 
)
øø 
;
øø  
migrationBuilder
¡¡ 
.
¡¡ 
	DropTable
¡¡ &
(
¡¡& '
name
¬¬ 
:
¬¬ 
$str
¬¬  
)
¬¬  !
;
¬¬! "
}
√√ 	
}
ƒƒ 
}≈≈ ª∆
rC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Migrations\20230401023555_AddIdentity.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *

Migrations* 4
{ 
public		 

partial		 
class		 
AddIdentity		 $
:		% &
	Migration		' 0
{

 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 F
,F G
nullableH P
:P Q
falseR W
)W X
,X Y
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 E
,E F
	maxLengthG P
:P Q
$numR U
,U V
nullableW _
:_ `
truea e
)e f
,f g
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
type: >
:> ?
$str@ O
,O P
	maxLengthQ Z
:Z [
$num\ _
,_ `
nullablea i
:i j
truek o
)o p
,p q
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
type< @
:@ A
$strB Q
,Q R
nullableS [
:[ \
true] a
)a b
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id   
=   
table   
.   
Column   %
<  % &
string  & ,
>  , -
(  - .
type  . 2
:  2 3
$str  4 F
,  F G
nullable  H P
:  P Q
false  R W
)  W X
,  X Y
UserName!! 
=!! 
table!! $
.!!$ %
Column!!% +
<!!+ ,
string!!, 2
>!!2 3
(!!3 4
type!!4 8
:!!8 9
$str!!: I
,!!I J
	maxLength!!K T
:!!T U
$num!!V Y
,!!Y Z
nullable!![ c
:!!c d
true!!e i
)!!i j
,!!j k
NormalizedUserName"" &
=""' (
table"") .
."". /
Column""/ 5
<""5 6
string""6 <
>""< =
(""= >
type""> B
:""B C
$str""D S
,""S T
	maxLength""U ^
:""^ _
$num""` c
,""c d
nullable""e m
:""m n
true""o s
)""s t
,""t u
Email## 
=## 
table## !
.##! "
Column##" (
<##( )
string##) /
>##/ 0
(##0 1
type##1 5
:##5 6
$str##7 F
,##F G
	maxLength##H Q
:##Q R
$num##S V
,##V W
nullable##X `
:##` a
true##b f
)##f g
,##g h
NormalizedEmail$$ #
=$$$ %
table$$& +
.$$+ ,
Column$$, 2
<$$2 3
string$$3 9
>$$9 :
($$: ;
type$$; ?
:$$? @
$str$$A P
,$$P Q
	maxLength$$R [
:$$[ \
$num$$] `
,$$` a
nullable$$b j
:$$j k
true$$l p
)$$p q
,$$q r
EmailConfirmed%% "
=%%# $
table%%% *
.%%* +
Column%%+ 1
<%%1 2
bool%%2 6
>%%6 7
(%%7 8
type%%8 <
:%%< =
$str%%> C
,%%C D
nullable%%E M
:%%M N
false%%O T
)%%T U
,%%U V
PasswordHash&&  
=&&! "
table&&# (
.&&( )
Column&&) /
<&&/ 0
string&&0 6
>&&6 7
(&&7 8
type&&8 <
:&&< =
$str&&> M
,&&M N
nullable&&O W
:&&W X
true&&Y ]
)&&] ^
,&&^ _
SecurityStamp'' !
=''" #
table''$ )
.'') *
Column''* 0
<''0 1
string''1 7
>''7 8
(''8 9
type''9 =
:''= >
$str''? N
,''N O
nullable''P X
:''X Y
true''Z ^
)''^ _
,''_ `
ConcurrencyStamp(( $
=((% &
table((' ,
.((, -
Column((- 3
<((3 4
string((4 :
>((: ;
(((; <
type((< @
:((@ A
$str((B Q
,((Q R
nullable((S [
:(([ \
true((] a
)((a b
,((b c
PhoneNumber)) 
=))  !
table))" '
.))' (
Column))( .
<)). /
string))/ 5
>))5 6
())6 7
type))7 ;
:)); <
$str))= L
,))L M
nullable))N V
:))V W
true))X \
)))\ ]
,))] ^ 
PhoneNumberConfirmed** (
=**) *
table**+ 0
.**0 1
Column**1 7
<**7 8
bool**8 <
>**< =
(**= >
type**> B
:**B C
$str**D I
,**I J
nullable**K S
:**S T
false**U Z
)**Z [
,**[ \
TwoFactorEnabled++ $
=++% &
table++' ,
.++, -
Column++- 3
<++3 4
bool++4 8
>++8 9
(++9 :
type++: >
:++> ?
$str++@ E
,++E F
nullable++G O
:++O P
false++Q V
)++V W
,++W X

LockoutEnd,, 
=,,  
table,,! &
.,,& '
Column,,' -
<,,- .
DateTimeOffset,,. <
>,,< =
(,,= >
type,,> B
:,,B C
$str,,D T
,,,T U
nullable,,V ^
:,,^ _
true,,` d
),,d e
,,,e f
LockoutEnabled-- "
=--# $
table--% *
.--* +
Column--+ 1
<--1 2
bool--2 6
>--6 7
(--7 8
type--8 <
:--< =
$str--> C
,--C D
nullable--E M
:--M N
false--O T
)--T U
,--U V
AccessFailedCount.. %
=..& '
table..( -
...- .
Column... 4
<..4 5
int..5 8
>..8 9
(..9 :
type..: >
:..> ?
$str..@ E
,..E F
nullable..G O
:..O P
false..Q V
)..V W
}// 
,// 
constraints00 
:00 
table00 "
=>00# %
{11 
table22 
.22 

PrimaryKey22 $
(22$ %
$str22% 5
,225 6
x227 8
=>229 ;
x22< =
.22= >
Id22> @
)22@ A
;22A B
}33 
)33 
;33 
migrationBuilder55 
.55 
CreateTable55 (
(55( )
name66 
:66 
$str66 (
,66( )
columns77 
:77 
table77 
=>77 !
new77" %
{88 
Id99 
=99 
table99 
.99 
Column99 %
<99% &
int99& )
>99) *
(99* +
type99+ /
:99/ 0
$str991 6
,996 7
nullable998 @
:99@ A
false99B G
)99G H
.:: 

Annotation:: #
(::# $
$str::$ 8
,::8 9
$str::: @
)::@ A
,::A B
RoleId;; 
=;; 
table;; "
.;;" #
Column;;# )
<;;) *
string;;* 0
>;;0 1
(;;1 2
type;;2 6
:;;6 7
$str;;8 J
,;;J K
nullable;;L T
:;;T U
false;;V [
);;[ \
,;;\ ]
	ClaimType<< 
=<< 
table<<  %
.<<% &
Column<<& ,
<<<, -
string<<- 3
><<3 4
(<<4 5
type<<5 9
:<<9 :
$str<<; J
,<<J K
nullable<<L T
:<<T U
true<<V Z
)<<Z [
,<<[ \

ClaimValue== 
===  
table==! &
.==& '
Column==' -
<==- .
string==. 4
>==4 5
(==5 6
type==6 :
:==: ;
$str==< K
,==K L
nullable==M U
:==U V
true==W [
)==[ \
}>> 
,>> 
constraints?? 
:?? 
table?? "
=>??# %
{@@ 
tableAA 
.AA 

PrimaryKeyAA $
(AA$ %
$strAA% :
,AA: ;
xAA< =
=>AA> @
xAAA B
.AAB C
IdAAC E
)AAE F
;AAF G
tableBB 
.BB 

ForeignKeyBB $
(BB$ %
nameCC 
:CC 
$strCC F
,CCF G
columnDD 
:DD 
xDD  !
=>DD" $
xDD% &
.DD& '
RoleIdDD' -
,DD- .
principalTableEE &
:EE& '
$strEE( 5
,EE5 6
principalColumnFF '
:FF' (
$strFF) -
,FF- .
onDeleteGG  
:GG  !
ReferentialActionGG" 3
.GG3 4
CascadeGG4 ;
)GG; <
;GG< =
}HH 
)HH 
;HH 
migrationBuilderJJ 
.JJ 
CreateTableJJ (
(JJ( )
nameKK 
:KK 
$strKK (
,KK( )
columnsLL 
:LL 
tableLL 
=>LL !
newLL" %
{MM 
IdNN 
=NN 
tableNN 
.NN 
ColumnNN %
<NN% &
intNN& )
>NN) *
(NN* +
typeNN+ /
:NN/ 0
$strNN1 6
,NN6 7
nullableNN8 @
:NN@ A
falseNNB G
)NNG H
.OO 

AnnotationOO #
(OO# $
$strOO$ 8
,OO8 9
$strOO: @
)OO@ A
,OOA B
UserIdPP 
=PP 
tablePP "
.PP" #
ColumnPP# )
<PP) *
stringPP* 0
>PP0 1
(PP1 2
typePP2 6
:PP6 7
$strPP8 J
,PPJ K
nullablePPL T
:PPT U
falsePPV [
)PP[ \
,PP\ ]
	ClaimTypeQQ 
=QQ 
tableQQ  %
.QQ% &
ColumnQQ& ,
<QQ, -
stringQQ- 3
>QQ3 4
(QQ4 5
typeQQ5 9
:QQ9 :
$strQQ; J
,QQJ K
nullableQQL T
:QQT U
trueQQV Z
)QQZ [
,QQ[ \

ClaimValueRR 
=RR  
tableRR! &
.RR& '
ColumnRR' -
<RR- .
stringRR. 4
>RR4 5
(RR5 6
typeRR6 :
:RR: ;
$strRR< K
,RRK L
nullableRRM U
:RRU V
trueRRW [
)RR[ \
}SS 
,SS 
constraintsTT 
:TT 
tableTT "
=>TT# %
{UU 
tableVV 
.VV 

PrimaryKeyVV $
(VV$ %
$strVV% :
,VV: ;
xVV< =
=>VV> @
xVVA B
.VVB C
IdVVC E
)VVE F
;VVF G
tableWW 
.WW 

ForeignKeyWW $
(WW$ %
nameXX 
:XX 
$strXX F
,XXF G
columnYY 
:YY 
xYY  !
=>YY" $
xYY% &
.YY& '
UserIdYY' -
,YY- .
principalTableZZ &
:ZZ& '
$strZZ( 5
,ZZ5 6
principalColumn[[ '
:[[' (
$str[[) -
,[[- .
onDelete\\  
:\\  !
ReferentialAction\\" 3
.\\3 4
Cascade\\4 ;
)\\; <
;\\< =
}]] 
)]] 
;]] 
migrationBuilder__ 
.__ 
CreateTable__ (
(__( )
name`` 
:`` 
$str`` (
,``( )
columnsaa 
:aa 
tableaa 
=>aa !
newaa" %
{bb 
LoginProvidercc !
=cc" #
tablecc$ )
.cc) *
Columncc* 0
<cc0 1
stringcc1 7
>cc7 8
(cc8 9
typecc9 =
:cc= >
$strcc? Q
,ccQ R
nullableccS [
:cc[ \
falsecc] b
)ccb c
,ccc d
ProviderKeydd 
=dd  !
tabledd" '
.dd' (
Columndd( .
<dd. /
stringdd/ 5
>dd5 6
(dd6 7
typedd7 ;
:dd; <
$strdd= L
,ddL M
nullableddN V
:ddV W
falseddX ]
)dd] ^
,dd^ _
ProviderDisplayNameee '
=ee( )
tableee* /
.ee/ 0
Columnee0 6
<ee6 7
stringee7 =
>ee= >
(ee> ?
typeee? C
:eeC D
$streeE T
,eeT U
nullableeeV ^
:ee^ _
trueee` d
)eed e
,eee f
UserIdff 
=ff 
tableff "
.ff" #
Columnff# )
<ff) *
stringff* 0
>ff0 1
(ff1 2
typeff2 6
:ff6 7
$strff8 J
,ffJ K
nullableffL T
:ffT U
falseffV [
)ff[ \
}gg 
,gg 
constraintshh 
:hh 
tablehh "
=>hh# %
{ii 
tablejj 
.jj 

PrimaryKeyjj $
(jj$ %
$strjj% :
,jj: ;
xjj< =
=>jj> @
newjjA D
{jjE F
xjjG H
.jjH I
LoginProviderjjI V
,jjV W
xjjX Y
.jjY Z
ProviderKeyjjZ e
}jjf g
)jjg h
;jjh i
tablekk 
.kk 

ForeignKeykk $
(kk$ %
namell 
:ll 
$strll F
,llF G
columnmm 
:mm 
xmm  !
=>mm" $
xmm% &
.mm& '
UserIdmm' -
,mm- .
principalTablenn &
:nn& '
$strnn( 5
,nn5 6
principalColumnoo '
:oo' (
$stroo) -
,oo- .
onDeletepp  
:pp  !
ReferentialActionpp" 3
.pp3 4
Cascadepp4 ;
)pp; <
;pp< =
}qq 
)qq 
;qq 
migrationBuilderss 
.ss 
CreateTabless (
(ss( )
namett 
:tt 
$strtt '
,tt' (
columnsuu 
:uu 
tableuu 
=>uu !
newuu" %
{vv 
UserIdww 
=ww 
tableww "
.ww" #
Columnww# )
<ww) *
stringww* 0
>ww0 1
(ww1 2
typeww2 6
:ww6 7
$strww8 J
,wwJ K
nullablewwL T
:wwT U
falsewwV [
)ww[ \
,ww\ ]
RoleIdxx 
=xx 
tablexx "
.xx" #
Columnxx# )
<xx) *
stringxx* 0
>xx0 1
(xx1 2
typexx2 6
:xx6 7
$strxx8 J
,xxJ K
nullablexxL T
:xxT U
falsexxV [
)xx[ \
}yy 
,yy 
constraintszz 
:zz 
tablezz "
=>zz# %
{{{ 
table|| 
.|| 

PrimaryKey|| $
(||$ %
$str||% 9
,||9 :
x||; <
=>||= ?
new||@ C
{||D E
x||F G
.||G H
UserId||H N
,||N O
x||P Q
.||Q R
RoleId||R X
}||Y Z
)||Z [
;||[ \
table}} 
.}} 

ForeignKey}} $
(}}$ %
name~~ 
:~~ 
$str~~ E
,~~E F
column 
: 
x  !
=>" $
x% &
.& '
RoleId' -
,- .
principalTable
ÄÄ &
:
ÄÄ& '
$str
ÄÄ( 5
,
ÄÄ5 6
principalColumn
ÅÅ '
:
ÅÅ' (
$str
ÅÅ) -
,
ÅÅ- .
onDelete
ÇÇ  
:
ÇÇ  !
ReferentialAction
ÇÇ" 3
.
ÇÇ3 4
Cascade
ÇÇ4 ;
)
ÇÇ; <
;
ÇÇ< =
table
ÉÉ 
.
ÉÉ 

ForeignKey
ÉÉ $
(
ÉÉ$ %
name
ÑÑ 
:
ÑÑ 
$str
ÑÑ E
,
ÑÑE F
column
ÖÖ 
:
ÖÖ 
x
ÖÖ  !
=>
ÖÖ" $
x
ÖÖ% &
.
ÖÖ& '
UserId
ÖÖ' -
,
ÖÖ- .
principalTable
ÜÜ &
:
ÜÜ& '
$str
ÜÜ( 5
,
ÜÜ5 6
principalColumn
áá '
:
áá' (
$str
áá) -
,
áá- .
onDelete
àà  
:
àà  !
ReferentialAction
àà" 3
.
àà3 4
Cascade
àà4 ;
)
àà; <
;
àà< =
}
ââ 
)
ââ 
;
ââ 
migrationBuilder
ãã 
.
ãã 
CreateTable
ãã (
(
ãã( )
name
åå 
:
åå 
$str
åå (
,
åå( )
columns
çç 
:
çç 
table
çç 
=>
çç !
new
çç" %
{
éé 
UserId
èè 
=
èè 
table
èè "
.
èè" #
Column
èè# )
<
èè) *
string
èè* 0
>
èè0 1
(
èè1 2
type
èè2 6
:
èè6 7
$str
èè8 J
,
èèJ K
nullable
èèL T
:
èèT U
false
èèV [
)
èè[ \
,
èè\ ]
LoginProvider
êê !
=
êê" #
table
êê$ )
.
êê) *
Column
êê* 0
<
êê0 1
string
êê1 7
>
êê7 8
(
êê8 9
type
êê9 =
:
êê= >
$str
êê? N
,
êêN O
nullable
êêP X
:
êêX Y
false
êêZ _
)
êê_ `
,
êê` a
Name
ëë 
=
ëë 
table
ëë  
.
ëë  !
Column
ëë! '
<
ëë' (
string
ëë( .
>
ëë. /
(
ëë/ 0
type
ëë0 4
:
ëë4 5
$str
ëë6 E
,
ëëE F
nullable
ëëG O
:
ëëO P
false
ëëQ V
)
ëëV W
,
ëëW X
Value
íí 
=
íí 
table
íí !
.
íí! "
Column
íí" (
<
íí( )
string
íí) /
>
íí/ 0
(
íí0 1
type
íí1 5
:
íí5 6
$str
íí7 F
,
ííF G
nullable
ííH P
:
ííP Q
true
ííR V
)
ííV W
}
ìì 
,
ìì 
constraints
îî 
:
îî 
table
îî "
=>
îî# %
{
ïï 
table
ññ 
.
ññ 

PrimaryKey
ññ $
(
ññ$ %
$str
ññ% :
,
ññ: ;
x
ññ< =
=>
ññ> @
new
ññA D
{
ññE F
x
ññG H
.
ññH I
UserId
ññI O
,
ññO P
x
ññQ R
.
ññR S
LoginProvider
ññS `
,
ññ` a
x
ññb c
.
ññc d
Name
ññd h
}
ññi j
)
ññj k
;
ññk l
table
óó 
.
óó 

ForeignKey
óó $
(
óó$ %
name
òò 
:
òò 
$str
òò F
,
òòF G
column
ôô 
:
ôô 
x
ôô  !
=>
ôô" $
x
ôô% &
.
ôô& '
UserId
ôô' -
,
ôô- .
principalTable
öö &
:
öö& '
$str
öö( 5
,
öö5 6
principalColumn
õõ '
:
õõ' (
$str
õõ) -
,
õõ- .
onDelete
úú  
:
úú  !
ReferentialAction
úú" 3
.
úú3 4
Cascade
úú4 ;
)
úú; <
;
úú< =
}
ùù 
)
ùù 
;
ùù 
migrationBuilder
üü 
.
üü 
CreateIndex
üü (
(
üü( )
name
†† 
:
†† 
$str
†† 2
,
††2 3
table
°° 
:
°° 
$str
°° )
,
°°) *
column
¢¢ 
:
¢¢ 
$str
¢¢  
)
¢¢  !
;
¢¢! "
migrationBuilder
§§ 
.
§§ 
CreateIndex
§§ (
(
§§( )
name
•• 
:
•• 
$str
•• %
,
••% &
table
¶¶ 
:
¶¶ 
$str
¶¶ $
,
¶¶$ %
column
ßß 
:
ßß 
$str
ßß (
,
ßß( )
unique
®® 
:
®® 
true
®® 
,
®® 
filter
©© 
:
©© 
$str
©© 6
)
©©6 7
;
©©7 8
migrationBuilder
´´ 
.
´´ 
CreateIndex
´´ (
(
´´( )
name
¨¨ 
:
¨¨ 
$str
¨¨ 2
,
¨¨2 3
table
≠≠ 
:
≠≠ 
$str
≠≠ )
,
≠≠) *
column
ÆÆ 
:
ÆÆ 
$str
ÆÆ  
)
ÆÆ  !
;
ÆÆ! "
migrationBuilder
∞∞ 
.
∞∞ 
CreateIndex
∞∞ (
(
∞∞( )
name
±± 
:
±± 
$str
±± 2
,
±±2 3
table
≤≤ 
:
≤≤ 
$str
≤≤ )
,
≤≤) *
column
≥≥ 
:
≥≥ 
$str
≥≥  
)
≥≥  !
;
≥≥! "
migrationBuilder
µµ 
.
µµ 
CreateIndex
µµ (
(
µµ( )
name
∂∂ 
:
∂∂ 
$str
∂∂ 1
,
∂∂1 2
table
∑∑ 
:
∑∑ 
$str
∑∑ (
,
∑∑( )
column
∏∏ 
:
∏∏ 
$str
∏∏  
)
∏∏  !
;
∏∏! "
migrationBuilder
∫∫ 
.
∫∫ 
CreateIndex
∫∫ (
(
∫∫( )
name
ªª 
:
ªª 
$str
ªª "
,
ªª" #
table
ºº 
:
ºº 
$str
ºº $
,
ºº$ %
column
ΩΩ 
:
ΩΩ 
$str
ΩΩ )
)
ΩΩ) *
;
ΩΩ* +
migrationBuilder
øø 
.
øø 
CreateIndex
øø (
(
øø( )
name
¿¿ 
:
¿¿ 
$str
¿¿ %
,
¿¿% &
table
¡¡ 
:
¡¡ 
$str
¡¡ $
,
¡¡$ %
column
¬¬ 
:
¬¬ 
$str
¬¬ ,
,
¬¬, -
unique
√√ 
:
√√ 
true
√√ 
,
√√ 
filter
ƒƒ 
:
ƒƒ 
$str
ƒƒ :
)
ƒƒ: ;
;
ƒƒ; <
}
≈≈ 	
	protected
»» 
override
»» 
void
»» 
Down
»»  $
(
»»$ %
MigrationBuilder
»»% 5
migrationBuilder
»»6 F
)
»»F G
{
…… 	
migrationBuilder
   
.
   
	DropTable
   &
(
  & '
name
ÀÀ 
:
ÀÀ 
$str
ÀÀ (
)
ÀÀ( )
;
ÀÀ) *
migrationBuilder
ÕÕ 
.
ÕÕ 
	DropTable
ÕÕ &
(
ÕÕ& '
name
ŒŒ 
:
ŒŒ 
$str
ŒŒ (
)
ŒŒ( )
;
ŒŒ) *
migrationBuilder
–– 
.
–– 
	DropTable
–– &
(
––& '
name
—— 
:
—— 
$str
—— (
)
——( )
;
——) *
migrationBuilder
”” 
.
”” 
	DropTable
”” &
(
””& '
name
‘‘ 
:
‘‘ 
$str
‘‘ '
)
‘‘' (
;
‘‘( )
migrationBuilder
÷÷ 
.
÷÷ 
	DropTable
÷÷ &
(
÷÷& '
name
◊◊ 
:
◊◊ 
$str
◊◊ (
)
◊◊( )
;
◊◊) *
migrationBuilder
ŸŸ 
.
ŸŸ 
	DropTable
ŸŸ &
(
ŸŸ& '
name
⁄⁄ 
:
⁄⁄ 
$str
⁄⁄ #
)
⁄⁄# $
;
⁄⁄$ %
migrationBuilder
‹‹ 
.
‹‹ 
	DropTable
‹‹ &
(
‹‹& '
name
›› 
:
›› 
$str
›› #
)
››# $
;
››$ %
}
ﬁﬁ 	
}
ﬂﬂ 
}‡‡ ¬]
oC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Migrations\20230401043830_AddRoles.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *

Migrations* 4
{ 
public

 

partial

 
class

 
AddRoles

 !
:

" #
	Migration

$ -
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
AlterColumn (
<( )
Guid) -
>- .
(. /
name 
: 
$str 
, 
table 
: 
$str )
,) *
type 
: 
$str (
,( )
nullable 
: 
false 
,  

oldClrType 
: 
typeof "
(" #
string# )
)) *
,* +
oldType 
: 
$str (
)( )
;) *
migrationBuilder 
. 
AlterColumn (
<( )
Guid) -
>- .
(. /
name 
: 
$str 
, 
table 
: 
$str $
,$ %
type 
: 
$str (
,( )
nullable 
: 
false 
,  

oldClrType 
: 
typeof "
(" #
string# )
)) *
,* +
oldType 
: 
$str (
)( )
;) *
migrationBuilder 
. 
AlterColumn (
<( )
Guid) -
>- .
(. /
name   
:   
$str   
,   
table!! 
:!! 
$str!! (
,!!( )
type"" 
:"" 
$str"" (
,""( )
nullable## 
:## 
false## 
,##  

oldClrType$$ 
:$$ 
typeof$$ "
($$" #
string$$# )
)$$) *
,$$* +
oldType%% 
:%% 
$str%% (
)%%( )
;%%) *
migrationBuilder'' 
.'' 
AlterColumn'' (
<''( )
Guid'') -
>''- .
(''. /
name(( 
:(( 
$str(( 
,(( 
table)) 
:)) 
$str)) (
,))( )
type** 
:** 
$str** (
,**( )
nullable++ 
:++ 
false++ 
,++  

oldClrType,, 
:,, 
typeof,, "
(,," #
string,,# )
),,) *
,,,* +
oldType-- 
:-- 
$str-- (
)--( )
;--) *
migrationBuilder// 
.// 
AlterColumn// (
<//( )
Guid//) -
>//- .
(//. /
name00 
:00 
$str00 
,00 
table11 
:11 
$str11 )
,11) *
type22 
:22 
$str22 (
,22( )
nullable33 
:33 
false33 
,33  

oldClrType44 
:44 
typeof44 "
(44" #
string44# )
)44) *
,44* +
oldType55 
:55 
$str55 (
)55( )
;55) *
migrationBuilder77 
.77 
AlterColumn77 (
<77( )
Guid77) -
>77- .
(77. /
name88 
:88 
$str88 
,88 
table99 
:99 
$str99 )
,99) *
type:: 
::: 
$str:: (
,::( )
nullable;; 
:;; 
false;; 
,;;  

oldClrType<< 
:<< 
typeof<< "
(<<" #
string<<# )
)<<) *
,<<* +
oldType== 
:== 
$str== (
)==( )
;==) *
migrationBuilder?? 
.?? 
AlterColumn?? (
<??( )
Guid??) -
>??- .
(??. /
name@@ 
:@@ 
$str@@ 
,@@ 
tableAA 
:AA 
$strAA $
,AA$ %
typeBB 
:BB 
$strBB (
,BB( )
nullableCC 
:CC 
falseCC 
,CC  

oldClrTypeDD 
:DD 
typeofDD "
(DD" #
stringDD# )
)DD) *
,DD* +
oldTypeEE 
:EE 
$strEE (
)EE( )
;EE) *
migrationBuilderGG 
.GG 
AlterColumnGG (
<GG( )
GuidGG) -
>GG- .
(GG. /
nameHH 
:HH 
$strHH 
,HH 
tableII 
:II 
$strII )
,II) *
typeJJ 
:JJ 
$strJJ (
,JJ( )
nullableKK 
:KK 
falseKK 
,KK  

oldClrTypeLL 
:LL 
typeofLL "
(LL" #
stringLL# )
)LL) *
,LL* +
oldTypeMM 
:MM 
$strMM (
)MM( )
;MM) *
}NN 	
	protectedQQ 
overrideQQ 
voidQQ 
DownQQ  $
(QQ$ %
MigrationBuilderQQ% 5
migrationBuilderQQ6 F
)QQF G
{RR 	
migrationBuilderSS 
.SS 

DeleteDataSS '
(SS' (
tableTT 
:TT 
$strTT $
,TT$ %
	keyColumnUU 
:UU 
$strUU !
,UU! "
keyValueVV 
:VV 
RolesVV 
.VV  
ClientVV  &
)VV& '
;VV' (
migrationBuilderXX 
.XX 

DeleteDataXX '
(XX' (
tableYY 
:YY 
$strYY #
,YY# $
	keyColumnZZ 
:ZZ 
$strZZ  
,ZZ  !
keyValue[[ 
:[[ 
Roles[[ 
.[[ 
Carrier[[ &
)[[& '
;[[' (
migrationBuilder]] 
.]] 

DeleteData]] '
(]]' (
table^^ 
:^^ 
$str^^ #
,^^# $
	keyColumn__ 
:__ 
$str__  
,__  !
keyValue`` 
:`` 
Roles`` 
.`` 

SuperAdmin`` )
)``) *
;``* +
migrationBuildercc 
.cc 
AlterColumncc (
<cc( )
stringcc) /
>cc/ 0
(cc0 1
namedd 
:dd 
$strdd 
,dd 
tableee 
:ee 
$stree )
,ee) *
typeff 
:ff 
$strff %
,ff% &
nullablegg 
:gg 
falsegg 
,gg  

oldClrTypehh 
:hh 
typeofhh "
(hh" #
Guidhh# '
)hh' (
,hh( )
oldTypeii 
:ii 
$strii +
)ii+ ,
;ii, -
migrationBuilderkk 
.kk 
AlterColumnkk (
<kk( )
stringkk) /
>kk/ 0
(kk0 1
namell 
:ll 
$strll 
,ll 
tablemm 
:mm 
$strmm $
,mm$ %
typenn 
:nn 
$strnn %
,nn% &
nullableoo 
:oo 
falseoo 
,oo  

oldClrTypepp 
:pp 
typeofpp "
(pp" #
Guidpp# '
)pp' (
,pp( )
oldTypeqq 
:qq 
$strqq +
)qq+ ,
;qq, -
migrationBuilderss 
.ss 
AlterColumnss (
<ss( )
stringss) /
>ss/ 0
(ss0 1
namett 
:tt 
$strtt 
,tt 
tableuu 
:uu 
$struu (
,uu( )
typevv 
:vv 
$strvv %
,vv% &
nullableww 
:ww 
falseww 
,ww  

oldClrTypexx 
:xx 
typeofxx "
(xx" #
Guidxx# '
)xx' (
,xx( )
oldTypeyy 
:yy 
$stryy +
)yy+ ,
;yy, -
migrationBuilder{{ 
.{{ 
AlterColumn{{ (
<{{( )
string{{) /
>{{/ 0
({{0 1
name|| 
:|| 
$str|| 
,|| 
table}} 
:}} 
$str}} (
,}}( )
type~~ 
:~~ 
$str~~ %
,~~% &
nullable 
: 
false 
,  

oldClrType
ÄÄ 
:
ÄÄ 
typeof
ÄÄ "
(
ÄÄ" #
Guid
ÄÄ# '
)
ÄÄ' (
,
ÄÄ( )
oldType
ÅÅ 
:
ÅÅ 
$str
ÅÅ +
)
ÅÅ+ ,
;
ÅÅ, -
migrationBuilder
ÉÉ 
.
ÉÉ 
AlterColumn
ÉÉ (
<
ÉÉ( )
string
ÉÉ) /
>
ÉÉ/ 0
(
ÉÉ0 1
name
ÑÑ 
:
ÑÑ 
$str
ÑÑ 
,
ÑÑ 
table
ÖÖ 
:
ÖÖ 
$str
ÖÖ )
,
ÖÖ) *
type
ÜÜ 
:
ÜÜ 
$str
ÜÜ %
,
ÜÜ% &
nullable
áá 
:
áá 
false
áá 
,
áá  

oldClrType
àà 
:
àà 
typeof
àà "
(
àà" #
Guid
àà# '
)
àà' (
,
àà( )
oldType
ââ 
:
ââ 
$str
ââ +
)
ââ+ ,
;
ââ, -
migrationBuilder
ãã 
.
ãã 
AlterColumn
ãã (
<
ãã( )
string
ãã) /
>
ãã/ 0
(
ãã0 1
name
åå 
:
åå 
$str
åå 
,
åå 
table
çç 
:
çç 
$str
çç )
,
çç) *
type
éé 
:
éé 
$str
éé %
,
éé% &
nullable
èè 
:
èè 
false
èè 
,
èè  

oldClrType
êê 
:
êê 
typeof
êê "
(
êê" #
Guid
êê# '
)
êê' (
,
êê( )
oldType
ëë 
:
ëë 
$str
ëë +
)
ëë+ ,
;
ëë, -
migrationBuilder
ìì 
.
ìì 
AlterColumn
ìì (
<
ìì( )
string
ìì) /
>
ìì/ 0
(
ìì0 1
name
îî 
:
îî 
$str
îî 
,
îî 
table
ïï 
:
ïï 
$str
ïï $
,
ïï$ %
type
ññ 
:
ññ 
$str
ññ %
,
ññ% &
nullable
óó 
:
óó 
false
óó 
,
óó  

oldClrType
òò 
:
òò 
typeof
òò "
(
òò" #
Guid
òò# '
)
òò' (
,
òò( )
oldType
ôô 
:
ôô 
$str
ôô +
)
ôô+ ,
;
ôô, -
migrationBuilder
õõ 
.
õõ 
AlterColumn
õõ (
<
õõ( )
string
õõ) /
>
õõ/ 0
(
õõ0 1
name
úú 
:
úú 
$str
úú 
,
úú 
table
ùù 
:
ùù 
$str
ùù )
,
ùù) *
type
ûû 
:
ûû 
$str
ûû %
,
ûû% &
nullable
üü 
:
üü 
false
üü 
,
üü  

oldClrType
†† 
:
†† 
typeof
†† "
(
††" #
Guid
††# '
)
††' (
,
††( )
oldType
°° 
:
°° 
$str
°° +
)
°°+ ,
;
°°, -
}
¢¢ 	
}
££ 
}§§ ˛Ö
ÅC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Migrations\20230402031143_AddUserToPersonsAndCarrier.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *

Migrations* 4
{ 
public		 

partial		 
class		 &
AddUserToPersonsAndCarrier		 3
:		4 5
	Migration		6 ?
{

 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
DropForeignKey +
(+ ,
name 
: 
$str 5
,5 6
table 
: 
$str  
)  !
;! "
migrationBuilder 
. 
DropForeignKey +
(+ ,
name 
: 
$str ;
,; <
table 
: 
$str "
)" #
;# $
migrationBuilder 
. 
DropForeignKey +
(+ ,
name 
: 
$str C
,C D
table 
: 
$str "
)" #
;# $
migrationBuilder 
. 
AlterColumn (
<( )
Guid) -
>- .
(. /
name 
: 
$str '
,' (
table 
: 
$str "
," #
type 
: 
$str (
,( )
nullable 
: 
true 
, 

oldClrType 
: 
typeof "
(" #
Guid# '
)' (
,( )
oldType   
:   
$str   +
)  + ,
;  , -
migrationBuilder"" 
."" 
AlterColumn"" (
<""( )
Guid"") -
>""- .
("". /
name## 
:## 
$str## #
,### $
table$$ 
:$$ 
$str$$ "
,$$" #
type%% 
:%% 
$str%% (
,%%( )
nullable&& 
:&& 
true&& 
,&& 

oldClrType'' 
:'' 
typeof'' "
(''" #
Guid''# '
)''' (
,''( )
oldType(( 
:(( 
$str(( +
)((+ ,
;((, -
migrationBuilder** 
.** 
AlterColumn** (
<**( )
Guid**) -
>**- .
(**. /
name++ 
:++ 
$str++ !
,++! "
table,, 
:,, 
$str,,  
,,,  !
type-- 
:-- 
$str-- (
,--( )
nullable.. 
:.. 
true.. 
,.. 

oldClrType// 
:// 
typeof// "
(//" #
Guid//# '
)//' (
,//( )
oldType00 
:00 
$str00 +
)00+ ,
;00, -
migrationBuilder22 
.22 
	AddColumn22 &
<22& '
DateTime22' /
>22/ 0
(220 1
name33 
:33 
$str33 !
,33! "
table44 
:44 
$str44  
,44  !
type55 
:55 
$str55 !
,55! "
nullable66 
:66 
true66 
)66 
;66  
migrationBuilder88 
.88 
	AddColumn88 &
<88& '
string88' -
>88- .
(88. /
name99 
:99 
$str99 !
,99! "
table:: 
::: 
$str::  
,::  !
type;; 
:;; 
$str;; %
,;;% &
nullable<< 
:<< 
true<< 
)<< 
;<<  
migrationBuilder>> 
.>> 
	AddColumn>> &
<>>& '
DateTime>>' /
>>>/ 0
(>>0 1
name?? 
:?? 
$str?? !
,??! "
table@@ 
:@@ 
$str@@  
,@@  !
typeAA 
:AA 
$strAA !
,AA! "
nullableBB 
:BB 
trueBB 
)BB 
;BB  
migrationBuilderDD 
.DD 
	AddColumnDD &
<DD& '
stringDD' -
>DD- .
(DD. /
nameEE 
:EE 
$strEE !
,EE! "
tableFF 
:FF 
$strFF  
,FF  !
typeGG 
:GG 
$strGG %
,GG% &
nullableHH 
:HH 
trueHH 
)HH 
;HH  
migrationBuilderJJ 
.JJ 
	AddColumnJJ &
<JJ& '
GuidJJ' +
>JJ+ ,
(JJ, -
nameKK 
:KK 
$strKK 
,KK 
tableLL 
:LL 
$strLL  
,LL  !
typeMM 
:MM 
$strMM (
,MM( )
nullableNN 
:NN 
trueNN 
)NN 
;NN  
migrationBuilderPP 
.PP 
	AddColumnPP &
<PP& '
GuidPP' +
>PP+ ,
(PP, -
nameQQ 
:QQ 
$strQQ 
,QQ 
tableRR 
:RR 
$strRR !
,RR! "
typeSS 
:SS 
$strSS (
,SS( )
nullableTT 
:TT 
falseTT 
,TT  
defaultValueUU 
:UU 
newUU !
GuidUU" &
(UU& '
$strUU' M
)UUM N
)UUN O
;UUO P
migrationBuilderWW 
.WW 
CreateIndexWW (
(WW( )
nameXX 
:XX 
$strXX )
,XX) *
tableYY 
:YY 
$strYY  
,YY  !
columnZZ 
:ZZ 
$strZZ  
)ZZ  !
;ZZ! "
migrationBuilder\\ 
.\\ 
CreateIndex\\ (
(\\( )
name]] 
:]] 
$str]] *
,]]* +
table^^ 
:^^ 
$str^^ !
,^^! "
column__ 
:__ 
$str__  
)__  !
;__! "
migrationBuilderaa 
.aa 
AddForeignKeyaa *
(aa* +
namebb 
:bb 
$strbb 6
,bb6 7
tablecc 
:cc 
$strcc !
,cc! "
columndd 
:dd 
$strdd  
,dd  !
principalTableee 
:ee 
$stree  -
,ee- .
principalColumnff 
:ff  
$strff! %
,ff% &
onDeletegg 
:gg 
ReferentialActiongg +
.gg+ ,
Cascadegg, 3
)gg3 4
;gg4 5
migrationBuilderii 
.ii 
AddForeignKeyii *
(ii* +
namejj 
:jj 
$strjj 5
,jj5 6
tablekk 
:kk 
$strkk  
,kk  !
columnll 
:ll 
$strll  
,ll  !
principalTablemm 
:mm 
$strmm  -
,mm- .
principalColumnnn 
:nn  
$strnn! %
)nn% &
;nn& '
migrationBuilderpp 
.pp 
AddForeignKeypp *
(pp* +
nameqq 
:qq 
$strqq 5
,qq5 6
tablerr 
:rr 
$strrr  
,rr  !
columnss 
:ss 
$strss #
,ss# $
principalTablett 
:tt 
$strtt  *
,tt* +
principalColumnuu 
:uu  
$struu! %
)uu% &
;uu& '
migrationBuilderww 
.ww 
AddForeignKeyww *
(ww* +
namexx 
:xx 
$strxx ;
,xx; <
tableyy 
:yy 
$stryy "
,yy" #
columnzz 
:zz 
$strzz %
,zz% &
principalTable{{ 
:{{ 
$str{{  ,
,{{, -
principalColumn|| 
:||  
$str||! %
)||% &
;||& '
migrationBuilder~~ 
.~~ 
AddForeignKey~~ *
(~~* +
name 
: 
$str C
,C D
table
ÄÄ 
:
ÄÄ 
$str
ÄÄ "
,
ÄÄ" #
column
ÅÅ 
:
ÅÅ 
$str
ÅÅ )
,
ÅÅ) *
principalTable
ÇÇ 
:
ÇÇ 
$str
ÇÇ  0
,
ÇÇ0 1
principalColumn
ÉÉ 
:
ÉÉ  
$str
ÉÉ! %
)
ÉÉ% &
;
ÉÉ& '
}
ÑÑ 	
	protected
áá 
override
áá 
void
áá 
Down
áá  $
(
áá$ %
MigrationBuilder
áá% 5
migrationBuilder
áá6 F
)
ááF G
{
àà 	
migrationBuilder
ââ 
.
ââ 
DropForeignKey
ââ +
(
ââ+ ,
name
ää 
:
ää 
$str
ää 6
,
ää6 7
table
ãã 
:
ãã 
$str
ãã !
)
ãã! "
;
ãã" #
migrationBuilder
çç 
.
çç 
DropForeignKey
çç +
(
çç+ ,
name
éé 
:
éé 
$str
éé 5
,
éé5 6
table
èè 
:
èè 
$str
èè  
)
èè  !
;
èè! "
migrationBuilder
ëë 
.
ëë 
DropForeignKey
ëë +
(
ëë+ ,
name
íí 
:
íí 
$str
íí 5
,
íí5 6
table
ìì 
:
ìì 
$str
ìì  
)
ìì  !
;
ìì! "
migrationBuilder
ïï 
.
ïï 
DropForeignKey
ïï +
(
ïï+ ,
name
ññ 
:
ññ 
$str
ññ ;
,
ññ; <
table
óó 
:
óó 
$str
óó "
)
óó" #
;
óó# $
migrationBuilder
ôô 
.
ôô 
DropForeignKey
ôô +
(
ôô+ ,
name
öö 
:
öö 
$str
öö C
,
ööC D
table
õõ 
:
õõ 
$str
õõ "
)
õõ" #
;
õõ# $
migrationBuilder
ùù 
.
ùù 
	DropIndex
ùù &
(
ùù& '
name
ûû 
:
ûû 
$str
ûû )
,
ûû) *
table
üü 
:
üü 
$str
üü  
)
üü  !
;
üü! "
migrationBuilder
°° 
.
°° 
	DropIndex
°° &
(
°°& '
name
¢¢ 
:
¢¢ 
$str
¢¢ *
,
¢¢* +
table
££ 
:
££ 
$str
££ !
)
££! "
;
££" #
migrationBuilder
•• 
.
•• 

DropColumn
•• '
(
••' (
name
¶¶ 
:
¶¶ 
$str
¶¶ !
,
¶¶! "
table
ßß 
:
ßß 
$str
ßß  
)
ßß  !
;
ßß! "
migrationBuilder
©© 
.
©© 

DropColumn
©© '
(
©©' (
name
™™ 
:
™™ 
$str
™™ !
,
™™! "
table
´´ 
:
´´ 
$str
´´  
)
´´  !
;
´´! "
migrationBuilder
≠≠ 
.
≠≠ 

DropColumn
≠≠ '
(
≠≠' (
name
ÆÆ 
:
ÆÆ 
$str
ÆÆ !
,
ÆÆ! "
table
ØØ 
:
ØØ 
$str
ØØ  
)
ØØ  !
;
ØØ! "
migrationBuilder
±± 
.
±± 

DropColumn
±± '
(
±±' (
name
≤≤ 
:
≤≤ 
$str
≤≤ !
,
≤≤! "
table
≥≥ 
:
≥≥ 
$str
≥≥  
)
≥≥  !
;
≥≥! "
migrationBuilder
µµ 
.
µµ 

DropColumn
µµ '
(
µµ' (
name
∂∂ 
:
∂∂ 
$str
∂∂ 
,
∂∂ 
table
∑∑ 
:
∑∑ 
$str
∑∑  
)
∑∑  !
;
∑∑! "
migrationBuilder
ππ 
.
ππ 

DropColumn
ππ '
(
ππ' (
name
∫∫ 
:
∫∫ 
$str
∫∫ 
,
∫∫ 
table
ªª 
:
ªª 
$str
ªª !
)
ªª! "
;
ªª" #
migrationBuilder
ΩΩ 
.
ΩΩ 
AlterColumn
ΩΩ (
<
ΩΩ( )
Guid
ΩΩ) -
>
ΩΩ- .
(
ΩΩ. /
name
ææ 
:
ææ 
$str
ææ '
,
ææ' (
table
øø 
:
øø 
$str
øø "
,
øø" #
type
¿¿ 
:
¿¿ 
$str
¿¿ (
,
¿¿( )
nullable
¡¡ 
:
¡¡ 
false
¡¡ 
,
¡¡  
defaultValue
¬¬ 
:
¬¬ 
new
¬¬ !
Guid
¬¬" &
(
¬¬& '
$str
¬¬' M
)
¬¬M N
,
¬¬N O

oldClrType
√√ 
:
√√ 
typeof
√√ "
(
√√" #
Guid
√√# '
)
√√' (
,
√√( )
oldType
ƒƒ 
:
ƒƒ 
$str
ƒƒ +
,
ƒƒ+ ,
oldNullable
≈≈ 
:
≈≈ 
true
≈≈ !
)
≈≈! "
;
≈≈" #
migrationBuilder
«« 
.
«« 
AlterColumn
«« (
<
««( )
Guid
««) -
>
««- .
(
««. /
name
»» 
:
»» 
$str
»» #
,
»»# $
table
…… 
:
…… 
$str
…… "
,
……" #
type
   
:
   
$str
   (
,
  ( )
nullable
ÀÀ 
:
ÀÀ 
false
ÀÀ 
,
ÀÀ  
defaultValue
ÃÃ 
:
ÃÃ 
new
ÃÃ !
Guid
ÃÃ" &
(
ÃÃ& '
$str
ÃÃ' M
)
ÃÃM N
,
ÃÃN O

oldClrType
ÕÕ 
:
ÕÕ 
typeof
ÕÕ "
(
ÕÕ" #
Guid
ÕÕ# '
)
ÕÕ' (
,
ÕÕ( )
oldType
ŒŒ 
:
ŒŒ 
$str
ŒŒ +
,
ŒŒ+ ,
oldNullable
œœ 
:
œœ 
true
œœ !
)
œœ! "
;
œœ" #
migrationBuilder
—— 
.
—— 
AlterColumn
—— (
<
——( )
Guid
——) -
>
——- .
(
——. /
name
““ 
:
““ 
$str
““ !
,
““! "
table
”” 
:
”” 
$str
””  
,
””  !
type
‘‘ 
:
‘‘ 
$str
‘‘ (
,
‘‘( )
nullable
’’ 
:
’’ 
false
’’ 
,
’’  
defaultValue
÷÷ 
:
÷÷ 
new
÷÷ !
Guid
÷÷" &
(
÷÷& '
$str
÷÷' M
)
÷÷M N
,
÷÷N O

oldClrType
◊◊ 
:
◊◊ 
typeof
◊◊ "
(
◊◊" #
Guid
◊◊# '
)
◊◊' (
,
◊◊( )
oldType
ÿÿ 
:
ÿÿ 
$str
ÿÿ +
,
ÿÿ+ ,
oldNullable
ŸŸ 
:
ŸŸ 
true
ŸŸ !
)
ŸŸ! "
;
ŸŸ" #
migrationBuilder
€€ 
.
€€ 
AddForeignKey
€€ *
(
€€* +
name
‹‹ 
:
‹‹ 
$str
‹‹ 5
,
‹‹5 6
table
›› 
:
›› 
$str
››  
,
››  !
column
ﬁﬁ 
:
ﬁﬁ 
$str
ﬁﬁ #
,
ﬁﬁ# $
principalTable
ﬂﬂ 
:
ﬂﬂ 
$str
ﬂﬂ  *
,
ﬂﬂ* +
principalColumn
‡‡ 
:
‡‡  
$str
‡‡! %
,
‡‡% &
onDelete
·· 
:
·· 
ReferentialAction
·· +
.
··+ ,
Cascade
··, 3
)
··3 4
;
··4 5
migrationBuilder
„„ 
.
„„ 
AddForeignKey
„„ *
(
„„* +
name
‰‰ 
:
‰‰ 
$str
‰‰ ;
,
‰‰; <
table
ÂÂ 
:
ÂÂ 
$str
ÂÂ "
,
ÂÂ" #
column
ÊÊ 
:
ÊÊ 
$str
ÊÊ %
,
ÊÊ% &
principalTable
ÁÁ 
:
ÁÁ 
$str
ÁÁ  ,
,
ÁÁ, -
principalColumn
ËË 
:
ËË  
$str
ËË! %
,
ËË% &
onDelete
ÈÈ 
:
ÈÈ 
ReferentialAction
ÈÈ +
.
ÈÈ+ ,
Cascade
ÈÈ, 3
)
ÈÈ3 4
;
ÈÈ4 5
migrationBuilder
ÎÎ 
.
ÎÎ 
AddForeignKey
ÎÎ *
(
ÎÎ* +
name
ÏÏ 
:
ÏÏ 
$str
ÏÏ C
,
ÏÏC D
table
ÌÌ 
:
ÌÌ 
$str
ÌÌ "
,
ÌÌ" #
column
ÓÓ 
:
ÓÓ 
$str
ÓÓ )
,
ÓÓ) *
principalTable
ÔÔ 
:
ÔÔ 
$str
ÔÔ  0
,
ÔÔ0 1
principalColumn
 
:
  
$str
! %
,
% &
onDelete
ÒÒ 
:
ÒÒ 
ReferentialAction
ÒÒ +
.
ÒÒ+ ,
Cascade
ÒÒ, 3
)
ÒÒ3 4
;
ÒÒ4 5
}
ÚÚ 	
}
ÛÛ 
}ÙÙ ˘
qC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Migrations\20230404224117_AddOwnerId.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *

Migrations* 4
{ 
public		 

partial		 
class		 

AddOwnerId		 #
:		$ %
	Migration		& /
{

 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
AlterColumn (
<( )
Guid) -
>- .
(. /
name 
: 
$str 
,  
table 
: 
$str "
," #
type 
: 
$str (
,( )
nullable 
: 
true 
, 

oldClrType 
: 
typeof "
(" #
Guid# '
)' (
,( )
oldType 
: 
$str +
)+ ,
;, -
migrationBuilder 
. 
	AddColumn &
<& '
Guid' +
>+ ,
(, -
name 
: 
$str 
,  
table 
: 
$str  
,  !
type 
: 
$str (
,( )
nullable 
: 
true 
) 
;  
migrationBuilder 
. 
	AddColumn &
<& '
Guid' +
>+ ,
(, -
name 
: 
$str 
,  
table 
: 
$str !
,! "
type 
: 
$str (
,( )
nullable   
:   
true   
)   
;    
}!! 	
	protected$$ 
override$$ 
void$$ 
Down$$  $
($$$ %
MigrationBuilder$$% 5
migrationBuilder$$6 F
)$$F G
{%% 	
migrationBuilder&& 
.&& 

DropColumn&& '
(&&' (
name'' 
:'' 
$str'' 
,''  
table(( 
:(( 
$str((  
)((  !
;((! "
migrationBuilder** 
.** 

DropColumn** '
(**' (
name++ 
:++ 
$str++ 
,++  
table,, 
:,, 
$str,, !
),,! "
;,," #
migrationBuilder.. 
... 
AlterColumn.. (
<..( )
Guid..) -
>..- .
(... /
name// 
:// 
$str// 
,//  
table00 
:00 
$str00 "
,00" #
type11 
:11 
$str11 (
,11( )
nullable22 
:22 
false22 
,22  
defaultValue33 
:33 
new33 !
Guid33" &
(33& '
$str33' M
)33M N
,33N O

oldClrType44 
:44 
typeof44 "
(44" #
Guid44# '
)44' (
,44( )
oldType55 
:55 
$str55 +
,55+ ,
oldNullable66 
:66 
true66 !
)66! "
;66" #
}77 	
}88 
}99 ·î
tC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Migrations\20230405224532_AddPermission.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *

Migrations* 4
{		 
public 

partial 
class 
AddPermission &
:' (
	Migration) 2
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
,H I
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 D
,D E
	maxLengthF O
:O P
$numQ S
,S T
nullableU ]
:] ^
false_ d
)d e
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str &
,& '
columns 
: 
table 
=> !
new" %
{ 
PermissionsId   !
=  " #
table  $ )
.  ) *
Column  * 0
<  0 1
int  1 4
>  4 5
(  5 6
type  6 :
:  : ;
$str  < A
,  A B
nullable  C K
:  K L
false  M R
)  R S
,  S T
RolesId!! 
=!! 
table!! #
.!!# $
Column!!$ *
<!!* +
Guid!!+ /
>!!/ 0
(!!0 1
type!!1 5
:!!5 6
$str!!7 I
,!!I J
nullable!!K S
:!!S T
false!!U Z
)!!Z [
}"" 
,"" 
constraints## 
:## 
table## "
=>### %
{$$ 
table%% 
.%% 

PrimaryKey%% $
(%%$ %
$str%%% 8
,%%8 9
x%%: ;
=>%%< >
new%%? B
{%%C D
x%%E F
.%%F G
PermissionsId%%G T
,%%T U
x%%V W
.%%W X
RolesId%%X _
}%%` a
)%%a b
;%%b c
table&& 
.&& 

ForeignKey&& $
(&&$ %
name'' 
:'' 
$str'' E
,''E F
column(( 
:(( 
x((  !
=>((" $
x((% &
.((& '
RolesId((' .
,((. /
principalTable)) &
:))& '
$str))( 5
,))5 6
principalColumn** '
:**' (
$str**) -
,**- .
onDelete++  
:++  !
ReferentialAction++" 3
.++3 4
Cascade++4 ;
)++; <
;++< =
table,, 
.,, 

ForeignKey,, $
(,,$ %
name-- 
:-- 
$str-- K
,--K L
column.. 
:.. 
x..  !
=>.." $
x..% &
...& '
PermissionsId..' 4
,..4 5
principalTable// &
://& '
$str//( 5
,//5 6
principalColumn00 '
:00' (
$str00) -
,00- .
onDelete11  
:11  !
ReferentialAction11" 3
.113 4
Cascade114 ;
)11; <
;11< =
}22 
)22 
;22 
migrationBuilder44 
.44 
CreateTable44 (
(44( )
name55 
:55 
$str55 '
,55' (
columns66 
:66 
table66 
=>66 !
new66" %
{77 
PermissionId88  
=88! "
table88# (
.88( )
Column88) /
<88/ 0
int880 3
>883 4
(884 5
type885 9
:889 :
$str88; @
,88@ A
nullable88B J
:88J K
false88L Q
)88Q R
,88R S
RoleId99 
=99 
table99 "
.99" #
Column99# )
<99) *
Guid99* .
>99. /
(99/ 0
type990 4
:994 5
$str996 H
,99H I
nullable99J R
:99R S
false99T Y
)99Y Z
}:: 
,:: 
constraints;; 
:;; 
table;; "
=>;;# %
{<< 
table== 
.== 

PrimaryKey== $
(==$ %
$str==% 9
,==9 :
x==; <
=>=== ?
new==@ C
{==D E
x==F G
.==G H
RoleId==H N
,==N O
x==P Q
.==Q R
PermissionId==R ^
}==_ `
)==` a
;==a b
table>> 
.>> 

ForeignKey>> $
(>>$ %
name?? 
:?? 
$str?? E
,??E F
column@@ 
:@@ 
x@@  !
=>@@" $
x@@% &
.@@& '
RoleId@@' -
,@@- .
principalTableAA &
:AA& '
$strAA( 5
,AA5 6
principalColumnBB '
:BB' (
$strBB) -
,BB- .
onDeleteCC  
:CC  !
ReferentialActionCC" 3
.CC3 4
CascadeCC4 ;
)CC; <
;CC< =
tableDD 
.DD 

ForeignKeyDD $
(DD$ %
nameEE 
:EE 
$strEE K
,EEK L
columnFF 
:FF 
xFF  !
=>FF" $
xFF% &
.FF& '
PermissionIdFF' 3
,FF3 4
principalTableGG &
:GG& '
$strGG( 5
,GG5 6
principalColumnHH '
:HH' (
$strHH) -
,HH- .
onDeleteII  
:II  !
ReferentialActionII" 3
.II3 4
CascadeII4 ;
)II; <
;II< =
}JJ 
)JJ 
;JJ 
migrationBuilderLL 
.LL 

InsertDataLL '
(LL' (
tableMM 
:MM 
$strMM $
,MM$ %
columnsNN 
:NN 
newNN 
[NN 
]NN 
{NN  
$strNN! %
,NN% &
$strNN' 9
,NN9 :
$strNN; A
,NNA B
$strNNC S
}NNT U
,NNU V
valuesOO 
:OO 
newOO 
objectOO "
[OO" #
,OO# $
]OO$ %
{PP 
{QQ 
newQQ 
GuidQQ 
(QQ 
$strQQ E
)QQE F
,QQF G
nullQQH L
,QQL M
$strQQN W
,QQW X
$strQQY b
}QQc d
,QQd e
{RR 
newRR 
GuidRR 
(RR 
$strRR E
)RRE F
,RRF G
nullRRH L
,RRL M
$strRRN Z
,RRZ [
$strRR\ h
}RRi j
,RRj k
{SS 
newSS 
GuidSS 
(SS 
$strSS E
)SSE F
,SSF G
nullSSH L
,SSL M
$strSSN V
,SSV W
$strSSX `
}SSa b
}TT 
)TT 
;TT 
migrationBuilderVV 
.VV 

InsertDataVV '
(VV' (
tableWW 
:WW 
$strWW $
,WW$ %
columnsXX 
:XX 
newXX 
[XX 
]XX 
{XX  
$strXX! %
,XX% &
$strXX' -
}XX. /
,XX/ 0
valuesYY 
:YY 
newYY 
objectYY "
[YY" #
,YY# $
]YY$ %
{ZZ 
{[[ 
$num[[ 
,[[ 
$str[[ '
}[[( )
,[[) *
{\\ 
$num\\ 
,\\ 
$str\\ )
}\\* +
,\\+ ,
{]] 
$num]] 
,]] 
$str]] )
}]]* +
,]]+ ,
{^^ 
$num^^ 
,^^ 
$str^^ )
}^^* +
,^^+ ,
{__ 
$num__ 
,__ 
$str__ )
}__* +
,__+ ,
{`` 
$num`` 
,`` 
$str`` +
}``, -
,``- .
{aa 
$numaa 
,aa 
$straa +
}aa, -
,aa- .
{bb 
$numbb 
,bb 
$strbb +
}bb, -
,bb- .
{cc 
$numcc 
,cc 
$strcc &
}cc' (
,cc( )
{dd 
$numdd 
,dd 
$strdd )
}dd* +
,dd+ ,
{ee 
$numee 
,ee 
$stree )
}ee* +
,ee+ ,
{ff 
$numff 
,ff 
$strff )
}ff* +
,ff+ ,
{gg 
$numgg 
,gg 
$strgg &
}gg' (
,gg( )
{hh 
$numhh 
,hh 
$strhh (
}hh) *
,hh* +
{ii 
$numii 
,ii 
$strii (
}ii) *
,ii* +
{jj 
$numjj 
,jj 
$strjj (
}jj) *
}kk 
)kk 
;kk 
migrationBuildermm 
.mm 

InsertDatamm '
(mm' (
tablenn 
:nn 
$strnn (
,nn( )
columnsoo 
:oo 
newoo 
[oo 
]oo 
{oo  
$stroo! /
,oo/ 0
$stroo1 9
}oo: ;
,oo; <
valuespp 
:pp 
newpp 
objectpp "
[pp" #
,pp# $
]pp$ %
{qq 
{rr 
$numrr 
,rr 
newrr 
Guidrr !
(rr! "
$strrr" H
)rrH I
}rrJ K
,rrK L
{ss 
$numss 
,ss 
newss 
Guidss !
(ss! "
$strss" H
)ssH I
}ssJ K
,ssK L
{tt 
$numtt 
,tt 
newtt 
Guidtt !
(tt! "
$strtt" H
)ttH I
}ttJ K
,ttK L
{uu 
$numuu 
,uu 
newuu 
Guiduu !
(uu! "
$struu" H
)uuH I
}uuJ K
,uuK L
{vv 
$numvv 
,vv 
newvv 
Guidvv !
(vv! "
$strvv" H
)vvH I
}vvJ K
,vvK L
{ww 
$numww 
,ww 
newww 
Guidww !
(ww! "
$strww" H
)wwH I
}wwJ K
,wwK L
{xx 
$numxx 
,xx 
newxx 
Guidxx "
(xx" #
$strxx# I
)xxI J
}xxK L
,xxL M
{yy 
$numyy 
,yy 
newyy 
Guidyy "
(yy" #
$stryy# I
)yyI J
}yyK L
,yyL M
{zz 
$numzz 
,zz 
newzz 
Guidzz "
(zz" #
$strzz# I
)zzI J
}zzK L
,zzL M
{{{ 
$num{{ 
,{{ 
new{{ 
Guid{{ "
({{" #
$str{{# I
){{I J
}{{K L
,{{L M
{|| 
$num|| 
,|| 
new|| 
Guid|| !
(||! "
$str||" H
)||H I
}||J K
,||K L
{}} 
$num}} 
,}} 
new}} 
Guid}} !
(}}! "
$str}}" H
)}}H I
}}}J K
,}}K L
{~~ 
$num~~ 
,~~ 
new~~ 
Guid~~ !
(~~! "
$str~~" H
)~~H I
}~~J K
,~~K L
{ 
$num 
, 
new 
Guid !
(! "
$str" H
)H I
}J K
,K L
{
ÄÄ 
$num
ÄÄ 
,
ÄÄ 
new
ÄÄ 
Guid
ÄÄ !
(
ÄÄ! "
$str
ÄÄ" H
)
ÄÄH I
}
ÄÄJ K
,
ÄÄK L
{
ÅÅ 
$num
ÅÅ 
,
ÅÅ 
new
ÅÅ 
Guid
ÅÅ !
(
ÅÅ! "
$str
ÅÅ" H
)
ÅÅH I
}
ÅÅJ K
,
ÅÅK L
{
ÇÇ 
$num
ÇÇ 
,
ÇÇ 
new
ÇÇ 
Guid
ÇÇ !
(
ÇÇ! "
$str
ÇÇ" H
)
ÇÇH I
}
ÇÇJ K
,
ÇÇK L
{
ÉÉ 
$num
ÉÉ 
,
ÉÉ 
new
ÉÉ 
Guid
ÉÉ !
(
ÉÉ! "
$str
ÉÉ" H
)
ÉÉH I
}
ÉÉJ K
,
ÉÉK L
{
ÑÑ 
$num
ÑÑ 
,
ÑÑ 
new
ÑÑ 
Guid
ÑÑ !
(
ÑÑ! "
$str
ÑÑ" H
)
ÑÑH I
}
ÑÑJ K
,
ÑÑK L
{
ÖÖ 
$num
ÖÖ 
,
ÖÖ 
new
ÖÖ 
Guid
ÖÖ "
(
ÖÖ" #
$str
ÖÖ# I
)
ÖÖI J
}
ÖÖK L
,
ÖÖL M
{
ÜÜ 
$num
ÜÜ 
,
ÜÜ 
new
ÜÜ 
Guid
ÜÜ "
(
ÜÜ" #
$str
ÜÜ# I
)
ÜÜI J
}
ÜÜK L
,
ÜÜL M
{
áá 
$num
áá 
,
áá 
new
áá 
Guid
áá "
(
áá" #
$str
áá# I
)
ááI J
}
ááK L
,
ááL M
{
àà 
$num
àà 
,
àà 
new
àà 
Guid
àà "
(
àà" #
$str
àà# I
)
ààI J
}
ààK L
,
ààL M
{
ââ 
$num
ââ 
,
ââ 
new
ââ 
Guid
ââ "
(
ââ" #
$str
ââ# I
)
ââI J
}
ââK L
,
ââL M
{
ää 
$num
ää 
,
ää 
new
ää 
Guid
ää "
(
ää" #
$str
ää# I
)
ääI J
}
ääK L
,
ääL M
{
ãã 
$num
ãã 
,
ãã 
new
ãã 
Guid
ãã "
(
ãã" #
$str
ãã# I
)
ããI J
}
ããK L
,
ããL M
{
åå 
$num
åå 
,
åå 
new
åå 
Guid
åå !
(
åå! "
$str
åå" H
)
ååH I
}
ååJ K
,
ååK L
{
çç 
$num
çç 
,
çç 
new
çç 
Guid
çç !
(
çç! "
$str
çç" H
)
ççH I
}
ççJ K
,
ççK L
{
éé 
$num
éé 
,
éé 
new
éé 
Guid
éé !
(
éé! "
$str
éé" H
)
ééH I
}
ééJ K
,
ééK L
{
èè 
$num
èè 
,
èè 
new
èè 
Guid
èè !
(
èè! "
$str
èè" H
)
èèH I
}
èèJ K
,
èèK L
{
êê 
$num
êê 
,
êê 
new
êê 
Guid
êê !
(
êê! "
$str
êê" H
)
êêH I
}
êêJ K
,
êêK L
{
ëë 
$num
ëë 
,
ëë 
new
ëë 
Guid
ëë !
(
ëë! "
$str
ëë" H
)
ëëH I
}
ëëJ K
,
ëëK L
{
íí 
$num
íí 
,
íí 
new
íí 
Guid
íí "
(
íí" #
$str
íí# I
)
ííI J
}
ííK L
}
ìì 
)
ìì 
;
ìì 
migrationBuilder
ïï 
.
ïï 
CreateIndex
ïï (
(
ïï( )
name
ññ 
:
ññ 
$str
ññ 1
,
ññ1 2
table
óó 
:
óó 
$str
óó '
,
óó' (
column
òò 
:
òò 
$str
òò !
)
òò! "
;
òò" #
migrationBuilder
öö 
.
öö 
CreateIndex
öö (
(
öö( )
name
õõ 
:
õõ 
$str
õõ 7
,
õõ7 8
table
úú 
:
úú 
$str
úú (
,
úú( )
column
ùù 
:
ùù 
$str
ùù &
)
ùù& '
;
ùù' (
}
ûû 	
	protected
°° 
override
°° 
void
°° 
Down
°°  $
(
°°$ %
MigrationBuilder
°°% 5
migrationBuilder
°°6 F
)
°°F G
{
¢¢ 	
migrationBuilder
££ 
.
££ 
	DropTable
££ &
(
££& '
name
§§ 
:
§§ 
$str
§§ &
)
§§& '
;
§§' (
migrationBuilder
¶¶ 
.
¶¶ 
	DropTable
¶¶ &
(
¶¶& '
name
ßß 
:
ßß 
$str
ßß '
)
ßß' (
;
ßß( )
migrationBuilder
©© 
.
©© 
	DropTable
©© &
(
©©& '
name
™™ 
:
™™ 
$str
™™ #
)
™™# $
;
™™$ %
migrationBuilder
¨¨ 
.
¨¨ 

DeleteData
¨¨ '
(
¨¨' (
table
≠≠ 
:
≠≠ 
$str
≠≠ $
,
≠≠$ %
	keyColumn
ÆÆ 
:
ÆÆ 
$str
ÆÆ 
,
ÆÆ  
keyValue
ØØ 
:
ØØ 
new
ØØ 
Guid
ØØ "
(
ØØ" #
$str
ØØ# I
)
ØØI J
)
ØØJ K
;
ØØK L
migrationBuilder
±± 
.
±± 

DeleteData
±± '
(
±±' (
table
≤≤ 
:
≤≤ 
$str
≤≤ $
,
≤≤$ %
	keyColumn
≥≥ 
:
≥≥ 
$str
≥≥ 
,
≥≥  
keyValue
¥¥ 
:
¥¥ 
new
¥¥ 
Guid
¥¥ "
(
¥¥" #
$str
¥¥# I
)
¥¥I J
)
¥¥J K
;
¥¥K L
migrationBuilder
∂∂ 
.
∂∂ 

DeleteData
∂∂ '
(
∂∂' (
table
∑∑ 
:
∑∑ 
$str
∑∑ $
,
∑∑$ %
	keyColumn
∏∏ 
:
∏∏ 
$str
∏∏ 
,
∏∏  
keyValue
ππ 
:
ππ 
new
ππ 
Guid
ππ "
(
ππ" #
$str
ππ# I
)
ππI J
)
ππJ K
;
ππK L
}
∫∫ 	
}
ªª 
}ºº ˛÷
yC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Migrations\20230406011059_AddPermissionRole1.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *

Migrations* 4
{		 
public 

partial 
class 
AddPermissionRole1 +
:, -
	Migration. 7
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
DropPrimaryKey +
(+ ,
name 
: 
$str *
,* +
table 
: 
$str (
)( )
;) *
migrationBuilder 
. 
	DropIndex &
(& '
name 
: 
$str 7
,7 8
table 
: 
$str (
)( )
;) *
migrationBuilder 
. 

DeleteData '
(' (
table 
: 
$str (
,( )

keyColumns 
: 
new 
[  
]  !
{" #
$str$ 2
,2 3
$str4 <
}= >
,> ?
	keyValues 
: 
new 
object %
[% &
]& '
{( )
$num* +
,+ ,
new- 0
Guid1 5
(5 6
$str6 \
)\ ]
}^ _
)_ `
;` a
migrationBuilder 
. 

DeleteData '
(' (
table 
: 
$str (
,( )

keyColumns 
: 
new 
[  
]  !
{" #
$str$ 2
,2 3
$str4 <
}= >
,> ?
	keyValues   
:   
new   
object   %
[  % &
]  & '
{  ( )
$num  * +
,  + ,
new  - 0
Guid  1 5
(  5 6
$str  6 \
)  \ ]
}  ^ _
)  _ `
;  ` a
migrationBuilder"" 
."" 

DeleteData"" '
(""' (
table## 
:## 
$str## (
,##( )

keyColumns$$ 
:$$ 
new$$ 
[$$  
]$$  !
{$$" #
$str$$$ 2
,$$2 3
$str$$4 <
}$$= >
,$$> ?
	keyValues%% 
:%% 
new%% 
object%% %
[%%% &
]%%& '
{%%( )
$num%%* +
,%%+ ,
new%%- 0
Guid%%1 5
(%%5 6
$str%%6 \
)%%\ ]
}%%^ _
)%%_ `
;%%` a
migrationBuilder'' 
.'' 

DeleteData'' '
(''' (
table(( 
:(( 
$str(( (
,((( )

keyColumns)) 
:)) 
new)) 
[))  
]))  !
{))" #
$str))$ 2
,))2 3
$str))4 <
}))= >
,))> ?
	keyValues** 
:** 
new** 
object** %
[**% &
]**& '
{**( )
$num*** +
,**+ ,
new**- 0
Guid**1 5
(**5 6
$str**6 \
)**\ ]
}**^ _
)**_ `
;**` a
migrationBuilder,, 
.,, 

DeleteData,, '
(,,' (
table-- 
:-- 
$str-- (
,--( )

keyColumns.. 
:.. 
new.. 
[..  
]..  !
{.." #
$str..$ 2
,..2 3
$str..4 <
}..= >
,..> ?
	keyValues// 
:// 
new// 
object// %
[//% &
]//& '
{//( )
$num//* +
,//+ ,
new//- 0
Guid//1 5
(//5 6
$str//6 \
)//\ ]
}//^ _
)//_ `
;//` a
migrationBuilder11 
.11 

DeleteData11 '
(11' (
table22 
:22 
$str22 (
,22( )

keyColumns33 
:33 
new33 
[33  
]33  !
{33" #
$str33$ 2
,332 3
$str334 <
}33= >
,33> ?
	keyValues44 
:44 
new44 
object44 %
[44% &
]44& '
{44( )
$num44* +
,44+ ,
new44- 0
Guid441 5
(445 6
$str446 \
)44\ ]
}44^ _
)44_ `
;44` a
migrationBuilder66 
.66 

DeleteData66 '
(66' (
table77 
:77 
$str77 (
,77( )

keyColumns88 
:88 
new88 
[88  
]88  !
{88" #
$str88$ 2
,882 3
$str884 <
}88= >
,88> ?
	keyValues99 
:99 
new99 
object99 %
[99% &
]99& '
{99( )
$num99* ,
,99, -
new99. 1
Guid992 6
(996 7
$str997 ]
)99] ^
}99_ `
)99` a
;99a b
migrationBuilder;; 
.;; 

DeleteData;; '
(;;' (
table<< 
:<< 
$str<< (
,<<( )

keyColumns== 
:== 
new== 
[==  
]==  !
{==" #
$str==$ 2
,==2 3
$str==4 <
}=== >
,==> ?
	keyValues>> 
:>> 
new>> 
object>> %
[>>% &
]>>& '
{>>( )
$num>>* ,
,>>, -
new>>. 1
Guid>>2 6
(>>6 7
$str>>7 ]
)>>] ^
}>>_ `
)>>` a
;>>a b
migrationBuilder@@ 
.@@ 

DeleteData@@ '
(@@' (
tableAA 
:AA 
$strAA (
,AA( )

keyColumnsBB 
:BB 
newBB 
[BB  
]BB  !
{BB" #
$strBB$ 2
,BB2 3
$strBB4 <
}BB= >
,BB> ?
	keyValuesCC 
:CC 
newCC 
objectCC %
[CC% &
]CC& '
{CC( )
$numCC* ,
,CC, -
newCC. 1
GuidCC2 6
(CC6 7
$strCC7 ]
)CC] ^
}CC_ `
)CC` a
;CCa b
migrationBuilderEE 
.EE 

DeleteDataEE '
(EE' (
tableFF 
:FF 
$strFF (
,FF( )

keyColumnsGG 
:GG 
newGG 
[GG  
]GG  !
{GG" #
$strGG$ 2
,GG2 3
$strGG4 <
}GG= >
,GG> ?
	keyValuesHH 
:HH 
newHH 
objectHH %
[HH% &
]HH& '
{HH( )
$numHH* ,
,HH, -
newHH. 1
GuidHH2 6
(HH6 7
$strHH7 ]
)HH] ^
}HH_ `
)HH` a
;HHa b
migrationBuilderJJ 
.JJ 

DeleteDataJJ '
(JJ' (
tableKK 
:KK 
$strKK (
,KK( )

keyColumnsLL 
:LL 
newLL 
[LL  
]LL  !
{LL" #
$strLL$ 2
,LL2 3
$strLL4 <
}LL= >
,LL> ?
	keyValuesMM 
:MM 
newMM 
objectMM %
[MM% &
]MM& '
{MM( )
$numMM* +
,MM+ ,
newMM- 0
GuidMM1 5
(MM5 6
$strMM6 \
)MM\ ]
}MM^ _
)MM_ `
;MM` a
migrationBuilderOO 
.OO 

DeleteDataOO '
(OO' (
tablePP 
:PP 
$strPP (
,PP( )

keyColumnsQQ 
:QQ 
newQQ 
[QQ  
]QQ  !
{QQ" #
$strQQ$ 2
,QQ2 3
$strQQ4 <
}QQ= >
,QQ> ?
	keyValuesRR 
:RR 
newRR 
objectRR %
[RR% &
]RR& '
{RR( )
$numRR* +
,RR+ ,
newRR- 0
GuidRR1 5
(RR5 6
$strRR6 \
)RR\ ]
}RR^ _
)RR_ `
;RR` a
migrationBuilderTT 
.TT 

DeleteDataTT '
(TT' (
tableUU 
:UU 
$strUU (
,UU( )

keyColumnsVV 
:VV 
newVV 
[VV  
]VV  !
{VV" #
$strVV$ 2
,VV2 3
$strVV4 <
}VV= >
,VV> ?
	keyValuesWW 
:WW 
newWW 
objectWW %
[WW% &
]WW& '
{WW( )
$numWW* +
,WW+ ,
newWW- 0
GuidWW1 5
(WW5 6
$strWW6 \
)WW\ ]
}WW^ _
)WW_ `
;WW` a
migrationBuilderYY 
.YY 

DeleteDataYY '
(YY' (
tableZZ 
:ZZ 
$strZZ (
,ZZ( )

keyColumns[[ 
:[[ 
new[[ 
[[[  
][[  !
{[[" #
$str[[$ 2
,[[2 3
$str[[4 <
}[[= >
,[[> ?
	keyValues\\ 
:\\ 
new\\ 
object\\ %
[\\% &
]\\& '
{\\( )
$num\\* +
,\\+ ,
new\\- 0
Guid\\1 5
(\\5 6
$str\\6 \
)\\\ ]
}\\^ _
)\\_ `
;\\` a
migrationBuilder^^ 
.^^ 

DeleteData^^ '
(^^' (
table__ 
:__ 
$str__ (
,__( )

keyColumns`` 
:`` 
new`` 
[``  
]``  !
{``" #
$str``$ 2
,``2 3
$str``4 <
}``= >
,``> ?
	keyValuesaa 
:aa 
newaa 
objectaa %
[aa% &
]aa& '
{aa( )
$numaa* +
,aa+ ,
newaa- 0
Guidaa1 5
(aa5 6
$straa6 \
)aa\ ]
}aa^ _
)aa_ `
;aa` a
migrationBuildercc 
.cc 

DeleteDatacc '
(cc' (
tabledd 
:dd 
$strdd (
,dd( )

keyColumnsee 
:ee 
newee 
[ee  
]ee  !
{ee" #
$stree$ 2
,ee2 3
$stree4 <
}ee= >
,ee> ?
	keyValuesff 
:ff 
newff 
objectff %
[ff% &
]ff& '
{ff( )
$numff* +
,ff+ ,
newff- 0
Guidff1 5
(ff5 6
$strff6 \
)ff\ ]
}ff^ _
)ff_ `
;ff` a
migrationBuilderhh 
.hh 

DeleteDatahh '
(hh' (
tableii 
:ii 
$strii (
,ii( )

keyColumnsjj 
:jj 
newjj 
[jj  
]jj  !
{jj" #
$strjj$ 2
,jj2 3
$strjj4 <
}jj= >
,jj> ?
	keyValueskk 
:kk 
newkk 
objectkk %
[kk% &
]kk& '
{kk( )
$numkk* +
,kk+ ,
newkk- 0
Guidkk1 5
(kk5 6
$strkk6 \
)kk\ ]
}kk^ _
)kk_ `
;kk` a
migrationBuildermm 
.mm 

DeleteDatamm '
(mm' (
tablenn 
:nn 
$strnn (
,nn( )

keyColumnsoo 
:oo 
newoo 
[oo  
]oo  !
{oo" #
$stroo$ 2
,oo2 3
$stroo4 <
}oo= >
,oo> ?
	keyValuespp 
:pp 
newpp 
objectpp %
[pp% &
]pp& '
{pp( )
$numpp* +
,pp+ ,
newpp- 0
Guidpp1 5
(pp5 6
$strpp6 \
)pp\ ]
}pp^ _
)pp_ `
;pp` a
migrationBuilderrr 
.rr 

DeleteDatarr '
(rr' (
tabless 
:ss 
$strss (
,ss( )

keyColumnstt 
:tt 
newtt 
[tt  
]tt  !
{tt" #
$strtt$ 2
,tt2 3
$strtt4 <
}tt= >
,tt> ?
	keyValuesuu 
:uu 
newuu 
objectuu %
[uu% &
]uu& '
{uu( )
$numuu* +
,uu+ ,
newuu- 0
Guiduu1 5
(uu5 6
$struu6 \
)uu\ ]
}uu^ _
)uu_ `
;uu` a
migrationBuilderww 
.ww 

DeleteDataww '
(ww' (
tablexx 
:xx 
$strxx (
,xx( )

keyColumnsyy 
:yy 
newyy 
[yy  
]yy  !
{yy" #
$stryy$ 2
,yy2 3
$stryy4 <
}yy= >
,yy> ?
	keyValueszz 
:zz 
newzz 
objectzz %
[zz% &
]zz& '
{zz( )
$numzz* ,
,zz, -
newzz. 1
Guidzz2 6
(zz6 7
$strzz7 ]
)zz] ^
}zz_ `
)zz` a
;zza b
migrationBuilder|| 
.|| 

DeleteData|| '
(||' (
table}} 
:}} 
$str}} (
,}}( )

keyColumns~~ 
:~~ 
new~~ 
[~~  
]~~  !
{~~" #
$str~~$ 2
,~~2 3
$str~~4 <
}~~= >
,~~> ?
	keyValues 
: 
new 
object %
[% &
]& '
{( )
$num* ,
,, -
new. 1
Guid2 6
(6 7
$str7 ]
)] ^
}_ `
)` a
;a b
migrationBuilder
ÅÅ 
.
ÅÅ 

DeleteData
ÅÅ '
(
ÅÅ' (
table
ÇÇ 
:
ÇÇ 
$str
ÇÇ (
,
ÇÇ( )

keyColumns
ÉÉ 
:
ÉÉ 
new
ÉÉ 
[
ÉÉ  
]
ÉÉ  !
{
ÉÉ" #
$str
ÉÉ$ 2
,
ÉÉ2 3
$str
ÉÉ4 <
}
ÉÉ= >
,
ÉÉ> ?
	keyValues
ÑÑ 
:
ÑÑ 
new
ÑÑ 
object
ÑÑ %
[
ÑÑ% &
]
ÑÑ& '
{
ÑÑ( )
$num
ÑÑ* ,
,
ÑÑ, -
new
ÑÑ. 1
Guid
ÑÑ2 6
(
ÑÑ6 7
$str
ÑÑ7 ]
)
ÑÑ] ^
}
ÑÑ_ `
)
ÑÑ` a
;
ÑÑa b
migrationBuilder
ÜÜ 
.
ÜÜ 

DeleteData
ÜÜ '
(
ÜÜ' (
table
áá 
:
áá 
$str
áá (
,
áá( )

keyColumns
àà 
:
àà 
new
àà 
[
àà  
]
àà  !
{
àà" #
$str
àà$ 2
,
àà2 3
$str
àà4 <
}
àà= >
,
àà> ?
	keyValues
ââ 
:
ââ 
new
ââ 
object
ââ %
[
ââ% &
]
ââ& '
{
ââ( )
$num
ââ* ,
,
ââ, -
new
ââ. 1
Guid
ââ2 6
(
ââ6 7
$str
ââ7 ]
)
ââ] ^
}
ââ_ `
)
ââ` a
;
ââa b
migrationBuilder
ãã 
.
ãã 

DeleteData
ãã '
(
ãã' (
table
åå 
:
åå 
$str
åå (
,
åå( )

keyColumns
çç 
:
çç 
new
çç 
[
çç  
]
çç  !
{
çç" #
$str
çç$ 2
,
çç2 3
$str
çç4 <
}
çç= >
,
çç> ?
	keyValues
éé 
:
éé 
new
éé 
object
éé %
[
éé% &
]
éé& '
{
éé( )
$num
éé* ,
,
éé, -
new
éé. 1
Guid
éé2 6
(
éé6 7
$str
éé7 ]
)
éé] ^
}
éé_ `
)
éé` a
;
ééa b
migrationBuilder
êê 
.
êê 

DeleteData
êê '
(
êê' (
table
ëë 
:
ëë 
$str
ëë (
,
ëë( )

keyColumns
íí 
:
íí 
new
íí 
[
íí  
]
íí  !
{
íí" #
$str
íí$ 2
,
íí2 3
$str
íí4 <
}
íí= >
,
íí> ?
	keyValues
ìì 
:
ìì 
new
ìì 
object
ìì %
[
ìì% &
]
ìì& '
{
ìì( )
$num
ìì* ,
,
ìì, -
new
ìì. 1
Guid
ìì2 6
(
ìì6 7
$str
ìì7 ]
)
ìì] ^
}
ìì_ `
)
ìì` a
;
ììa b
migrationBuilder
ïï 
.
ïï 

DeleteData
ïï '
(
ïï' (
table
ññ 
:
ññ 
$str
ññ (
,
ññ( )

keyColumns
óó 
:
óó 
new
óó 
[
óó  
]
óó  !
{
óó" #
$str
óó$ 2
,
óó2 3
$str
óó4 <
}
óó= >
,
óó> ?
	keyValues
òò 
:
òò 
new
òò 
object
òò %
[
òò% &
]
òò& '
{
òò( )
$num
òò* ,
,
òò, -
new
òò. 1
Guid
òò2 6
(
òò6 7
$str
òò7 ]
)
òò] ^
}
òò_ `
)
òò` a
;
òòa b
migrationBuilder
öö 
.
öö 

DeleteData
öö '
(
öö' (
table
õõ 
:
õõ 
$str
õõ (
,
õõ( )

keyColumns
úú 
:
úú 
new
úú 
[
úú  
]
úú  !
{
úú" #
$str
úú$ 2
,
úú2 3
$str
úú4 <
}
úú= >
,
úú> ?
	keyValues
ùù 
:
ùù 
new
ùù 
object
ùù %
[
ùù% &
]
ùù& '
{
ùù( )
$num
ùù* +
,
ùù+ ,
new
ùù- 0
Guid
ùù1 5
(
ùù5 6
$str
ùù6 \
)
ùù\ ]
}
ùù^ _
)
ùù_ `
;
ùù` a
migrationBuilder
üü 
.
üü 

DeleteData
üü '
(
üü' (
table
†† 
:
†† 
$str
†† (
,
††( )

keyColumns
°° 
:
°° 
new
°° 
[
°°  
]
°°  !
{
°°" #
$str
°°$ 2
,
°°2 3
$str
°°4 <
}
°°= >
,
°°> ?
	keyValues
¢¢ 
:
¢¢ 
new
¢¢ 
object
¢¢ %
[
¢¢% &
]
¢¢& '
{
¢¢( )
$num
¢¢* +
,
¢¢+ ,
new
¢¢- 0
Guid
¢¢1 5
(
¢¢5 6
$str
¢¢6 \
)
¢¢\ ]
}
¢¢^ _
)
¢¢_ `
;
¢¢` a
migrationBuilder
§§ 
.
§§ 

DeleteData
§§ '
(
§§' (
table
•• 
:
•• 
$str
•• (
,
••( )

keyColumns
¶¶ 
:
¶¶ 
new
¶¶ 
[
¶¶  
]
¶¶  !
{
¶¶" #
$str
¶¶$ 2
,
¶¶2 3
$str
¶¶4 <
}
¶¶= >
,
¶¶> ?
	keyValues
ßß 
:
ßß 
new
ßß 
object
ßß %
[
ßß% &
]
ßß& '
{
ßß( )
$num
ßß* +
,
ßß+ ,
new
ßß- 0
Guid
ßß1 5
(
ßß5 6
$str
ßß6 \
)
ßß\ ]
}
ßß^ _
)
ßß_ `
;
ßß` a
migrationBuilder
©© 
.
©© 

DeleteData
©© '
(
©©' (
table
™™ 
:
™™ 
$str
™™ (
,
™™( )

keyColumns
´´ 
:
´´ 
new
´´ 
[
´´  
]
´´  !
{
´´" #
$str
´´$ 2
,
´´2 3
$str
´´4 <
}
´´= >
,
´´> ?
	keyValues
¨¨ 
:
¨¨ 
new
¨¨ 
object
¨¨ %
[
¨¨% &
]
¨¨& '
{
¨¨( )
$num
¨¨* +
,
¨¨+ ,
new
¨¨- 0
Guid
¨¨1 5
(
¨¨5 6
$str
¨¨6 \
)
¨¨\ ]
}
¨¨^ _
)
¨¨_ `
;
¨¨` a
migrationBuilder
ÆÆ 
.
ÆÆ 

DeleteData
ÆÆ '
(
ÆÆ' (
table
ØØ 
:
ØØ 
$str
ØØ (
,
ØØ( )

keyColumns
∞∞ 
:
∞∞ 
new
∞∞ 
[
∞∞  
]
∞∞  !
{
∞∞" #
$str
∞∞$ 2
,
∞∞2 3
$str
∞∞4 <
}
∞∞= >
,
∞∞> ?
	keyValues
±± 
:
±± 
new
±± 
object
±± %
[
±±% &
]
±±& '
{
±±( )
$num
±±* +
,
±±+ ,
new
±±- 0
Guid
±±1 5
(
±±5 6
$str
±±6 \
)
±±\ ]
}
±±^ _
)
±±_ `
;
±±` a
migrationBuilder
≥≥ 
.
≥≥ 

DeleteData
≥≥ '
(
≥≥' (
table
¥¥ 
:
¥¥ 
$str
¥¥ (
,
¥¥( )

keyColumns
µµ 
:
µµ 
new
µµ 
[
µµ  
]
µµ  !
{
µµ" #
$str
µµ$ 2
,
µµ2 3
$str
µµ4 <
}
µµ= >
,
µµ> ?
	keyValues
∂∂ 
:
∂∂ 
new
∂∂ 
object
∂∂ %
[
∂∂% &
]
∂∂& '
{
∂∂( )
$num
∂∂* +
,
∂∂+ ,
new
∂∂- 0
Guid
∂∂1 5
(
∂∂5 6
$str
∂∂6 \
)
∂∂\ ]
}
∂∂^ _
)
∂∂_ `
;
∂∂` a
migrationBuilder
∏∏ 
.
∏∏ 

DeleteData
∏∏ '
(
∏∏' (
table
ππ 
:
ππ 
$str
ππ (
,
ππ( )

keyColumns
∫∫ 
:
∫∫ 
new
∫∫ 
[
∫∫  
]
∫∫  !
{
∫∫" #
$str
∫∫$ 2
,
∫∫2 3
$str
∫∫4 <
}
∫∫= >
,
∫∫> ?
	keyValues
ªª 
:
ªª 
new
ªª 
object
ªª %
[
ªª% &
]
ªª& '
{
ªª( )
$num
ªª* ,
,
ªª, -
new
ªª. 1
Guid
ªª2 6
(
ªª6 7
$str
ªª7 ]
)
ªª] ^
}
ªª_ `
)
ªª` a
;
ªªa b
migrationBuilder
ΩΩ 
.
ΩΩ 
AddPrimaryKey
ΩΩ *
(
ΩΩ* +
name
ææ 
:
ææ 
$str
ææ *
,
ææ* +
table
øø 
:
øø 
$str
øø (
,
øø( )
columns
¿¿ 
:
¿¿ 
new
¿¿ 
[
¿¿ 
]
¿¿ 
{
¿¿  
$str
¿¿! /
,
¿¿/ 0
$str
¿¿1 9
}
¿¿: ;
)
¿¿; <
;
¿¿< =
migrationBuilder
¬¬ 
.
¬¬ 

InsertData
¬¬ '
(
¬¬' (
table
√√ 
:
√√ 
$str
√√ (
,
√√( )
columns
ƒƒ 
:
ƒƒ 
new
ƒƒ 
[
ƒƒ 
]
ƒƒ 
{
ƒƒ  
$str
ƒƒ! /
,
ƒƒ/ 0
$str
ƒƒ1 9
}
ƒƒ: ;
,
ƒƒ; <
values
≈≈ 
:
≈≈ 
new
≈≈ 
object
≈≈ "
[
≈≈" #
,
≈≈# $
]
≈≈$ %
{
∆∆ 
{
«« 
$num
«« 
,
«« 
new
«« 
Guid
«« !
(
««! "
$str
««" H
)
««H I
}
««J K
,
««K L
{
»» 
$num
»» 
,
»» 
new
»» 
Guid
»» !
(
»»! "
$str
»»" H
)
»»H I
}
»»J K
,
»»K L
{
…… 
$num
…… 
,
…… 
new
…… 
Guid
…… !
(
……! "
$str
……" H
)
……H I
}
……J K
,
……K L
{
   
$num
   
,
   
new
   
Guid
   !
(
  ! "
$str
  " H
)
  H I
}
  J K
,
  K L
{
ÀÀ 
$num
ÀÀ 
,
ÀÀ 
new
ÀÀ 
Guid
ÀÀ !
(
ÀÀ! "
$str
ÀÀ" H
)
ÀÀH I
}
ÀÀJ K
,
ÀÀK L
{
ÃÃ 
$num
ÃÃ 
,
ÃÃ 
new
ÃÃ 
Guid
ÃÃ !
(
ÃÃ! "
$str
ÃÃ" H
)
ÃÃH I
}
ÃÃJ K
,
ÃÃK L
{
ÕÕ 
$num
ÕÕ 
,
ÕÕ 
new
ÕÕ 
Guid
ÕÕ !
(
ÕÕ! "
$str
ÕÕ" H
)
ÕÕH I
}
ÕÕJ K
,
ÕÕK L
{
ŒŒ 
$num
ŒŒ 
,
ŒŒ 
new
ŒŒ 
Guid
ŒŒ !
(
ŒŒ! "
$str
ŒŒ" H
)
ŒŒH I
}
ŒŒJ K
,
ŒŒK L
{
œœ 
$num
œœ 
,
œœ 
new
œœ 
Guid
œœ !
(
œœ! "
$str
œœ" H
)
œœH I
}
œœJ K
,
œœK L
{
–– 
$num
–– 
,
–– 
new
–– 
Guid
–– !
(
––! "
$str
––" H
)
––H I
}
––J K
,
––K L
{
—— 
$num
—— 
,
—— 
new
—— 
Guid
—— !
(
——! "
$str
——" H
)
——H I
}
——J K
,
——K L
{
““ 
$num
““ 
,
““ 
new
““ 
Guid
““ !
(
““! "
$str
““" H
)
““H I
}
““J K
,
““K L
{
”” 
$num
”” 
,
”” 
new
”” 
Guid
”” !
(
””! "
$str
””" H
)
””H I
}
””J K
,
””K L
{
‘‘ 
$num
‘‘ 
,
‘‘ 
new
‘‘ 
Guid
‘‘ !
(
‘‘! "
$str
‘‘" H
)
‘‘H I
}
‘‘J K
,
‘‘K L
{
’’ 
$num
’’ 
,
’’ 
new
’’ 
Guid
’’ !
(
’’! "
$str
’’" H
)
’’H I
}
’’J K
,
’’K L
{
÷÷ 
$num
÷÷ 
,
÷÷ 
new
÷÷ 
Guid
÷÷ !
(
÷÷! "
$str
÷÷" H
)
÷÷H I
}
÷÷J K
,
÷÷K L
{
◊◊ 
$num
◊◊ 
,
◊◊ 
new
◊◊ 
Guid
◊◊ !
(
◊◊! "
$str
◊◊" H
)
◊◊H I
}
◊◊J K
,
◊◊K L
{
ÿÿ 
$num
ÿÿ 
,
ÿÿ 
new
ÿÿ 
Guid
ÿÿ !
(
ÿÿ! "
$str
ÿÿ" H
)
ÿÿH I
}
ÿÿJ K
,
ÿÿK L
{
ŸŸ 
$num
ŸŸ 
,
ŸŸ 
new
ŸŸ 
Guid
ŸŸ !
(
ŸŸ! "
$str
ŸŸ" H
)
ŸŸH I
}
ŸŸJ K
,
ŸŸK L
{
⁄⁄ 
$num
⁄⁄ 
,
⁄⁄ 
new
⁄⁄ 
Guid
⁄⁄ !
(
⁄⁄! "
$str
⁄⁄" H
)
⁄⁄H I
}
⁄⁄J K
,
⁄⁄K L
{
€€ 
$num
€€ 
,
€€ 
new
€€ 
Guid
€€ !
(
€€! "
$str
€€" H
)
€€H I
}
€€J K
,
€€K L
{
‹‹ 
$num
‹‹ 
,
‹‹ 
new
‹‹ 
Guid
‹‹ "
(
‹‹" #
$str
‹‹# I
)
‹‹I J
}
‹‹K L
,
‹‹L M
{
›› 
$num
›› 
,
›› 
new
›› 
Guid
›› "
(
››" #
$str
››# I
)
››I J
}
››K L
,
››L M
{
ﬁﬁ 
$num
ﬁﬁ 
,
ﬁﬁ 
new
ﬁﬁ 
Guid
ﬁﬁ "
(
ﬁﬁ" #
$str
ﬁﬁ# I
)
ﬁﬁI J
}
ﬁﬁK L
,
ﬁﬁL M
{
ﬂﬂ 
$num
ﬂﬂ 
,
ﬂﬂ 
new
ﬂﬂ 
Guid
ﬂﬂ "
(
ﬂﬂ" #
$str
ﬂﬂ# I
)
ﬂﬂI J
}
ﬂﬂK L
,
ﬂﬂL M
{
‡‡ 
$num
‡‡ 
,
‡‡ 
new
‡‡ 
Guid
‡‡ "
(
‡‡" #
$str
‡‡# I
)
‡‡I J
}
‡‡K L
,
‡‡L M
{
·· 
$num
·· 
,
·· 
new
·· 
Guid
·· "
(
··" #
$str
··# I
)
··I J
}
··K L
,
··L M
{
‚‚ 
$num
‚‚ 
,
‚‚ 
new
‚‚ 
Guid
‚‚ "
(
‚‚" #
$str
‚‚# I
)
‚‚I J
}
‚‚K L
,
‚‚L M
{
„„ 
$num
„„ 
,
„„ 
new
„„ 
Guid
„„ "
(
„„" #
$str
„„# I
)
„„I J
}
„„K L
,
„„L M
{
‰‰ 
$num
‰‰ 
,
‰‰ 
new
‰‰ 
Guid
‰‰ "
(
‰‰" #
$str
‰‰# I
)
‰‰I J
}
‰‰K L
,
‰‰L M
{
ÂÂ 
$num
ÂÂ 
,
ÂÂ 
new
ÂÂ 
Guid
ÂÂ "
(
ÂÂ" #
$str
ÂÂ# I
)
ÂÂI J
}
ÂÂK L
,
ÂÂL M
{
ÊÊ 
$num
ÊÊ 
,
ÊÊ 
new
ÊÊ 
Guid
ÊÊ "
(
ÊÊ" #
$str
ÊÊ# I
)
ÊÊI J
}
ÊÊK L
,
ÊÊL M
{
ÁÁ 
$num
ÁÁ 
,
ÁÁ 
new
ÁÁ 
Guid
ÁÁ "
(
ÁÁ" #
$str
ÁÁ# I
)
ÁÁI J
}
ÁÁK L
}
ËË 
)
ËË 
;
ËË 
migrationBuilder
ÍÍ 
.
ÍÍ 
CreateIndex
ÍÍ (
(
ÍÍ( )
name
ÎÎ 
:
ÎÎ 
$str
ÎÎ 1
,
ÎÎ1 2
table
ÏÏ 
:
ÏÏ 
$str
ÏÏ (
,
ÏÏ( )
column
ÌÌ 
:
ÌÌ 
$str
ÌÌ  
)
ÌÌ  !
;
ÌÌ! "
}
ÓÓ 	
	protected
ÒÒ 
override
ÒÒ 
void
ÒÒ 
Down
ÒÒ  $
(
ÒÒ$ %
MigrationBuilder
ÒÒ% 5
migrationBuilder
ÒÒ6 F
)
ÒÒF G
{
ÚÚ 	
migrationBuilder
ÛÛ 
.
ÛÛ 
DropPrimaryKey
ÛÛ +
(
ÛÛ+ ,
name
ÙÙ 
:
ÙÙ 
$str
ÙÙ *
,
ÙÙ* +
table
ıı 
:
ıı 
$str
ıı (
)
ıı( )
;
ıı) *
migrationBuilder
˜˜ 
.
˜˜ 
	DropIndex
˜˜ &
(
˜˜& '
name
¯¯ 
:
¯¯ 
$str
¯¯ 1
,
¯¯1 2
table
˘˘ 
:
˘˘ 
$str
˘˘ (
)
˘˘( )
;
˘˘) *
migrationBuilder
˚˚ 
.
˚˚ 

DeleteData
˚˚ '
(
˚˚' (
table
¸¸ 
:
¸¸ 
$str
¸¸ (
,
¸¸( )

keyColumns
˝˝ 
:
˝˝ 
new
˝˝ 
[
˝˝  
]
˝˝  !
{
˝˝" #
$str
˝˝$ 2
,
˝˝2 3
$str
˝˝4 <
}
˝˝= >
,
˝˝> ?
	keyValues
˛˛ 
:
˛˛ 
new
˛˛ 
object
˛˛ %
[
˛˛% &
]
˛˛& '
{
˛˛( )
$num
˛˛* +
,
˛˛+ ,
new
˛˛- 0
Guid
˛˛1 5
(
˛˛5 6
$str
˛˛6 \
)
˛˛\ ]
}
˛˛^ _
)
˛˛_ `
;
˛˛` a
migrationBuilder
ÄÄ 
.
ÄÄ 

DeleteData
ÄÄ '
(
ÄÄ' (
table
ÅÅ 
:
ÅÅ 
$str
ÅÅ (
,
ÅÅ( )

keyColumns
ÇÇ 
:
ÇÇ 
new
ÇÇ 
[
ÇÇ  
]
ÇÇ  !
{
ÇÇ" #
$str
ÇÇ$ 2
,
ÇÇ2 3
$str
ÇÇ4 <
}
ÇÇ= >
,
ÇÇ> ?
	keyValues
ÉÉ 
:
ÉÉ 
new
ÉÉ 
object
ÉÉ %
[
ÉÉ% &
]
ÉÉ& '
{
ÉÉ( )
$num
ÉÉ* +
,
ÉÉ+ ,
new
ÉÉ- 0
Guid
ÉÉ1 5
(
ÉÉ5 6
$str
ÉÉ6 \
)
ÉÉ\ ]
}
ÉÉ^ _
)
ÉÉ_ `
;
ÉÉ` a
migrationBuilder
ÖÖ 
.
ÖÖ 

DeleteData
ÖÖ '
(
ÖÖ' (
table
ÜÜ 
:
ÜÜ 
$str
ÜÜ (
,
ÜÜ( )

keyColumns
áá 
:
áá 
new
áá 
[
áá  
]
áá  !
{
áá" #
$str
áá$ 2
,
áá2 3
$str
áá4 <
}
áá= >
,
áá> ?
	keyValues
àà 
:
àà 
new
àà 
object
àà %
[
àà% &
]
àà& '
{
àà( )
$num
àà* +
,
àà+ ,
new
àà- 0
Guid
àà1 5
(
àà5 6
$str
àà6 \
)
àà\ ]
}
àà^ _
)
àà_ `
;
àà` a
migrationBuilder
ää 
.
ää 

DeleteData
ää '
(
ää' (
table
ãã 
:
ãã 
$str
ãã (
,
ãã( )

keyColumns
åå 
:
åå 
new
åå 
[
åå  
]
åå  !
{
åå" #
$str
åå$ 2
,
åå2 3
$str
åå4 <
}
åå= >
,
åå> ?
	keyValues
çç 
:
çç 
new
çç 
object
çç %
[
çç% &
]
çç& '
{
çç( )
$num
çç* +
,
çç+ ,
new
çç- 0
Guid
çç1 5
(
çç5 6
$str
çç6 \
)
çç\ ]
}
çç^ _
)
çç_ `
;
çç` a
migrationBuilder
èè 
.
èè 

DeleteData
èè '
(
èè' (
table
êê 
:
êê 
$str
êê (
,
êê( )

keyColumns
ëë 
:
ëë 
new
ëë 
[
ëë  
]
ëë  !
{
ëë" #
$str
ëë$ 2
,
ëë2 3
$str
ëë4 <
}
ëë= >
,
ëë> ?
	keyValues
íí 
:
íí 
new
íí 
object
íí %
[
íí% &
]
íí& '
{
íí( )
$num
íí* +
,
íí+ ,
new
íí- 0
Guid
íí1 5
(
íí5 6
$str
íí6 \
)
íí\ ]
}
íí^ _
)
íí_ `
;
íí` a
migrationBuilder
îî 
.
îî 

DeleteData
îî '
(
îî' (
table
ïï 
:
ïï 
$str
ïï (
,
ïï( )

keyColumns
ññ 
:
ññ 
new
ññ 
[
ññ  
]
ññ  !
{
ññ" #
$str
ññ$ 2
,
ññ2 3
$str
ññ4 <
}
ññ= >
,
ññ> ?
	keyValues
óó 
:
óó 
new
óó 
object
óó %
[
óó% &
]
óó& '
{
óó( )
$num
óó* +
,
óó+ ,
new
óó- 0
Guid
óó1 5
(
óó5 6
$str
óó6 \
)
óó\ ]
}
óó^ _
)
óó_ `
;
óó` a
migrationBuilder
ôô 
.
ôô 

DeleteData
ôô '
(
ôô' (
table
öö 
:
öö 
$str
öö (
,
öö( )

keyColumns
õõ 
:
õõ 
new
õõ 
[
õõ  
]
õõ  !
{
õõ" #
$str
õõ$ 2
,
õõ2 3
$str
õõ4 <
}
õõ= >
,
õõ> ?
	keyValues
úú 
:
úú 
new
úú 
object
úú %
[
úú% &
]
úú& '
{
úú( )
$num
úú* +
,
úú+ ,
new
úú- 0
Guid
úú1 5
(
úú5 6
$str
úú6 \
)
úú\ ]
}
úú^ _
)
úú_ `
;
úú` a
migrationBuilder
ûû 
.
ûû 

DeleteData
ûû '
(
ûû' (
table
üü 
:
üü 
$str
üü (
,
üü( )

keyColumns
†† 
:
†† 
new
†† 
[
††  
]
††  !
{
††" #
$str
††$ 2
,
††2 3
$str
††4 <
}
††= >
,
††> ?
	keyValues
°° 
:
°° 
new
°° 
object
°° %
[
°°% &
]
°°& '
{
°°( )
$num
°°* +
,
°°+ ,
new
°°- 0
Guid
°°1 5
(
°°5 6
$str
°°6 \
)
°°\ ]
}
°°^ _
)
°°_ `
;
°°` a
migrationBuilder
££ 
.
££ 

DeleteData
££ '
(
££' (
table
§§ 
:
§§ 
$str
§§ (
,
§§( )

keyColumns
•• 
:
•• 
new
•• 
[
••  
]
••  !
{
••" #
$str
••$ 2
,
••2 3
$str
••4 <
}
••= >
,
••> ?
	keyValues
¶¶ 
:
¶¶ 
new
¶¶ 
object
¶¶ %
[
¶¶% &
]
¶¶& '
{
¶¶( )
$num
¶¶* +
,
¶¶+ ,
new
¶¶- 0
Guid
¶¶1 5
(
¶¶5 6
$str
¶¶6 \
)
¶¶\ ]
}
¶¶^ _
)
¶¶_ `
;
¶¶` a
migrationBuilder
®® 
.
®® 

DeleteData
®® '
(
®®' (
table
©© 
:
©© 
$str
©© (
,
©©( )

keyColumns
™™ 
:
™™ 
new
™™ 
[
™™  
]
™™  !
{
™™" #
$str
™™$ 2
,
™™2 3
$str
™™4 <
}
™™= >
,
™™> ?
	keyValues
´´ 
:
´´ 
new
´´ 
object
´´ %
[
´´% &
]
´´& '
{
´´( )
$num
´´* +
,
´´+ ,
new
´´- 0
Guid
´´1 5
(
´´5 6
$str
´´6 \
)
´´\ ]
}
´´^ _
)
´´_ `
;
´´` a
migrationBuilder
≠≠ 
.
≠≠ 

DeleteData
≠≠ '
(
≠≠' (
table
ÆÆ 
:
ÆÆ 
$str
ÆÆ (
,
ÆÆ( )

keyColumns
ØØ 
:
ØØ 
new
ØØ 
[
ØØ  
]
ØØ  !
{
ØØ" #
$str
ØØ$ 2
,
ØØ2 3
$str
ØØ4 <
}
ØØ= >
,
ØØ> ?
	keyValues
∞∞ 
:
∞∞ 
new
∞∞ 
object
∞∞ %
[
∞∞% &
]
∞∞& '
{
∞∞( )
$num
∞∞* +
,
∞∞+ ,
new
∞∞- 0
Guid
∞∞1 5
(
∞∞5 6
$str
∞∞6 \
)
∞∞\ ]
}
∞∞^ _
)
∞∞_ `
;
∞∞` a
migrationBuilder
≤≤ 
.
≤≤ 

DeleteData
≤≤ '
(
≤≤' (
table
≥≥ 
:
≥≥ 
$str
≥≥ (
,
≥≥( )

keyColumns
¥¥ 
:
¥¥ 
new
¥¥ 
[
¥¥  
]
¥¥  !
{
¥¥" #
$str
¥¥$ 2
,
¥¥2 3
$str
¥¥4 <
}
¥¥= >
,
¥¥> ?
	keyValues
µµ 
:
µµ 
new
µµ 
object
µµ %
[
µµ% &
]
µµ& '
{
µµ( )
$num
µµ* +
,
µµ+ ,
new
µµ- 0
Guid
µµ1 5
(
µµ5 6
$str
µµ6 \
)
µµ\ ]
}
µµ^ _
)
µµ_ `
;
µµ` a
migrationBuilder
∑∑ 
.
∑∑ 

DeleteData
∑∑ '
(
∑∑' (
table
∏∏ 
:
∏∏ 
$str
∏∏ (
,
∏∏( )

keyColumns
ππ 
:
ππ 
new
ππ 
[
ππ  
]
ππ  !
{
ππ" #
$str
ππ$ 2
,
ππ2 3
$str
ππ4 <
}
ππ= >
,
ππ> ?
	keyValues
∫∫ 
:
∫∫ 
new
∫∫ 
object
∫∫ %
[
∫∫% &
]
∫∫& '
{
∫∫( )
$num
∫∫* +
,
∫∫+ ,
new
∫∫- 0
Guid
∫∫1 5
(
∫∫5 6
$str
∫∫6 \
)
∫∫\ ]
}
∫∫^ _
)
∫∫_ `
;
∫∫` a
migrationBuilder
ºº 
.
ºº 

DeleteData
ºº '
(
ºº' (
table
ΩΩ 
:
ΩΩ 
$str
ΩΩ (
,
ΩΩ( )

keyColumns
ææ 
:
ææ 
new
ææ 
[
ææ  
]
ææ  !
{
ææ" #
$str
ææ$ 2
,
ææ2 3
$str
ææ4 <
}
ææ= >
,
ææ> ?
	keyValues
øø 
:
øø 
new
øø 
object
øø %
[
øø% &
]
øø& '
{
øø( )
$num
øø* +
,
øø+ ,
new
øø- 0
Guid
øø1 5
(
øø5 6
$str
øø6 \
)
øø\ ]
}
øø^ _
)
øø_ `
;
øø` a
migrationBuilder
¡¡ 
.
¡¡ 

DeleteData
¡¡ '
(
¡¡' (
table
¬¬ 
:
¬¬ 
$str
¬¬ (
,
¬¬( )

keyColumns
√√ 
:
√√ 
new
√√ 
[
√√  
]
√√  !
{
√√" #
$str
√√$ 2
,
√√2 3
$str
√√4 <
}
√√= >
,
√√> ?
	keyValues
ƒƒ 
:
ƒƒ 
new
ƒƒ 
object
ƒƒ %
[
ƒƒ% &
]
ƒƒ& '
{
ƒƒ( )
$num
ƒƒ* +
,
ƒƒ+ ,
new
ƒƒ- 0
Guid
ƒƒ1 5
(
ƒƒ5 6
$str
ƒƒ6 \
)
ƒƒ\ ]
}
ƒƒ^ _
)
ƒƒ_ `
;
ƒƒ` a
migrationBuilder
∆∆ 
.
∆∆ 

DeleteData
∆∆ '
(
∆∆' (
table
«« 
:
«« 
$str
«« (
,
««( )

keyColumns
»» 
:
»» 
new
»» 
[
»»  
]
»»  !
{
»»" #
$str
»»$ 2
,
»»2 3
$str
»»4 <
}
»»= >
,
»»> ?
	keyValues
…… 
:
…… 
new
…… 
object
…… %
[
……% &
]
……& '
{
……( )
$num
……* +
,
……+ ,
new
……- 0
Guid
……1 5
(
……5 6
$str
……6 \
)
……\ ]
}
……^ _
)
……_ `
;
……` a
migrationBuilder
ÀÀ 
.
ÀÀ 

DeleteData
ÀÀ '
(
ÀÀ' (
table
ÃÃ 
:
ÃÃ 
$str
ÃÃ (
,
ÃÃ( )

keyColumns
ÕÕ 
:
ÕÕ 
new
ÕÕ 
[
ÕÕ  
]
ÕÕ  !
{
ÕÕ" #
$str
ÕÕ$ 2
,
ÕÕ2 3
$str
ÕÕ4 <
}
ÕÕ= >
,
ÕÕ> ?
	keyValues
ŒŒ 
:
ŒŒ 
new
ŒŒ 
object
ŒŒ %
[
ŒŒ% &
]
ŒŒ& '
{
ŒŒ( )
$num
ŒŒ* +
,
ŒŒ+ ,
new
ŒŒ- 0
Guid
ŒŒ1 5
(
ŒŒ5 6
$str
ŒŒ6 \
)
ŒŒ\ ]
}
ŒŒ^ _
)
ŒŒ_ `
;
ŒŒ` a
migrationBuilder
–– 
.
–– 

DeleteData
–– '
(
––' (
table
—— 
:
—— 
$str
—— (
,
——( )

keyColumns
““ 
:
““ 
new
““ 
[
““  
]
““  !
{
““" #
$str
““$ 2
,
““2 3
$str
““4 <
}
““= >
,
““> ?
	keyValues
”” 
:
”” 
new
”” 
object
”” %
[
””% &
]
””& '
{
””( )
$num
””* +
,
””+ ,
new
””- 0
Guid
””1 5
(
””5 6
$str
””6 \
)
””\ ]
}
””^ _
)
””_ `
;
””` a
migrationBuilder
’’ 
.
’’ 

DeleteData
’’ '
(
’’' (
table
÷÷ 
:
÷÷ 
$str
÷÷ (
,
÷÷( )

keyColumns
◊◊ 
:
◊◊ 
new
◊◊ 
[
◊◊  
]
◊◊  !
{
◊◊" #
$str
◊◊$ 2
,
◊◊2 3
$str
◊◊4 <
}
◊◊= >
,
◊◊> ?
	keyValues
ÿÿ 
:
ÿÿ 
new
ÿÿ 
object
ÿÿ %
[
ÿÿ% &
]
ÿÿ& '
{
ÿÿ( )
$num
ÿÿ* +
,
ÿÿ+ ,
new
ÿÿ- 0
Guid
ÿÿ1 5
(
ÿÿ5 6
$str
ÿÿ6 \
)
ÿÿ\ ]
}
ÿÿ^ _
)
ÿÿ_ `
;
ÿÿ` a
migrationBuilder
⁄⁄ 
.
⁄⁄ 

DeleteData
⁄⁄ '
(
⁄⁄' (
table
€€ 
:
€€ 
$str
€€ (
,
€€( )

keyColumns
‹‹ 
:
‹‹ 
new
‹‹ 
[
‹‹  
]
‹‹  !
{
‹‹" #
$str
‹‹$ 2
,
‹‹2 3
$str
‹‹4 <
}
‹‹= >
,
‹‹> ?
	keyValues
›› 
:
›› 
new
›› 
object
›› %
[
››% &
]
››& '
{
››( )
$num
››* +
,
››+ ,
new
››- 0
Guid
››1 5
(
››5 6
$str
››6 \
)
››\ ]
}
››^ _
)
››_ `
;
››` a
migrationBuilder
ﬂﬂ 
.
ﬂﬂ 

DeleteData
ﬂﬂ '
(
ﬂﬂ' (
table
‡‡ 
:
‡‡ 
$str
‡‡ (
,
‡‡( )

keyColumns
·· 
:
·· 
new
·· 
[
··  
]
··  !
{
··" #
$str
··$ 2
,
··2 3
$str
··4 <
}
··= >
,
··> ?
	keyValues
‚‚ 
:
‚‚ 
new
‚‚ 
object
‚‚ %
[
‚‚% &
]
‚‚& '
{
‚‚( )
$num
‚‚* +
,
‚‚+ ,
new
‚‚- 0
Guid
‚‚1 5
(
‚‚5 6
$str
‚‚6 \
)
‚‚\ ]
}
‚‚^ _
)
‚‚_ `
;
‚‚` a
migrationBuilder
‰‰ 
.
‰‰ 

DeleteData
‰‰ '
(
‰‰' (
table
ÂÂ 
:
ÂÂ 
$str
ÂÂ (
,
ÂÂ( )

keyColumns
ÊÊ 
:
ÊÊ 
new
ÊÊ 
[
ÊÊ  
]
ÊÊ  !
{
ÊÊ" #
$str
ÊÊ$ 2
,
ÊÊ2 3
$str
ÊÊ4 <
}
ÊÊ= >
,
ÊÊ> ?
	keyValues
ÁÁ 
:
ÁÁ 
new
ÁÁ 
object
ÁÁ %
[
ÁÁ% &
]
ÁÁ& '
{
ÁÁ( )
$num
ÁÁ* ,
,
ÁÁ, -
new
ÁÁ. 1
Guid
ÁÁ2 6
(
ÁÁ6 7
$str
ÁÁ7 ]
)
ÁÁ] ^
}
ÁÁ_ `
)
ÁÁ` a
;
ÁÁa b
migrationBuilder
ÈÈ 
.
ÈÈ 

DeleteData
ÈÈ '
(
ÈÈ' (
table
ÍÍ 
:
ÍÍ 
$str
ÍÍ (
,
ÍÍ( )

keyColumns
ÎÎ 
:
ÎÎ 
new
ÎÎ 
[
ÎÎ  
]
ÎÎ  !
{
ÎÎ" #
$str
ÎÎ$ 2
,
ÎÎ2 3
$str
ÎÎ4 <
}
ÎÎ= >
,
ÎÎ> ?
	keyValues
ÏÏ 
:
ÏÏ 
new
ÏÏ 
object
ÏÏ %
[
ÏÏ% &
]
ÏÏ& '
{
ÏÏ( )
$num
ÏÏ* ,
,
ÏÏ, -
new
ÏÏ. 1
Guid
ÏÏ2 6
(
ÏÏ6 7
$str
ÏÏ7 ]
)
ÏÏ] ^
}
ÏÏ_ `
)
ÏÏ` a
;
ÏÏa b
migrationBuilder
ÓÓ 
.
ÓÓ 

DeleteData
ÓÓ '
(
ÓÓ' (
table
ÔÔ 
:
ÔÔ 
$str
ÔÔ (
,
ÔÔ( )

keyColumns
 
:
 
new
 
[
  
]
  !
{
" #
$str
$ 2
,
2 3
$str
4 <
}
= >
,
> ?
	keyValues
ÒÒ 
:
ÒÒ 
new
ÒÒ 
object
ÒÒ %
[
ÒÒ% &
]
ÒÒ& '
{
ÒÒ( )
$num
ÒÒ* ,
,
ÒÒ, -
new
ÒÒ. 1
Guid
ÒÒ2 6
(
ÒÒ6 7
$str
ÒÒ7 ]
)
ÒÒ] ^
}
ÒÒ_ `
)
ÒÒ` a
;
ÒÒa b
migrationBuilder
ÛÛ 
.
ÛÛ 

DeleteData
ÛÛ '
(
ÛÛ' (
table
ÙÙ 
:
ÙÙ 
$str
ÙÙ (
,
ÙÙ( )

keyColumns
ıı 
:
ıı 
new
ıı 
[
ıı  
]
ıı  !
{
ıı" #
$str
ıı$ 2
,
ıı2 3
$str
ıı4 <
}
ıı= >
,
ıı> ?
	keyValues
ˆˆ 
:
ˆˆ 
new
ˆˆ 
object
ˆˆ %
[
ˆˆ% &
]
ˆˆ& '
{
ˆˆ( )
$num
ˆˆ* ,
,
ˆˆ, -
new
ˆˆ. 1
Guid
ˆˆ2 6
(
ˆˆ6 7
$str
ˆˆ7 ]
)
ˆˆ] ^
}
ˆˆ_ `
)
ˆˆ` a
;
ˆˆa b
migrationBuilder
¯¯ 
.
¯¯ 

DeleteData
¯¯ '
(
¯¯' (
table
˘˘ 
:
˘˘ 
$str
˘˘ (
,
˘˘( )

keyColumns
˙˙ 
:
˙˙ 
new
˙˙ 
[
˙˙  
]
˙˙  !
{
˙˙" #
$str
˙˙$ 2
,
˙˙2 3
$str
˙˙4 <
}
˙˙= >
,
˙˙> ?
	keyValues
˚˚ 
:
˚˚ 
new
˚˚ 
object
˚˚ %
[
˚˚% &
]
˚˚& '
{
˚˚( )
$num
˚˚* ,
,
˚˚, -
new
˚˚. 1
Guid
˚˚2 6
(
˚˚6 7
$str
˚˚7 ]
)
˚˚] ^
}
˚˚_ `
)
˚˚` a
;
˚˚a b
migrationBuilder
˝˝ 
.
˝˝ 

DeleteData
˝˝ '
(
˝˝' (
table
˛˛ 
:
˛˛ 
$str
˛˛ (
,
˛˛( )

keyColumns
ˇˇ 
:
ˇˇ 
new
ˇˇ 
[
ˇˇ  
]
ˇˇ  !
{
ˇˇ" #
$str
ˇˇ$ 2
,
ˇˇ2 3
$str
ˇˇ4 <
}
ˇˇ= >
,
ˇˇ> ?
	keyValues
ÄÄ 
:
ÄÄ 
new
ÄÄ 
object
ÄÄ %
[
ÄÄ% &
]
ÄÄ& '
{
ÄÄ( )
$num
ÄÄ* ,
,
ÄÄ, -
new
ÄÄ. 1
Guid
ÄÄ2 6
(
ÄÄ6 7
$str
ÄÄ7 ]
)
ÄÄ] ^
}
ÄÄ_ `
)
ÄÄ` a
;
ÄÄa b
migrationBuilder
ÇÇ 
.
ÇÇ 

DeleteData
ÇÇ '
(
ÇÇ' (
table
ÉÉ 
:
ÉÉ 
$str
ÉÉ (
,
ÉÉ( )

keyColumns
ÑÑ 
:
ÑÑ 
new
ÑÑ 
[
ÑÑ  
]
ÑÑ  !
{
ÑÑ" #
$str
ÑÑ$ 2
,
ÑÑ2 3
$str
ÑÑ4 <
}
ÑÑ= >
,
ÑÑ> ?
	keyValues
ÖÖ 
:
ÖÖ 
new
ÖÖ 
object
ÖÖ %
[
ÖÖ% &
]
ÖÖ& '
{
ÖÖ( )
$num
ÖÖ* ,
,
ÖÖ, -
new
ÖÖ. 1
Guid
ÖÖ2 6
(
ÖÖ6 7
$str
ÖÖ7 ]
)
ÖÖ] ^
}
ÖÖ_ `
)
ÖÖ` a
;
ÖÖa b
migrationBuilder
áá 
.
áá 

DeleteData
áá '
(
áá' (
table
àà 
:
àà 
$str
àà (
,
àà( )

keyColumns
ââ 
:
ââ 
new
ââ 
[
ââ  
]
ââ  !
{
ââ" #
$str
ââ$ 2
,
ââ2 3
$str
ââ4 <
}
ââ= >
,
ââ> ?
	keyValues
ää 
:
ää 
new
ää 
object
ää %
[
ää% &
]
ää& '
{
ää( )
$num
ää* ,
,
ää, -
new
ää. 1
Guid
ää2 6
(
ää6 7
$str
ää7 ]
)
ää] ^
}
ää_ `
)
ää` a
;
ääa b
migrationBuilder
åå 
.
åå 

DeleteData
åå '
(
åå' (
table
çç 
:
çç 
$str
çç (
,
çç( )

keyColumns
éé 
:
éé 
new
éé 
[
éé  
]
éé  !
{
éé" #
$str
éé$ 2
,
éé2 3
$str
éé4 <
}
éé= >
,
éé> ?
	keyValues
èè 
:
èè 
new
èè 
object
èè %
[
èè% &
]
èè& '
{
èè( )
$num
èè* ,
,
èè, -
new
èè. 1
Guid
èè2 6
(
èè6 7
$str
èè7 ]
)
èè] ^
}
èè_ `
)
èè` a
;
èèa b
migrationBuilder
ëë 
.
ëë 

DeleteData
ëë '
(
ëë' (
table
íí 
:
íí 
$str
íí (
,
íí( )

keyColumns
ìì 
:
ìì 
new
ìì 
[
ìì  
]
ìì  !
{
ìì" #
$str
ìì$ 2
,
ìì2 3
$str
ìì4 <
}
ìì= >
,
ìì> ?
	keyValues
îî 
:
îî 
new
îî 
object
îî %
[
îî% &
]
îî& '
{
îî( )
$num
îî* ,
,
îî, -
new
îî. 1
Guid
îî2 6
(
îî6 7
$str
îî7 ]
)
îî] ^
}
îî_ `
)
îî` a
;
îîa b
migrationBuilder
ññ 
.
ññ 

DeleteData
ññ '
(
ññ' (
table
óó 
:
óó 
$str
óó (
,
óó( )

keyColumns
òò 
:
òò 
new
òò 
[
òò  
]
òò  !
{
òò" #
$str
òò$ 2
,
òò2 3
$str
òò4 <
}
òò= >
,
òò> ?
	keyValues
ôô 
:
ôô 
new
ôô 
object
ôô %
[
ôô% &
]
ôô& '
{
ôô( )
$num
ôô* ,
,
ôô, -
new
ôô. 1
Guid
ôô2 6
(
ôô6 7
$str
ôô7 ]
)
ôô] ^
}
ôô_ `
)
ôô` a
;
ôôa b
migrationBuilder
õõ 
.
õõ 

DeleteData
õõ '
(
õõ' (
table
úú 
:
úú 
$str
úú (
,
úú( )

keyColumns
ùù 
:
ùù 
new
ùù 
[
ùù  
]
ùù  !
{
ùù" #
$str
ùù$ 2
,
ùù2 3
$str
ùù4 <
}
ùù= >
,
ùù> ?
	keyValues
ûû 
:
ûû 
new
ûû 
object
ûû %
[
ûû% &
]
ûû& '
{
ûû( )
$num
ûû* ,
,
ûû, -
new
ûû. 1
Guid
ûû2 6
(
ûû6 7
$str
ûû7 ]
)
ûû] ^
}
ûû_ `
)
ûû` a
;
ûûa b
migrationBuilder
†† 
.
†† 
AddPrimaryKey
†† *
(
††* +
name
°° 
:
°° 
$str
°° *
,
°°* +
table
¢¢ 
:
¢¢ 
$str
¢¢ (
,
¢¢( )
columns
££ 
:
££ 
new
££ 
[
££ 
]
££ 
{
££  
$str
££! )
,
££) *
$str
££+ 9
}
££: ;
)
££; <
;
££< =
migrationBuilder
•• 
.
•• 

InsertData
•• '
(
••' (
table
¶¶ 
:
¶¶ 
$str
¶¶ (
,
¶¶( )
columns
ßß 
:
ßß 
new
ßß 
[
ßß 
]
ßß 
{
ßß  
$str
ßß! /
,
ßß/ 0
$str
ßß1 9
}
ßß: ;
,
ßß; <
values
®® 
:
®® 
new
®® 
object
®® "
[
®®" #
,
®®# $
]
®®$ %
{
©© 
{
™™ 
$num
™™ 
,
™™ 
new
™™ 
Guid
™™ !
(
™™! "
$str
™™" H
)
™™H I
}
™™J K
,
™™K L
{
´´ 
$num
´´ 
,
´´ 
new
´´ 
Guid
´´ !
(
´´! "
$str
´´" H
)
´´H I
}
´´J K
,
´´K L
{
¨¨ 
$num
¨¨ 
,
¨¨ 
new
¨¨ 
Guid
¨¨ !
(
¨¨! "
$str
¨¨" H
)
¨¨H I
}
¨¨J K
,
¨¨K L
{
≠≠ 
$num
≠≠ 
,
≠≠ 
new
≠≠ 
Guid
≠≠ !
(
≠≠! "
$str
≠≠" H
)
≠≠H I
}
≠≠J K
,
≠≠K L
{
ÆÆ 
$num
ÆÆ 
,
ÆÆ 
new
ÆÆ 
Guid
ÆÆ !
(
ÆÆ! "
$str
ÆÆ" H
)
ÆÆH I
}
ÆÆJ K
,
ÆÆK L
{
ØØ 
$num
ØØ 
,
ØØ 
new
ØØ 
Guid
ØØ !
(
ØØ! "
$str
ØØ" H
)
ØØH I
}
ØØJ K
,
ØØK L
{
∞∞ 
$num
∞∞ 
,
∞∞ 
new
∞∞ 
Guid
∞∞ "
(
∞∞" #
$str
∞∞# I
)
∞∞I J
}
∞∞K L
,
∞∞L M
{
±± 
$num
±± 
,
±± 
new
±± 
Guid
±± "
(
±±" #
$str
±±# I
)
±±I J
}
±±K L
,
±±L M
{
≤≤ 
$num
≤≤ 
,
≤≤ 
new
≤≤ 
Guid
≤≤ "
(
≤≤" #
$str
≤≤# I
)
≤≤I J
}
≤≤K L
,
≤≤L M
{
≥≥ 
$num
≥≥ 
,
≥≥ 
new
≥≥ 
Guid
≥≥ "
(
≥≥" #
$str
≥≥# I
)
≥≥I J
}
≥≥K L
,
≥≥L M
{
¥¥ 
$num
¥¥ 
,
¥¥ 
new
¥¥ 
Guid
¥¥ !
(
¥¥! "
$str
¥¥" H
)
¥¥H I
}
¥¥J K
,
¥¥K L
{
µµ 
$num
µµ 
,
µµ 
new
µµ 
Guid
µµ !
(
µµ! "
$str
µµ" H
)
µµH I
}
µµJ K
,
µµK L
{
∂∂ 
$num
∂∂ 
,
∂∂ 
new
∂∂ 
Guid
∂∂ !
(
∂∂! "
$str
∂∂" H
)
∂∂H I
}
∂∂J K
,
∂∂K L
{
∑∑ 
$num
∑∑ 
,
∑∑ 
new
∑∑ 
Guid
∑∑ !
(
∑∑! "
$str
∑∑" H
)
∑∑H I
}
∑∑J K
,
∑∑K L
{
∏∏ 
$num
∏∏ 
,
∏∏ 
new
∏∏ 
Guid
∏∏ !
(
∏∏! "
$str
∏∏" H
)
∏∏H I
}
∏∏J K
,
∏∏K L
{
ππ 
$num
ππ 
,
ππ 
new
ππ 
Guid
ππ !
(
ππ! "
$str
ππ" H
)
ππH I
}
ππJ K
,
ππK L
{
∫∫ 
$num
∫∫ 
,
∫∫ 
new
∫∫ 
Guid
∫∫ !
(
∫∫! "
$str
∫∫" H
)
∫∫H I
}
∫∫J K
,
∫∫K L
{
ªª 
$num
ªª 
,
ªª 
new
ªª 
Guid
ªª !
(
ªª! "
$str
ªª" H
)
ªªH I
}
ªªJ K
,
ªªK L
{
ºº 
$num
ºº 
,
ºº 
new
ºº 
Guid
ºº !
(
ºº! "
$str
ºº" H
)
ººH I
}
ººJ K
,
ººK L
{
ΩΩ 
$num
ΩΩ 
,
ΩΩ 
new
ΩΩ 
Guid
ΩΩ "
(
ΩΩ" #
$str
ΩΩ# I
)
ΩΩI J
}
ΩΩK L
,
ΩΩL M
{
ææ 
$num
ææ 
,
ææ 
new
ææ 
Guid
ææ "
(
ææ" #
$str
ææ# I
)
ææI J
}
ææK L
,
ææL M
{
øø 
$num
øø 
,
øø 
new
øø 
Guid
øø "
(
øø" #
$str
øø# I
)
øøI J
}
øøK L
,
øøL M
{
¿¿ 
$num
¿¿ 
,
¿¿ 
new
¿¿ 
Guid
¿¿ "
(
¿¿" #
$str
¿¿# I
)
¿¿I J
}
¿¿K L
,
¿¿L M
{
¡¡ 
$num
¡¡ 
,
¡¡ 
new
¡¡ 
Guid
¡¡ "
(
¡¡" #
$str
¡¡# I
)
¡¡I J
}
¡¡K L
,
¡¡L M
{
¬¬ 
$num
¬¬ 
,
¬¬ 
new
¬¬ 
Guid
¬¬ "
(
¬¬" #
$str
¬¬# I
)
¬¬I J
}
¬¬K L
,
¬¬L M
{
√√ 
$num
√√ 
,
√√ 
new
√√ 
Guid
√√ "
(
√√" #
$str
√√# I
)
√√I J
}
√√K L
,
√√L M
{
ƒƒ 
$num
ƒƒ 
,
ƒƒ 
new
ƒƒ 
Guid
ƒƒ !
(
ƒƒ! "
$str
ƒƒ" H
)
ƒƒH I
}
ƒƒJ K
,
ƒƒK L
{
≈≈ 
$num
≈≈ 
,
≈≈ 
new
≈≈ 
Guid
≈≈ !
(
≈≈! "
$str
≈≈" H
)
≈≈H I
}
≈≈J K
,
≈≈K L
{
∆∆ 
$num
∆∆ 
,
∆∆ 
new
∆∆ 
Guid
∆∆ !
(
∆∆! "
$str
∆∆" H
)
∆∆H I
}
∆∆J K
,
∆∆K L
{
«« 
$num
«« 
,
«« 
new
«« 
Guid
«« !
(
««! "
$str
««" H
)
««H I
}
««J K
,
««K L
{
»» 
$num
»» 
,
»» 
new
»» 
Guid
»» !
(
»»! "
$str
»»" H
)
»»H I
}
»»J K
,
»»K L
{
…… 
$num
…… 
,
…… 
new
…… 
Guid
…… !
(
……! "
$str
……" H
)
……H I
}
……J K
,
……K L
{
   
$num
   
,
   
new
   
Guid
   "
(
  " #
$str
  # I
)
  I J
}
  K L
}
ÀÀ 
)
ÀÀ 
;
ÀÀ 
migrationBuilder
ÕÕ 
.
ÕÕ 
CreateIndex
ÕÕ (
(
ÕÕ( )
name
ŒŒ 
:
ŒŒ 
$str
ŒŒ 7
,
ŒŒ7 8
table
œœ 
:
œœ 
$str
œœ (
,
œœ( )
column
–– 
:
–– 
$str
–– &
)
––& '
;
––' (
}
—— 	
}
““ 
}”” ©ﬁ
yC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Migrations\20230406012919_AddPermissionRole2.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *

Migrations* 4
{		 
public 

partial 
class 
AddPermissionRole2 +
:, -
	Migration. 7
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 

DeleteData '
(' (
table 
: 
$str (
,( )

keyColumns 
: 
new 
[  
]  !
{" #
$str$ 2
,2 3
$str4 <
}= >
,> ?
	keyValues 
: 
new 
object %
[% &
]& '
{( )
$num* +
,+ ,
new- 0
Guid1 5
(5 6
$str6 \
)\ ]
}^ _
)_ `
;` a
migrationBuilder 
. 

DeleteData '
(' (
table 
: 
$str (
,( )

keyColumns 
: 
new 
[  
]  !
{" #
$str$ 2
,2 3
$str4 <
}= >
,> ?
	keyValues 
: 
new 
object %
[% &
]& '
{( )
$num* +
,+ ,
new- 0
Guid1 5
(5 6
$str6 \
)\ ]
}^ _
)_ `
;` a
migrationBuilder 
. 

DeleteData '
(' (
table 
: 
$str (
,( )

keyColumns 
: 
new 
[  
]  !
{" #
$str$ 2
,2 3
$str4 <
}= >
,> ?
	keyValues 
: 
new 
object %
[% &
]& '
{( )
$num* +
,+ ,
new- 0
Guid1 5
(5 6
$str6 \
)\ ]
}^ _
)_ `
;` a
migrationBuilder 
. 

DeleteData '
(' (
table   
:   
$str   (
,  ( )

keyColumns!! 
:!! 
new!! 
[!!  
]!!  !
{!!" #
$str!!$ 2
,!!2 3
$str!!4 <
}!!= >
,!!> ?
	keyValues"" 
:"" 
new"" 
object"" %
[""% &
]""& '
{""( )
$num""* +
,""+ ,
new""- 0
Guid""1 5
(""5 6
$str""6 \
)""\ ]
}""^ _
)""_ `
;""` a
migrationBuilder$$ 
.$$ 

DeleteData$$ '
($$' (
table%% 
:%% 
$str%% (
,%%( )

keyColumns&& 
:&& 
new&& 
[&&  
]&&  !
{&&" #
$str&&$ 2
,&&2 3
$str&&4 <
}&&= >
,&&> ?
	keyValues'' 
:'' 
new'' 
object'' %
[''% &
]''& '
{''( )
$num''* +
,''+ ,
new''- 0
Guid''1 5
(''5 6
$str''6 \
)''\ ]
}''^ _
)''_ `
;''` a
migrationBuilder)) 
.)) 

DeleteData)) '
())' (
table** 
:** 
$str** (
,**( )

keyColumns++ 
:++ 
new++ 
[++  
]++  !
{++" #
$str++$ 2
,++2 3
$str++4 <
}++= >
,++> ?
	keyValues,, 
:,, 
new,, 
object,, %
[,,% &
],,& '
{,,( )
$num,,* +
,,,+ ,
new,,- 0
Guid,,1 5
(,,5 6
$str,,6 \
),,\ ]
},,^ _
),,_ `
;,,` a
migrationBuilder.. 
... 

DeleteData.. '
(..' (
table// 
:// 
$str// (
,//( )

keyColumns00 
:00 
new00 
[00  
]00  !
{00" #
$str00$ 2
,002 3
$str004 <
}00= >
,00> ?
	keyValues11 
:11 
new11 
object11 %
[11% &
]11& '
{11( )
$num11* +
,11+ ,
new11- 0
Guid111 5
(115 6
$str116 \
)11\ ]
}11^ _
)11_ `
;11` a
migrationBuilder33 
.33 

DeleteData33 '
(33' (
table44 
:44 
$str44 (
,44( )

keyColumns55 
:55 
new55 
[55  
]55  !
{55" #
$str55$ 2
,552 3
$str554 <
}55= >
,55> ?
	keyValues66 
:66 
new66 
object66 %
[66% &
]66& '
{66( )
$num66* +
,66+ ,
new66- 0
Guid661 5
(665 6
$str666 \
)66\ ]
}66^ _
)66_ `
;66` a
migrationBuilder88 
.88 

DeleteData88 '
(88' (
table99 
:99 
$str99 (
,99( )

keyColumns:: 
::: 
new:: 
[::  
]::  !
{::" #
$str::$ 2
,::2 3
$str::4 <
}::= >
,::> ?
	keyValues;; 
:;; 
new;; 
object;; %
[;;% &
];;& '
{;;( )
$num;;* +
,;;+ ,
new;;- 0
Guid;;1 5
(;;5 6
$str;;6 \
);;\ ]
};;^ _
);;_ `
;;;` a
migrationBuilder== 
.== 

DeleteData== '
(==' (
table>> 
:>> 
$str>> (
,>>( )

keyColumns?? 
:?? 
new?? 
[??  
]??  !
{??" #
$str??$ 2
,??2 3
$str??4 <
}??= >
,??> ?
	keyValues@@ 
:@@ 
new@@ 
object@@ %
[@@% &
]@@& '
{@@( )
$num@@* +
,@@+ ,
new@@- 0
Guid@@1 5
(@@5 6
$str@@6 \
)@@\ ]
}@@^ _
)@@_ `
;@@` a
migrationBuilderBB 
.BB 

DeleteDataBB '
(BB' (
tableCC 
:CC 
$strCC (
,CC( )

keyColumnsDD 
:DD 
newDD 
[DD  
]DD  !
{DD" #
$strDD$ 2
,DD2 3
$strDD4 <
}DD= >
,DD> ?
	keyValuesEE 
:EE 
newEE 
objectEE %
[EE% &
]EE& '
{EE( )
$numEE* +
,EE+ ,
newEE- 0
GuidEE1 5
(EE5 6
$strEE6 \
)EE\ ]
}EE^ _
)EE_ `
;EE` a
migrationBuilderGG 
.GG 

DeleteDataGG '
(GG' (
tableHH 
:HH 
$strHH (
,HH( )

keyColumnsII 
:II 
newII 
[II  
]II  !
{II" #
$strII$ 2
,II2 3
$strII4 <
}II= >
,II> ?
	keyValuesJJ 
:JJ 
newJJ 
objectJJ %
[JJ% &
]JJ& '
{JJ( )
$numJJ* +
,JJ+ ,
newJJ- 0
GuidJJ1 5
(JJ5 6
$strJJ6 \
)JJ\ ]
}JJ^ _
)JJ_ `
;JJ` a
migrationBuilderLL 
.LL 

DeleteDataLL '
(LL' (
tableMM 
:MM 
$strMM (
,MM( )

keyColumnsNN 
:NN 
newNN 
[NN  
]NN  !
{NN" #
$strNN$ 2
,NN2 3
$strNN4 <
}NN= >
,NN> ?
	keyValuesOO 
:OO 
newOO 
objectOO %
[OO% &
]OO& '
{OO( )
$numOO* +
,OO+ ,
newOO- 0
GuidOO1 5
(OO5 6
$strOO6 \
)OO\ ]
}OO^ _
)OO_ `
;OO` a
migrationBuilderQQ 
.QQ 

DeleteDataQQ '
(QQ' (
tableRR 
:RR 
$strRR (
,RR( )

keyColumnsSS 
:SS 
newSS 
[SS  
]SS  !
{SS" #
$strSS$ 2
,SS2 3
$strSS4 <
}SS= >
,SS> ?
	keyValuesTT 
:TT 
newTT 
objectTT %
[TT% &
]TT& '
{TT( )
$numTT* +
,TT+ ,
newTT- 0
GuidTT1 5
(TT5 6
$strTT6 \
)TT\ ]
}TT^ _
)TT_ `
;TT` a
migrationBuilderVV 
.VV 

DeleteDataVV '
(VV' (
tableWW 
:WW 
$strWW (
,WW( )

keyColumnsXX 
:XX 
newXX 
[XX  
]XX  !
{XX" #
$strXX$ 2
,XX2 3
$strXX4 <
}XX= >
,XX> ?
	keyValuesYY 
:YY 
newYY 
objectYY %
[YY% &
]YY& '
{YY( )
$numYY* +
,YY+ ,
newYY- 0
GuidYY1 5
(YY5 6
$strYY6 \
)YY\ ]
}YY^ _
)YY_ `
;YY` a
migrationBuilder[[ 
.[[ 

DeleteData[[ '
([[' (
table\\ 
:\\ 
$str\\ (
,\\( )

keyColumns]] 
:]] 
new]] 
[]]  
]]]  !
{]]" #
$str]]$ 2
,]]2 3
$str]]4 <
}]]= >
,]]> ?
	keyValues^^ 
:^^ 
new^^ 
object^^ %
[^^% &
]^^& '
{^^( )
$num^^* +
,^^+ ,
new^^- 0
Guid^^1 5
(^^5 6
$str^^6 \
)^^\ ]
}^^^ _
)^^_ `
;^^` a
migrationBuilder`` 
.`` 

DeleteData`` '
(``' (
tableaa 
:aa 
$straa (
,aa( )

keyColumnsbb 
:bb 
newbb 
[bb  
]bb  !
{bb" #
$strbb$ 2
,bb2 3
$strbb4 <
}bb= >
,bb> ?
	keyValuescc 
:cc 
newcc 
objectcc %
[cc% &
]cc& '
{cc( )
$numcc* +
,cc+ ,
newcc- 0
Guidcc1 5
(cc5 6
$strcc6 \
)cc\ ]
}cc^ _
)cc_ `
;cc` a
migrationBuilderee 
.ee 

DeleteDataee '
(ee' (
tableff 
:ff 
$strff (
,ff( )

keyColumnsgg 
:gg 
newgg 
[gg  
]gg  !
{gg" #
$strgg$ 2
,gg2 3
$strgg4 <
}gg= >
,gg> ?
	keyValueshh 
:hh 
newhh 
objecthh %
[hh% &
]hh& '
{hh( )
$numhh* +
,hh+ ,
newhh- 0
Guidhh1 5
(hh5 6
$strhh6 \
)hh\ ]
}hh^ _
)hh_ `
;hh` a
migrationBuilderjj 
.jj 

DeleteDatajj '
(jj' (
tablekk 
:kk 
$strkk (
,kk( )

keyColumnsll 
:ll 
newll 
[ll  
]ll  !
{ll" #
$strll$ 2
,ll2 3
$strll4 <
}ll= >
,ll> ?
	keyValuesmm 
:mm 
newmm 
objectmm %
[mm% &
]mm& '
{mm( )
$nummm* +
,mm+ ,
newmm- 0
Guidmm1 5
(mm5 6
$strmm6 \
)mm\ ]
}mm^ _
)mm_ `
;mm` a
migrationBuilderoo 
.oo 

DeleteDataoo '
(oo' (
tablepp 
:pp 
$strpp (
,pp( )

keyColumnsqq 
:qq 
newqq 
[qq  
]qq  !
{qq" #
$strqq$ 2
,qq2 3
$strqq4 <
}qq= >
,qq> ?
	keyValuesrr 
:rr 
newrr 
objectrr %
[rr% &
]rr& '
{rr( )
$numrr* +
,rr+ ,
newrr- 0
Guidrr1 5
(rr5 6
$strrr6 \
)rr\ ]
}rr^ _
)rr_ `
;rr` a
migrationBuildertt 
.tt 

DeleteDatatt '
(tt' (
tableuu 
:uu 
$struu (
,uu( )

keyColumnsvv 
:vv 
newvv 
[vv  
]vv  !
{vv" #
$strvv$ 2
,vv2 3
$strvv4 <
}vv= >
,vv> ?
	keyValuesww 
:ww 
newww 
objectww %
[ww% &
]ww& '
{ww( )
$numww* +
,ww+ ,
newww- 0
Guidww1 5
(ww5 6
$strww6 \
)ww\ ]
}ww^ _
)ww_ `
;ww` a
migrationBuilderyy 
.yy 

DeleteDatayy '
(yy' (
tablezz 
:zz 
$strzz (
,zz( )

keyColumns{{ 
:{{ 
new{{ 
[{{  
]{{  !
{{{" #
$str{{$ 2
,{{2 3
$str{{4 <
}{{= >
,{{> ?
	keyValues|| 
:|| 
new|| 
object|| %
[||% &
]||& '
{||( )
$num||* ,
,||, -
new||. 1
Guid||2 6
(||6 7
$str||7 ]
)||] ^
}||_ `
)||` a
;||a b
migrationBuilder~~ 
.~~ 

DeleteData~~ '
(~~' (
table 
: 
$str (
,( )

keyColumns
ÄÄ 
:
ÄÄ 
new
ÄÄ 
[
ÄÄ  
]
ÄÄ  !
{
ÄÄ" #
$str
ÄÄ$ 2
,
ÄÄ2 3
$str
ÄÄ4 <
}
ÄÄ= >
,
ÄÄ> ?
	keyValues
ÅÅ 
:
ÅÅ 
new
ÅÅ 
object
ÅÅ %
[
ÅÅ% &
]
ÅÅ& '
{
ÅÅ( )
$num
ÅÅ* ,
,
ÅÅ, -
new
ÅÅ. 1
Guid
ÅÅ2 6
(
ÅÅ6 7
$str
ÅÅ7 ]
)
ÅÅ] ^
}
ÅÅ_ `
)
ÅÅ` a
;
ÅÅa b
migrationBuilder
ÉÉ 
.
ÉÉ 

DeleteData
ÉÉ '
(
ÉÉ' (
table
ÑÑ 
:
ÑÑ 
$str
ÑÑ (
,
ÑÑ( )

keyColumns
ÖÖ 
:
ÖÖ 
new
ÖÖ 
[
ÖÖ  
]
ÖÖ  !
{
ÖÖ" #
$str
ÖÖ$ 2
,
ÖÖ2 3
$str
ÖÖ4 <
}
ÖÖ= >
,
ÖÖ> ?
	keyValues
ÜÜ 
:
ÜÜ 
new
ÜÜ 
object
ÜÜ %
[
ÜÜ% &
]
ÜÜ& '
{
ÜÜ( )
$num
ÜÜ* ,
,
ÜÜ, -
new
ÜÜ. 1
Guid
ÜÜ2 6
(
ÜÜ6 7
$str
ÜÜ7 ]
)
ÜÜ] ^
}
ÜÜ_ `
)
ÜÜ` a
;
ÜÜa b
migrationBuilder
àà 
.
àà 

DeleteData
àà '
(
àà' (
table
ââ 
:
ââ 
$str
ââ (
,
ââ( )

keyColumns
ää 
:
ää 
new
ää 
[
ää  
]
ää  !
{
ää" #
$str
ää$ 2
,
ää2 3
$str
ää4 <
}
ää= >
,
ää> ?
	keyValues
ãã 
:
ãã 
new
ãã 
object
ãã %
[
ãã% &
]
ãã& '
{
ãã( )
$num
ãã* ,
,
ãã, -
new
ãã. 1
Guid
ãã2 6
(
ãã6 7
$str
ãã7 ]
)
ãã] ^
}
ãã_ `
)
ãã` a
;
ããa b
migrationBuilder
çç 
.
çç 

DeleteData
çç '
(
çç' (
table
éé 
:
éé 
$str
éé (
,
éé( )

keyColumns
èè 
:
èè 
new
èè 
[
èè  
]
èè  !
{
èè" #
$str
èè$ 2
,
èè2 3
$str
èè4 <
}
èè= >
,
èè> ?
	keyValues
êê 
:
êê 
new
êê 
object
êê %
[
êê% &
]
êê& '
{
êê( )
$num
êê* ,
,
êê, -
new
êê. 1
Guid
êê2 6
(
êê6 7
$str
êê7 ]
)
êê] ^
}
êê_ `
)
êê` a
;
êêa b
migrationBuilder
íí 
.
íí 

DeleteData
íí '
(
íí' (
table
ìì 
:
ìì 
$str
ìì (
,
ìì( )

keyColumns
îî 
:
îî 
new
îî 
[
îî  
]
îî  !
{
îî" #
$str
îî$ 2
,
îî2 3
$str
îî4 <
}
îî= >
,
îî> ?
	keyValues
ïï 
:
ïï 
new
ïï 
object
ïï %
[
ïï% &
]
ïï& '
{
ïï( )
$num
ïï* ,
,
ïï, -
new
ïï. 1
Guid
ïï2 6
(
ïï6 7
$str
ïï7 ]
)
ïï] ^
}
ïï_ `
)
ïï` a
;
ïïa b
migrationBuilder
óó 
.
óó 

DeleteData
óó '
(
óó' (
table
òò 
:
òò 
$str
òò (
,
òò( )

keyColumns
ôô 
:
ôô 
new
ôô 
[
ôô  
]
ôô  !
{
ôô" #
$str
ôô$ 2
,
ôô2 3
$str
ôô4 <
}
ôô= >
,
ôô> ?
	keyValues
öö 
:
öö 
new
öö 
object
öö %
[
öö% &
]
öö& '
{
öö( )
$num
öö* ,
,
öö, -
new
öö. 1
Guid
öö2 6
(
öö6 7
$str
öö7 ]
)
öö] ^
}
öö_ `
)
öö` a
;
ööa b
migrationBuilder
úú 
.
úú 

DeleteData
úú '
(
úú' (
table
ùù 
:
ùù 
$str
ùù (
,
ùù( )

keyColumns
ûû 
:
ûû 
new
ûû 
[
ûû  
]
ûû  !
{
ûû" #
$str
ûû$ 2
,
ûû2 3
$str
ûû4 <
}
ûû= >
,
ûû> ?
	keyValues
üü 
:
üü 
new
üü 
object
üü %
[
üü% &
]
üü& '
{
üü( )
$num
üü* ,
,
üü, -
new
üü. 1
Guid
üü2 6
(
üü6 7
$str
üü7 ]
)
üü] ^
}
üü_ `
)
üü` a
;
üüa b
migrationBuilder
°° 
.
°° 

DeleteData
°° '
(
°°' (
table
¢¢ 
:
¢¢ 
$str
¢¢ (
,
¢¢( )

keyColumns
££ 
:
££ 
new
££ 
[
££  
]
££  !
{
££" #
$str
££$ 2
,
££2 3
$str
££4 <
}
££= >
,
££> ?
	keyValues
§§ 
:
§§ 
new
§§ 
object
§§ %
[
§§% &
]
§§& '
{
§§( )
$num
§§* ,
,
§§, -
new
§§. 1
Guid
§§2 6
(
§§6 7
$str
§§7 ]
)
§§] ^
}
§§_ `
)
§§` a
;
§§a b
migrationBuilder
¶¶ 
.
¶¶ 

DeleteData
¶¶ '
(
¶¶' (
table
ßß 
:
ßß 
$str
ßß (
,
ßß( )

keyColumns
®® 
:
®® 
new
®® 
[
®®  
]
®®  !
{
®®" #
$str
®®$ 2
,
®®2 3
$str
®®4 <
}
®®= >
,
®®> ?
	keyValues
©© 
:
©© 
new
©© 
object
©© %
[
©©% &
]
©©& '
{
©©( )
$num
©©* ,
,
©©, -
new
©©. 1
Guid
©©2 6
(
©©6 7
$str
©©7 ]
)
©©] ^
}
©©_ `
)
©©` a
;
©©a b
migrationBuilder
´´ 
.
´´ 

DeleteData
´´ '
(
´´' (
table
¨¨ 
:
¨¨ 
$str
¨¨ (
,
¨¨( )

keyColumns
≠≠ 
:
≠≠ 
new
≠≠ 
[
≠≠  
]
≠≠  !
{
≠≠" #
$str
≠≠$ 2
,
≠≠2 3
$str
≠≠4 <
}
≠≠= >
,
≠≠> ?
	keyValues
ÆÆ 
:
ÆÆ 
new
ÆÆ 
object
ÆÆ %
[
ÆÆ% &
]
ÆÆ& '
{
ÆÆ( )
$num
ÆÆ* ,
,
ÆÆ, -
new
ÆÆ. 1
Guid
ÆÆ2 6
(
ÆÆ6 7
$str
ÆÆ7 ]
)
ÆÆ] ^
}
ÆÆ_ `
)
ÆÆ` a
;
ÆÆa b
migrationBuilder
∞∞ 
.
∞∞ 

DeleteData
∞∞ '
(
∞∞' (
table
±± 
:
±± 
$str
±± (
,
±±( )

keyColumns
≤≤ 
:
≤≤ 
new
≤≤ 
[
≤≤  
]
≤≤  !
{
≤≤" #
$str
≤≤$ 2
,
≤≤2 3
$str
≤≤4 <
}
≤≤= >
,
≤≤> ?
	keyValues
≥≥ 
:
≥≥ 
new
≥≥ 
object
≥≥ %
[
≥≥% &
]
≥≥& '
{
≥≥( )
$num
≥≥* ,
,
≥≥, -
new
≥≥. 1
Guid
≥≥2 6
(
≥≥6 7
$str
≥≥7 ]
)
≥≥] ^
}
≥≥_ `
)
≥≥` a
;
≥≥a b
}
¥¥ 	
	protected
∑∑ 
override
∑∑ 
void
∑∑ 
Down
∑∑  $
(
∑∑$ %
MigrationBuilder
∑∑% 5
migrationBuilder
∑∑6 F
)
∑∑F G
{
∏∏ 	
migrationBuilder
ππ 
.
ππ 

InsertData
ππ '
(
ππ' (
table
∫∫ 
:
∫∫ 
$str
∫∫ (
,
∫∫( )
columns
ªª 
:
ªª 
new
ªª 
[
ªª 
]
ªª 
{
ªª  
$str
ªª! /
,
ªª/ 0
$str
ªª1 9
}
ªª: ;
,
ªª; <
values
ºº 
:
ºº 
new
ºº 
object
ºº "
[
ºº" #
,
ºº# $
]
ºº$ %
{
ΩΩ 
{
ææ 
$num
ææ 
,
ææ 
new
ææ 
Guid
ææ !
(
ææ! "
$str
ææ" H
)
ææH I
}
ææJ K
,
ææK L
{
øø 
$num
øø 
,
øø 
new
øø 
Guid
øø !
(
øø! "
$str
øø" H
)
øøH I
}
øøJ K
,
øøK L
{
¿¿ 
$num
¿¿ 
,
¿¿ 
new
¿¿ 
Guid
¿¿ !
(
¿¿! "
$str
¿¿" H
)
¿¿H I
}
¿¿J K
,
¿¿K L
{
¡¡ 
$num
¡¡ 
,
¡¡ 
new
¡¡ 
Guid
¡¡ !
(
¡¡! "
$str
¡¡" H
)
¡¡H I
}
¡¡J K
,
¡¡K L
{
¬¬ 
$num
¬¬ 
,
¬¬ 
new
¬¬ 
Guid
¬¬ !
(
¬¬! "
$str
¬¬" H
)
¬¬H I
}
¬¬J K
,
¬¬K L
{
√√ 
$num
√√ 
,
√√ 
new
√√ 
Guid
√√ !
(
√√! "
$str
√√" H
)
√√H I
}
√√J K
,
√√K L
{
ƒƒ 
$num
ƒƒ 
,
ƒƒ 
new
ƒƒ 
Guid
ƒƒ !
(
ƒƒ! "
$str
ƒƒ" H
)
ƒƒH I
}
ƒƒJ K
,
ƒƒK L
{
≈≈ 
$num
≈≈ 
,
≈≈ 
new
≈≈ 
Guid
≈≈ !
(
≈≈! "
$str
≈≈" H
)
≈≈H I
}
≈≈J K
,
≈≈K L
{
∆∆ 
$num
∆∆ 
,
∆∆ 
new
∆∆ 
Guid
∆∆ !
(
∆∆! "
$str
∆∆" H
)
∆∆H I
}
∆∆J K
,
∆∆K L
{
«« 
$num
«« 
,
«« 
new
«« 
Guid
«« !
(
««! "
$str
««" H
)
««H I
}
««J K
,
««K L
{
»» 
$num
»» 
,
»» 
new
»» 
Guid
»» !
(
»»! "
$str
»»" H
)
»»H I
}
»»J K
,
»»K L
{
…… 
$num
…… 
,
…… 
new
…… 
Guid
…… !
(
……! "
$str
……" H
)
……H I
}
……J K
,
……K L
{
   
$num
   
,
   
new
   
Guid
   !
(
  ! "
$str
  " H
)
  H I
}
  J K
,
  K L
{
ÀÀ 
$num
ÀÀ 
,
ÀÀ 
new
ÀÀ 
Guid
ÀÀ !
(
ÀÀ! "
$str
ÀÀ" H
)
ÀÀH I
}
ÀÀJ K
,
ÀÀK L
{
ÃÃ 
$num
ÃÃ 
,
ÃÃ 
new
ÃÃ 
Guid
ÃÃ !
(
ÃÃ! "
$str
ÃÃ" H
)
ÃÃH I
}
ÃÃJ K
,
ÃÃK L
{
ÕÕ 
$num
ÕÕ 
,
ÕÕ 
new
ÕÕ 
Guid
ÕÕ !
(
ÕÕ! "
$str
ÕÕ" H
)
ÕÕH I
}
ÕÕJ K
,
ÕÕK L
{
ŒŒ 
$num
ŒŒ 
,
ŒŒ 
new
ŒŒ 
Guid
ŒŒ !
(
ŒŒ! "
$str
ŒŒ" H
)
ŒŒH I
}
ŒŒJ K
,
ŒŒK L
{
œœ 
$num
œœ 
,
œœ 
new
œœ 
Guid
œœ !
(
œœ! "
$str
œœ" H
)
œœH I
}
œœJ K
,
œœK L
{
–– 
$num
–– 
,
–– 
new
–– 
Guid
–– !
(
––! "
$str
––" H
)
––H I
}
––J K
,
––K L
{
—— 
$num
—— 
,
—— 
new
—— 
Guid
—— !
(
——! "
$str
——" H
)
——H I
}
——J K
,
——K L
{
““ 
$num
““ 
,
““ 
new
““ 
Guid
““ !
(
““! "
$str
““" H
)
““H I
}
““J K
,
““K L
{
”” 
$num
”” 
,
”” 
new
”” 
Guid
”” "
(
””" #
$str
””# I
)
””I J
}
””K L
,
””L M
{
‘‘ 
$num
‘‘ 
,
‘‘ 
new
‘‘ 
Guid
‘‘ "
(
‘‘" #
$str
‘‘# I
)
‘‘I J
}
‘‘K L
,
‘‘L M
{
’’ 
$num
’’ 
,
’’ 
new
’’ 
Guid
’’ "
(
’’" #
$str
’’# I
)
’’I J
}
’’K L
,
’’L M
{
÷÷ 
$num
÷÷ 
,
÷÷ 
new
÷÷ 
Guid
÷÷ "
(
÷÷" #
$str
÷÷# I
)
÷÷I J
}
÷÷K L
,
÷÷L M
{
◊◊ 
$num
◊◊ 
,
◊◊ 
new
◊◊ 
Guid
◊◊ "
(
◊◊" #
$str
◊◊# I
)
◊◊I J
}
◊◊K L
,
◊◊L M
{
ÿÿ 
$num
ÿÿ 
,
ÿÿ 
new
ÿÿ 
Guid
ÿÿ "
(
ÿÿ" #
$str
ÿÿ# I
)
ÿÿI J
}
ÿÿK L
,
ÿÿL M
{
ŸŸ 
$num
ŸŸ 
,
ŸŸ 
new
ŸŸ 
Guid
ŸŸ "
(
ŸŸ" #
$str
ŸŸ# I
)
ŸŸI J
}
ŸŸK L
,
ŸŸL M
{
⁄⁄ 
$num
⁄⁄ 
,
⁄⁄ 
new
⁄⁄ 
Guid
⁄⁄ "
(
⁄⁄" #
$str
⁄⁄# I
)
⁄⁄I J
}
⁄⁄K L
,
⁄⁄L M
{
€€ 
$num
€€ 
,
€€ 
new
€€ 
Guid
€€ "
(
€€" #
$str
€€# I
)
€€I J
}
€€K L
,
€€L M
{
‹‹ 
$num
‹‹ 
,
‹‹ 
new
‹‹ 
Guid
‹‹ "
(
‹‹" #
$str
‹‹# I
)
‹‹I J
}
‹‹K L
,
‹‹L M
{
›› 
$num
›› 
,
›› 
new
›› 
Guid
›› "
(
››" #
$str
››# I
)
››I J
}
››K L
,
››L M
{
ﬁﬁ 
$num
ﬁﬁ 
,
ﬁﬁ 
new
ﬁﬁ 
Guid
ﬁﬁ "
(
ﬁﬁ" #
$str
ﬁﬁ# I
)
ﬁﬁI J
}
ﬁﬁK L
}
ﬂﬂ 
)
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 	
}
·· 
}‚‚ Â
yC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Migrations\20230406013646_AddPermissionRole3.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *

Migrations* 4
{ 
public		 

partial		 
class		 
AddPermissionRole3		 +
:		, -
	Migration		. 7
{

 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
	DropTable &
(& '
name 
: 
$str &
)& '
;' (
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str &
,& '
columns 
: 
table 
=> !
new" %
{ 
PermissionsId !
=" #
table$ )
.) *
Column* 0
<0 1
int1 4
>4 5
(5 6
type6 :
:: ;
$str< A
,A B
nullableC K
:K L
falseM R
)R S
,S T
RolesId 
= 
table #
.# $
Column$ *
<* +
Guid+ /
>/ 0
(0 1
type1 5
:5 6
$str7 I
,I J
nullableK S
:S T
falseU Z
)Z [
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 8
,8 9
x: ;
=>< >
new? B
{C D
xE F
.F G
PermissionsIdG T
,T U
xV W
.W X
RolesIdX _
}` a
)a b
;b c
table 
. 

ForeignKey $
($ %
name   
:   
$str   E
,  E F
column!! 
:!! 
x!!  !
=>!!" $
x!!% &
.!!& '
RolesId!!' .
,!!. /
principalTable"" &
:""& '
$str""( 5
,""5 6
principalColumn## '
:##' (
$str##) -
,##- .
onDelete$$  
:$$  !
ReferentialAction$$" 3
.$$3 4
Cascade$$4 ;
)$$; <
;$$< =
table%% 
.%% 

ForeignKey%% $
(%%$ %
name&& 
:&& 
$str&& K
,&&K L
column'' 
:'' 
x''  !
=>''" $
x''% &
.''& '
PermissionsId''' 4
,''4 5
principalTable(( &
:((& '
$str((( 5
,((5 6
principalColumn)) '
:))' (
$str))) -
,))- .
onDelete**  
:**  !
ReferentialAction**" 3
.**3 4
Cascade**4 ;
)**; <
;**< =
}++ 
)++ 
;++ 
migrationBuilder-- 
.-- 
CreateIndex-- (
(--( )
name.. 
:.. 
$str.. 1
,..1 2
table// 
:// 
$str// '
,//' (
column00 
:00 
$str00 !
)00! "
;00" #
}11 	
}22 
}33 π›
yC:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Migrations\20230406014131_AddPermissionRole4.cs
	namespace 	
GoColis
 
. 
Shipping 
. 
Infrastructure )
.) *

Migrations* 4
{		 
public 

partial 
class 
AddPermissionRole4 +
:, -
	Migration. 7
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 

InsertData '
(' (
table 
: 
$str (
,( )
columns 
: 
new 
[ 
] 
{  
$str! /
,/ 0
$str1 9
}: ;
,; <
values 
: 
new 
object "
[" #
,# $
]$ %
{ 
{ 
$num 
, 
new 
Guid !
(! "
$str" H
)H I
}J K
,K L
{ 
$num 
, 
new 
Guid !
(! "
$str" H
)H I
}J K
,K L
{ 
$num 
, 
new 
Guid !
(! "
$str" H
)H I
}J K
,K L
{ 
$num 
, 
new 
Guid !
(! "
$str" H
)H I
}J K
,K L
{ 
$num 
, 
new 
Guid !
(! "
$str" H
)H I
}J K
,K L
{ 
$num 
, 
new 
Guid !
(! "
$str" H
)H I
}J K
,K L
{ 
$num 
, 
new 
Guid !
(! "
$str" H
)H I
}J K
,K L
{ 
$num 
, 
new 
Guid !
(! "
$str" H
)H I
}J K
,K L
{ 
$num 
, 
new 
Guid !
(! "
$str" H
)H I
}J K
,K L
{ 
$num 
, 
new 
Guid !
(! "
$str" H
)H I
}J K
,K L
{ 
$num 
, 
new 
Guid !
(! "
$str" H
)H I
}J K
,K L
{   
$num   
,   
new   
Guid   !
(  ! "
$str  " H
)  H I
}  J K
,  K L
{!! 
$num!! 
,!! 
new!! 
Guid!! !
(!!! "
$str!!" H
)!!H I
}!!J K
,!!K L
{"" 
$num"" 
,"" 
new"" 
Guid"" !
(""! "
$str""" H
)""H I
}""J K
,""K L
{## 
$num## 
,## 
new## 
Guid## !
(##! "
$str##" H
)##H I
}##J K
,##K L
{$$ 
$num$$ 
,$$ 
new$$ 
Guid$$ !
($$! "
$str$$" H
)$$H I
}$$J K
,$$K L
{%% 
$num%% 
,%% 
new%% 
Guid%% !
(%%! "
$str%%" H
)%%H I
}%%J K
,%%K L
{&& 
$num&& 
,&& 
new&& 
Guid&& !
(&&! "
$str&&" H
)&&H I
}&&J K
,&&K L
{'' 
$num'' 
,'' 
new'' 
Guid'' !
(''! "
$str''" H
)''H I
}''J K
,''K L
{(( 
$num(( 
,(( 
new(( 
Guid(( !
(((! "
$str((" H
)((H I
}((J K
,((K L
{)) 
$num)) 
,)) 
new)) 
Guid)) !
())! "
$str))" H
)))H I
}))J K
,))K L
{** 
$num** 
,** 
new** 
Guid** "
(**" #
$str**# I
)**I J
}**K L
,**L M
{++ 
$num++ 
,++ 
new++ 
Guid++ "
(++" #
$str++# I
)++I J
}++K L
,++L M
{,, 
$num,, 
,,, 
new,, 
Guid,, "
(,," #
$str,,# I
),,I J
},,K L
,,,L M
{-- 
$num-- 
,-- 
new-- 
Guid-- "
(--" #
$str--# I
)--I J
}--K L
,--L M
{.. 
$num.. 
,.. 
new.. 
Guid.. "
(.." #
$str..# I
)..I J
}..K L
,..L M
{// 
$num// 
,// 
new// 
Guid// "
(//" #
$str//# I
)//I J
}//K L
,//L M
{00 
$num00 
,00 
new00 
Guid00 "
(00" #
$str00# I
)00I J
}00K L
,00L M
{11 
$num11 
,11 
new11 
Guid11 "
(11" #
$str11# I
)11I J
}11K L
,11L M
{22 
$num22 
,22 
new22 
Guid22 "
(22" #
$str22# I
)22I J
}22K L
,22L M
{33 
$num33 
,33 
new33 
Guid33 "
(33" #
$str33# I
)33I J
}33K L
,33L M
{44 
$num44 
,44 
new44 
Guid44 "
(44" #
$str44# I
)44I J
}44K L
,44L M
{55 
$num55 
,55 
new55 
Guid55 "
(55" #
$str55# I
)55I J
}55K L
}66 
)66 
;66 
}77 	
	protected:: 
override:: 
void:: 
Down::  $
(::$ %
MigrationBuilder::% 5
migrationBuilder::6 F
)::F G
{;; 	
migrationBuilder<< 
.<< 

DeleteData<< '
(<<' (
table== 
:== 
$str== (
,==( )

keyColumns>> 
:>> 
new>> 
[>>  
]>>  !
{>>" #
$str>>$ 2
,>>2 3
$str>>4 <
}>>= >
,>>> ?
	keyValues?? 
:?? 
new?? 
object?? %
[??% &
]??& '
{??( )
$num??* +
,??+ ,
new??- 0
Guid??1 5
(??5 6
$str??6 \
)??\ ]
}??^ _
)??_ `
;??` a
migrationBuilderAA 
.AA 

DeleteDataAA '
(AA' (
tableBB 
:BB 
$strBB (
,BB( )

keyColumnsCC 
:CC 
newCC 
[CC  
]CC  !
{CC" #
$strCC$ 2
,CC2 3
$strCC4 <
}CC= >
,CC> ?
	keyValuesDD 
:DD 
newDD 
objectDD %
[DD% &
]DD& '
{DD( )
$numDD* +
,DD+ ,
newDD- 0
GuidDD1 5
(DD5 6
$strDD6 \
)DD\ ]
}DD^ _
)DD_ `
;DD` a
migrationBuilderFF 
.FF 

DeleteDataFF '
(FF' (
tableGG 
:GG 
$strGG (
,GG( )

keyColumnsHH 
:HH 
newHH 
[HH  
]HH  !
{HH" #
$strHH$ 2
,HH2 3
$strHH4 <
}HH= >
,HH> ?
	keyValuesII 
:II 
newII 
objectII %
[II% &
]II& '
{II( )
$numII* +
,II+ ,
newII- 0
GuidII1 5
(II5 6
$strII6 \
)II\ ]
}II^ _
)II_ `
;II` a
migrationBuilderKK 
.KK 

DeleteDataKK '
(KK' (
tableLL 
:LL 
$strLL (
,LL( )

keyColumnsMM 
:MM 
newMM 
[MM  
]MM  !
{MM" #
$strMM$ 2
,MM2 3
$strMM4 <
}MM= >
,MM> ?
	keyValuesNN 
:NN 
newNN 
objectNN %
[NN% &
]NN& '
{NN( )
$numNN* +
,NN+ ,
newNN- 0
GuidNN1 5
(NN5 6
$strNN6 \
)NN\ ]
}NN^ _
)NN_ `
;NN` a
migrationBuilderPP 
.PP 

DeleteDataPP '
(PP' (
tableQQ 
:QQ 
$strQQ (
,QQ( )

keyColumnsRR 
:RR 
newRR 
[RR  
]RR  !
{RR" #
$strRR$ 2
,RR2 3
$strRR4 <
}RR= >
,RR> ?
	keyValuesSS 
:SS 
newSS 
objectSS %
[SS% &
]SS& '
{SS( )
$numSS* +
,SS+ ,
newSS- 0
GuidSS1 5
(SS5 6
$strSS6 \
)SS\ ]
}SS^ _
)SS_ `
;SS` a
migrationBuilderUU 
.UU 

DeleteDataUU '
(UU' (
tableVV 
:VV 
$strVV (
,VV( )

keyColumnsWW 
:WW 
newWW 
[WW  
]WW  !
{WW" #
$strWW$ 2
,WW2 3
$strWW4 <
}WW= >
,WW> ?
	keyValuesXX 
:XX 
newXX 
objectXX %
[XX% &
]XX& '
{XX( )
$numXX* +
,XX+ ,
newXX- 0
GuidXX1 5
(XX5 6
$strXX6 \
)XX\ ]
}XX^ _
)XX_ `
;XX` a
migrationBuilderZZ 
.ZZ 

DeleteDataZZ '
(ZZ' (
table[[ 
:[[ 
$str[[ (
,[[( )

keyColumns\\ 
:\\ 
new\\ 
[\\  
]\\  !
{\\" #
$str\\$ 2
,\\2 3
$str\\4 <
}\\= >
,\\> ?
	keyValues]] 
:]] 
new]] 
object]] %
[]]% &
]]]& '
{]]( )
$num]]* +
,]]+ ,
new]]- 0
Guid]]1 5
(]]5 6
$str]]6 \
)]]\ ]
}]]^ _
)]]_ `
;]]` a
migrationBuilder__ 
.__ 

DeleteData__ '
(__' (
table`` 
:`` 
$str`` (
,``( )

keyColumnsaa 
:aa 
newaa 
[aa  
]aa  !
{aa" #
$straa$ 2
,aa2 3
$straa4 <
}aa= >
,aa> ?
	keyValuesbb 
:bb 
newbb 
objectbb %
[bb% &
]bb& '
{bb( )
$numbb* +
,bb+ ,
newbb- 0
Guidbb1 5
(bb5 6
$strbb6 \
)bb\ ]
}bb^ _
)bb_ `
;bb` a
migrationBuilderdd 
.dd 

DeleteDatadd '
(dd' (
tableee 
:ee 
$stree (
,ee( )

keyColumnsff 
:ff 
newff 
[ff  
]ff  !
{ff" #
$strff$ 2
,ff2 3
$strff4 <
}ff= >
,ff> ?
	keyValuesgg 
:gg 
newgg 
objectgg %
[gg% &
]gg& '
{gg( )
$numgg* +
,gg+ ,
newgg- 0
Guidgg1 5
(gg5 6
$strgg6 \
)gg\ ]
}gg^ _
)gg_ `
;gg` a
migrationBuilderii 
.ii 

DeleteDataii '
(ii' (
tablejj 
:jj 
$strjj (
,jj( )

keyColumnskk 
:kk 
newkk 
[kk  
]kk  !
{kk" #
$strkk$ 2
,kk2 3
$strkk4 <
}kk= >
,kk> ?
	keyValuesll 
:ll 
newll 
objectll %
[ll% &
]ll& '
{ll( )
$numll* +
,ll+ ,
newll- 0
Guidll1 5
(ll5 6
$strll6 \
)ll\ ]
}ll^ _
)ll_ `
;ll` a
migrationBuildernn 
.nn 

DeleteDatann '
(nn' (
tableoo 
:oo 
$stroo (
,oo( )

keyColumnspp 
:pp 
newpp 
[pp  
]pp  !
{pp" #
$strpp$ 2
,pp2 3
$strpp4 <
}pp= >
,pp> ?
	keyValuesqq 
:qq 
newqq 
objectqq %
[qq% &
]qq& '
{qq( )
$numqq* +
,qq+ ,
newqq- 0
Guidqq1 5
(qq5 6
$strqq6 \
)qq\ ]
}qq^ _
)qq_ `
;qq` a
migrationBuilderss 
.ss 

DeleteDatass '
(ss' (
tablett 
:tt 
$strtt (
,tt( )

keyColumnsuu 
:uu 
newuu 
[uu  
]uu  !
{uu" #
$struu$ 2
,uu2 3
$struu4 <
}uu= >
,uu> ?
	keyValuesvv 
:vv 
newvv 
objectvv %
[vv% &
]vv& '
{vv( )
$numvv* +
,vv+ ,
newvv- 0
Guidvv1 5
(vv5 6
$strvv6 \
)vv\ ]
}vv^ _
)vv_ `
;vv` a
migrationBuilderxx 
.xx 

DeleteDataxx '
(xx' (
tableyy 
:yy 
$stryy (
,yy( )

keyColumnszz 
:zz 
newzz 
[zz  
]zz  !
{zz" #
$strzz$ 2
,zz2 3
$strzz4 <
}zz= >
,zz> ?
	keyValues{{ 
:{{ 
new{{ 
object{{ %
[{{% &
]{{& '
{{{( )
$num{{* +
,{{+ ,
new{{- 0
Guid{{1 5
({{5 6
$str{{6 \
){{\ ]
}{{^ _
){{_ `
;{{` a
migrationBuilder}} 
.}} 

DeleteData}} '
(}}' (
table~~ 
:~~ 
$str~~ (
,~~( )

keyColumns 
: 
new 
[  
]  !
{" #
$str$ 2
,2 3
$str4 <
}= >
,> ?
	keyValues
ÄÄ 
:
ÄÄ 
new
ÄÄ 
object
ÄÄ %
[
ÄÄ% &
]
ÄÄ& '
{
ÄÄ( )
$num
ÄÄ* +
,
ÄÄ+ ,
new
ÄÄ- 0
Guid
ÄÄ1 5
(
ÄÄ5 6
$str
ÄÄ6 \
)
ÄÄ\ ]
}
ÄÄ^ _
)
ÄÄ_ `
;
ÄÄ` a
migrationBuilder
ÇÇ 
.
ÇÇ 

DeleteData
ÇÇ '
(
ÇÇ' (
table
ÉÉ 
:
ÉÉ 
$str
ÉÉ (
,
ÉÉ( )

keyColumns
ÑÑ 
:
ÑÑ 
new
ÑÑ 
[
ÑÑ  
]
ÑÑ  !
{
ÑÑ" #
$str
ÑÑ$ 2
,
ÑÑ2 3
$str
ÑÑ4 <
}
ÑÑ= >
,
ÑÑ> ?
	keyValues
ÖÖ 
:
ÖÖ 
new
ÖÖ 
object
ÖÖ %
[
ÖÖ% &
]
ÖÖ& '
{
ÖÖ( )
$num
ÖÖ* +
,
ÖÖ+ ,
new
ÖÖ- 0
Guid
ÖÖ1 5
(
ÖÖ5 6
$str
ÖÖ6 \
)
ÖÖ\ ]
}
ÖÖ^ _
)
ÖÖ_ `
;
ÖÖ` a
migrationBuilder
áá 
.
áá 

DeleteData
áá '
(
áá' (
table
àà 
:
àà 
$str
àà (
,
àà( )

keyColumns
ââ 
:
ââ 
new
ââ 
[
ââ  
]
ââ  !
{
ââ" #
$str
ââ$ 2
,
ââ2 3
$str
ââ4 <
}
ââ= >
,
ââ> ?
	keyValues
ää 
:
ää 
new
ää 
object
ää %
[
ää% &
]
ää& '
{
ää( )
$num
ää* +
,
ää+ ,
new
ää- 0
Guid
ää1 5
(
ää5 6
$str
ää6 \
)
ää\ ]
}
ää^ _
)
ää_ `
;
ää` a
migrationBuilder
åå 
.
åå 

DeleteData
åå '
(
åå' (
table
çç 
:
çç 
$str
çç (
,
çç( )

keyColumns
éé 
:
éé 
new
éé 
[
éé  
]
éé  !
{
éé" #
$str
éé$ 2
,
éé2 3
$str
éé4 <
}
éé= >
,
éé> ?
	keyValues
èè 
:
èè 
new
èè 
object
èè %
[
èè% &
]
èè& '
{
èè( )
$num
èè* +
,
èè+ ,
new
èè- 0
Guid
èè1 5
(
èè5 6
$str
èè6 \
)
èè\ ]
}
èè^ _
)
èè_ `
;
èè` a
migrationBuilder
ëë 
.
ëë 

DeleteData
ëë '
(
ëë' (
table
íí 
:
íí 
$str
íí (
,
íí( )

keyColumns
ìì 
:
ìì 
new
ìì 
[
ìì  
]
ìì  !
{
ìì" #
$str
ìì$ 2
,
ìì2 3
$str
ìì4 <
}
ìì= >
,
ìì> ?
	keyValues
îî 
:
îî 
new
îî 
object
îî %
[
îî% &
]
îî& '
{
îî( )
$num
îî* +
,
îî+ ,
new
îî- 0
Guid
îî1 5
(
îî5 6
$str
îî6 \
)
îî\ ]
}
îî^ _
)
îî_ `
;
îî` a
migrationBuilder
ññ 
.
ññ 

DeleteData
ññ '
(
ññ' (
table
óó 
:
óó 
$str
óó (
,
óó( )

keyColumns
òò 
:
òò 
new
òò 
[
òò  
]
òò  !
{
òò" #
$str
òò$ 2
,
òò2 3
$str
òò4 <
}
òò= >
,
òò> ?
	keyValues
ôô 
:
ôô 
new
ôô 
object
ôô %
[
ôô% &
]
ôô& '
{
ôô( )
$num
ôô* +
,
ôô+ ,
new
ôô- 0
Guid
ôô1 5
(
ôô5 6
$str
ôô6 \
)
ôô\ ]
}
ôô^ _
)
ôô_ `
;
ôô` a
migrationBuilder
õõ 
.
õõ 

DeleteData
õõ '
(
õõ' (
table
úú 
:
úú 
$str
úú (
,
úú( )

keyColumns
ùù 
:
ùù 
new
ùù 
[
ùù  
]
ùù  !
{
ùù" #
$str
ùù$ 2
,
ùù2 3
$str
ùù4 <
}
ùù= >
,
ùù> ?
	keyValues
ûû 
:
ûû 
new
ûû 
object
ûû %
[
ûû% &
]
ûû& '
{
ûû( )
$num
ûû* +
,
ûû+ ,
new
ûû- 0
Guid
ûû1 5
(
ûû5 6
$str
ûû6 \
)
ûû\ ]
}
ûû^ _
)
ûû_ `
;
ûû` a
migrationBuilder
†† 
.
†† 

DeleteData
†† '
(
††' (
table
°° 
:
°° 
$str
°° (
,
°°( )

keyColumns
¢¢ 
:
¢¢ 
new
¢¢ 
[
¢¢  
]
¢¢  !
{
¢¢" #
$str
¢¢$ 2
,
¢¢2 3
$str
¢¢4 <
}
¢¢= >
,
¢¢> ?
	keyValues
££ 
:
££ 
new
££ 
object
££ %
[
££% &
]
££& '
{
££( )
$num
££* +
,
££+ ,
new
££- 0
Guid
££1 5
(
££5 6
$str
££6 \
)
££\ ]
}
££^ _
)
££_ `
;
££` a
migrationBuilder
•• 
.
•• 

DeleteData
•• '
(
••' (
table
¶¶ 
:
¶¶ 
$str
¶¶ (
,
¶¶( )

keyColumns
ßß 
:
ßß 
new
ßß 
[
ßß  
]
ßß  !
{
ßß" #
$str
ßß$ 2
,
ßß2 3
$str
ßß4 <
}
ßß= >
,
ßß> ?
	keyValues
®® 
:
®® 
new
®® 
object
®® %
[
®®% &
]
®®& '
{
®®( )
$num
®®* ,
,
®®, -
new
®®. 1
Guid
®®2 6
(
®®6 7
$str
®®7 ]
)
®®] ^
}
®®_ `
)
®®` a
;
®®a b
migrationBuilder
™™ 
.
™™ 

DeleteData
™™ '
(
™™' (
table
´´ 
:
´´ 
$str
´´ (
,
´´( )

keyColumns
¨¨ 
:
¨¨ 
new
¨¨ 
[
¨¨  
]
¨¨  !
{
¨¨" #
$str
¨¨$ 2
,
¨¨2 3
$str
¨¨4 <
}
¨¨= >
,
¨¨> ?
	keyValues
≠≠ 
:
≠≠ 
new
≠≠ 
object
≠≠ %
[
≠≠% &
]
≠≠& '
{
≠≠( )
$num
≠≠* ,
,
≠≠, -
new
≠≠. 1
Guid
≠≠2 6
(
≠≠6 7
$str
≠≠7 ]
)
≠≠] ^
}
≠≠_ `
)
≠≠` a
;
≠≠a b
migrationBuilder
ØØ 
.
ØØ 

DeleteData
ØØ '
(
ØØ' (
table
∞∞ 
:
∞∞ 
$str
∞∞ (
,
∞∞( )

keyColumns
±± 
:
±± 
new
±± 
[
±±  
]
±±  !
{
±±" #
$str
±±$ 2
,
±±2 3
$str
±±4 <
}
±±= >
,
±±> ?
	keyValues
≤≤ 
:
≤≤ 
new
≤≤ 
object
≤≤ %
[
≤≤% &
]
≤≤& '
{
≤≤( )
$num
≤≤* ,
,
≤≤, -
new
≤≤. 1
Guid
≤≤2 6
(
≤≤6 7
$str
≤≤7 ]
)
≤≤] ^
}
≤≤_ `
)
≤≤` a
;
≤≤a b
migrationBuilder
¥¥ 
.
¥¥ 

DeleteData
¥¥ '
(
¥¥' (
table
µµ 
:
µµ 
$str
µµ (
,
µµ( )

keyColumns
∂∂ 
:
∂∂ 
new
∂∂ 
[
∂∂  
]
∂∂  !
{
∂∂" #
$str
∂∂$ 2
,
∂∂2 3
$str
∂∂4 <
}
∂∂= >
,
∂∂> ?
	keyValues
∑∑ 
:
∑∑ 
new
∑∑ 
object
∑∑ %
[
∑∑% &
]
∑∑& '
{
∑∑( )
$num
∑∑* ,
,
∑∑, -
new
∑∑. 1
Guid
∑∑2 6
(
∑∑6 7
$str
∑∑7 ]
)
∑∑] ^
}
∑∑_ `
)
∑∑` a
;
∑∑a b
migrationBuilder
ππ 
.
ππ 

DeleteData
ππ '
(
ππ' (
table
∫∫ 
:
∫∫ 
$str
∫∫ (
,
∫∫( )

keyColumns
ªª 
:
ªª 
new
ªª 
[
ªª  
]
ªª  !
{
ªª" #
$str
ªª$ 2
,
ªª2 3
$str
ªª4 <
}
ªª= >
,
ªª> ?
	keyValues
ºº 
:
ºº 
new
ºº 
object
ºº %
[
ºº% &
]
ºº& '
{
ºº( )
$num
ºº* ,
,
ºº, -
new
ºº. 1
Guid
ºº2 6
(
ºº6 7
$str
ºº7 ]
)
ºº] ^
}
ºº_ `
)
ºº` a
;
ººa b
migrationBuilder
ææ 
.
ææ 

DeleteData
ææ '
(
ææ' (
table
øø 
:
øø 
$str
øø (
,
øø( )

keyColumns
¿¿ 
:
¿¿ 
new
¿¿ 
[
¿¿  
]
¿¿  !
{
¿¿" #
$str
¿¿$ 2
,
¿¿2 3
$str
¿¿4 <
}
¿¿= >
,
¿¿> ?
	keyValues
¡¡ 
:
¡¡ 
new
¡¡ 
object
¡¡ %
[
¡¡% &
]
¡¡& '
{
¡¡( )
$num
¡¡* ,
,
¡¡, -
new
¡¡. 1
Guid
¡¡2 6
(
¡¡6 7
$str
¡¡7 ]
)
¡¡] ^
}
¡¡_ `
)
¡¡` a
;
¡¡a b
migrationBuilder
√√ 
.
√√ 

DeleteData
√√ '
(
√√' (
table
ƒƒ 
:
ƒƒ 
$str
ƒƒ (
,
ƒƒ( )

keyColumns
≈≈ 
:
≈≈ 
new
≈≈ 
[
≈≈  
]
≈≈  !
{
≈≈" #
$str
≈≈$ 2
,
≈≈2 3
$str
≈≈4 <
}
≈≈= >
,
≈≈> ?
	keyValues
∆∆ 
:
∆∆ 
new
∆∆ 
object
∆∆ %
[
∆∆% &
]
∆∆& '
{
∆∆( )
$num
∆∆* ,
,
∆∆, -
new
∆∆. 1
Guid
∆∆2 6
(
∆∆6 7
$str
∆∆7 ]
)
∆∆] ^
}
∆∆_ `
)
∆∆` a
;
∆∆a b
migrationBuilder
»» 
.
»» 

DeleteData
»» '
(
»»' (
table
…… 
:
…… 
$str
…… (
,
……( )

keyColumns
   
:
   
new
   
[
    
]
    !
{
  " #
$str
  $ 2
,
  2 3
$str
  4 <
}
  = >
,
  > ?
	keyValues
ÀÀ 
:
ÀÀ 
new
ÀÀ 
object
ÀÀ %
[
ÀÀ% &
]
ÀÀ& '
{
ÀÀ( )
$num
ÀÀ* ,
,
ÀÀ, -
new
ÀÀ. 1
Guid
ÀÀ2 6
(
ÀÀ6 7
$str
ÀÀ7 ]
)
ÀÀ] ^
}
ÀÀ_ `
)
ÀÀ` a
;
ÀÀa b
migrationBuilder
ÕÕ 
.
ÕÕ 

DeleteData
ÕÕ '
(
ÕÕ' (
table
ŒŒ 
:
ŒŒ 
$str
ŒŒ (
,
ŒŒ( )

keyColumns
œœ 
:
œœ 
new
œœ 
[
œœ  
]
œœ  !
{
œœ" #
$str
œœ$ 2
,
œœ2 3
$str
œœ4 <
}
œœ= >
,
œœ> ?
	keyValues
–– 
:
–– 
new
–– 
object
–– %
[
––% &
]
––& '
{
––( )
$num
––* ,
,
––, -
new
––. 1
Guid
––2 6
(
––6 7
$str
––7 ]
)
––] ^
}
––_ `
)
––` a
;
––a b
migrationBuilder
““ 
.
““ 

DeleteData
““ '
(
““' (
table
”” 
:
”” 
$str
”” (
,
””( )

keyColumns
‘‘ 
:
‘‘ 
new
‘‘ 
[
‘‘  
]
‘‘  !
{
‘‘" #
$str
‘‘$ 2
,
‘‘2 3
$str
‘‘4 <
}
‘‘= >
,
‘‘> ?
	keyValues
’’ 
:
’’ 
new
’’ 
object
’’ %
[
’’% &
]
’’& '
{
’’( )
$num
’’* ,
,
’’, -
new
’’. 1
Guid
’’2 6
(
’’6 7
$str
’’7 ]
)
’’] ^
}
’’_ `
)
’’` a
;
’’a b
migrationBuilder
◊◊ 
.
◊◊ 

DeleteData
◊◊ '
(
◊◊' (
table
ÿÿ 
:
ÿÿ 
$str
ÿÿ (
,
ÿÿ( )

keyColumns
ŸŸ 
:
ŸŸ 
new
ŸŸ 
[
ŸŸ  
]
ŸŸ  !
{
ŸŸ" #
$str
ŸŸ$ 2
,
ŸŸ2 3
$str
ŸŸ4 <
}
ŸŸ= >
,
ŸŸ> ?
	keyValues
⁄⁄ 
:
⁄⁄ 
new
⁄⁄ 
object
⁄⁄ %
[
⁄⁄% &
]
⁄⁄& '
{
⁄⁄( )
$num
⁄⁄* ,
,
⁄⁄, -
new
⁄⁄. 1
Guid
⁄⁄2 6
(
⁄⁄6 7
$str
⁄⁄7 ]
)
⁄⁄] ^
}
⁄⁄_ `
)
⁄⁄` a
;
⁄⁄a b
migrationBuilder
‹‹ 
.
‹‹ 

DeleteData
‹‹ '
(
‹‹' (
table
›› 
:
›› 
$str
›› (
,
››( )

keyColumns
ﬁﬁ 
:
ﬁﬁ 
new
ﬁﬁ 
[
ﬁﬁ  
]
ﬁﬁ  !
{
ﬁﬁ" #
$str
ﬁﬁ$ 2
,
ﬁﬁ2 3
$str
ﬁﬁ4 <
}
ﬁﬁ= >
,
ﬁﬁ> ?
	keyValues
ﬂﬂ 
:
ﬂﬂ 
new
ﬂﬂ 
object
ﬂﬂ %
[
ﬂﬂ% &
]
ﬂﬂ& '
{
ﬂﬂ( )
$num
ﬂﬂ* ,
,
ﬂﬂ, -
new
ﬂﬂ. 1
Guid
ﬂﬂ2 6
(
ﬂﬂ6 7
$str
ﬂﬂ7 ]
)
ﬂﬂ] ^
}
ﬂﬂ_ `
)
ﬂﬂ` a
;
ﬂﬂa b
}
‡‡ 	
}
·· 
}‚‚ 