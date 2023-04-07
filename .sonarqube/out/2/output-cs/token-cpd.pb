�
�C:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Authentication\Configurations\PermissionConfiguration.cs
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
}00 �
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
} �
�C:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Authentication\Configurations\RolePermissionConfiguration.cs
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
} �
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
} �9
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
CreateRolePermission	==z �
)
==� �
.
==� �
ToImmutableList
==� �
(
==� �
)
==� �
;
==� �
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
}HH �1
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
=>	'' �"
CreateRolePermission
''� �
(
''� �
RoleConstants
''� �
.
''� �

SuperAdmin
''� �
,
''� �
x
''� �
)
''� �
)
''� �
.
''� �
ToImmutableList
''� �
(
''� �
)
''� �
;
''� �
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
}22 �

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
}		 �*
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

HmacSha256	22y �
)
22� �
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
}99 �$
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
}55 �
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
} �
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
}== �
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
} �
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
}.. �2
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
}CC �
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
}"" �
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
}"" �8
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
}SS �
�C:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Logistics\Configurations\PaymentMethodConfiguration.cs
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
} �
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
} �
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
} �%
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
}88 �;
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
}LL �
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
}   �
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
},, �
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
}## �
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
}$$ ��
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
�� 
:
�� 
$str
�� =
,
��= >
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
AdressId
��' /
,
��/ 0
principalTable
�� &
:
��& '
$str
��( 0
,
��0 1
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� @
,
��@ A
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
	ContactId
��' 0
,
��0 1
principalTable
�� &
:
��& '
$str
��( 2
,
��2 3
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� 
,
��  
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
Guid
��& *
>
��* +
(
��+ ,
type
��, 0
:
��0 1
$str
��2 D
,
��D E
nullable
��F N
:
��N O
false
��P U
)
��U V
,
��V W
	FirstName
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
string
��- 3
>
��3 4
(
��4 5
type
��5 9
:
��9 :
$str
��; J
,
��J K
	maxLength
��L U
:
��U V
$num
��W Z
,
��Z [
nullable
��\ d
:
��d e
false
��f k
)
��k l
,
��l m
LastName
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
string
��, 2
>
��2 3
(
��3 4
type
��4 8
:
��8 9
$str
��: I
,
��I J
	maxLength
��K T
:
��T U
$num
��V Y
,
��Y Z
nullable
��[ c
:
��c d
false
��e j
)
��j k
,
��k l
AdressId
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
Guid
��, 0
>
��0 1
(
��1 2
type
��2 6
:
��6 7
$str
��8 J
,
��J K
nullable
��L T
:
��T U
false
��V [
)
��[ \
,
��\ ]
	ContactId
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
Guid
��- 1
>
��1 2
(
��2 3
type
��3 7
:
��7 8
$str
��9 K
,
��K L
nullable
��M U
:
��U V
false
��W \
)
��\ ]
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 1
,
��1 2
x
��3 4
=>
��5 7
x
��8 9
.
��9 :
Id
��: <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� :
,
��: ;
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
AdressId
��' /
,
��/ 0
principalTable
�� &
:
��& '
$str
��( 0
,
��0 1
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� =
,
��= >
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
	ContactId
��' 0
,
��0 1
principalTable
�� &
:
��& '
$str
��( 2
,
��2 3
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� #
,
��# $
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
Guid
��& *
>
��* +
(
��+ ,
type
��, 0
:
��0 1
$str
��2 D
,
��D E
nullable
��F N
:
��N O
false
��P U
)
��U V
,
��V W
Name
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
type
��0 4
:
��4 5
$str
��6 E
,
��E F
	maxLength
��G P
:
��P Q
$num
��R U
,
��U V
nullable
��W _
:
��_ `
false
��a f
)
��f g
,
��g h
AdressID
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
Guid
��, 0
>
��0 1
(
��1 2
type
��2 6
:
��6 7
$str
��8 J
,
��J K
nullable
��L T
:
��T U
false
��V [
)
��[ \
,
��\ ]
	ContactId
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
Guid
��- 1
>
��1 2
(
��2 3
type
��3 7
:
��7 8
$str
��9 K
,
��K L
nullable
��M U
:
��U V
true
��W [
)
��[ \
,
��\ ]
	CreatedAt
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
DateTime
��- 5
>
��5 6
(
��6 7
type
��7 ;
:
��; <
$str
��= H
,
��H I
nullable
��J R
:
��R S
true
��T X
)
��X Y
,
��Y Z
	UpdatedAt
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
DateTime
��- 5
>
��5 6
(
��6 7
type
��7 ;
:
��; <
$str
��= H
,
��H I
nullable
��J R
:
��R S
true
��T X
)
��X Y
,
��Y Z
	CreatedBy
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
string
��- 3
>
��3 4
(
��4 5
type
��5 9
:
��9 :
$str
��; J
,
��J K
nullable
��L T
:
��T U
true
��V Z
)
��Z [
,
��[ \
	UpdatedBy
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
string
��- 3
>
��3 4
(
��4 5
type
��5 9
:
��9 :
$str
��; J
,
��J K
nullable
��L T
:
��T U
true
��V Z
)
��Z [
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 5
,
��5 6
x
��7 8
=>
��9 ;
x
��< =
.
��= >
Id
��> @
)
��@ A
;
��A B
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� >
,
��> ?
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
AdressID
��' /
,
��/ 0
principalTable
�� &
:
��& '
$str
��( 0
,
��0 1
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� A
,
��A B
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
	ContactId
��' 0
,
��0 1
principalTable
�� &
:
��& '
$str
��( 2
,
��2 3
principalColumn
�� '
:
��' (
$str
��) -
)
��- .
;
��. /
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� $
,
��$ %
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
Guid
��& *
>
��* +
(
��+ ,
type
��, 0
:
��0 1
$str
��2 D
,
��D E
nullable
��F N
:
��N O
false
��P U
)
��U V
,
��V W
	PackageId
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
Guid
��- 1
>
��1 2
(
��2 3
type
��3 7
:
��7 8
$str
��9 K
,
��K L
nullable
��M U
:
��U V
false
��W \
)
��\ ]
,
��] ^
Name
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
type
��0 4
:
��4 5
$str
��6 E
,
��E F
	maxLength
��G P
:
��P Q
$num
��R U
,
��U V
nullable
��W _
:
��_ `
false
��a f
)
��f g
,
��g h
Description
�� 
=
��  !
table
��" '
.
��' (
Column
��( .
<
��. /
string
��/ 5
>
��5 6
(
��6 7
type
��7 ;
:
��; <
$str
��= L
,
��L M
nullable
��N V
:
��V W
false
��X ]
)
��] ^
,
��^ _
Price
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
decimal
��) 0
>
��0 1
(
��1 2
type
��2 6
:
��6 7
$str
��8 G
,
��G H
	precision
��I R
:
��R S
$num
��T V
,
��V W
scale
��X ]
:
��] ^
$num
��_ `
,
��` a
nullable
��b j
:
��j k
false
��l q
)
��q r
,
��r s
Quantity
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
int
��, /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 <
,
��< =
nullable
��> F
:
��F G
false
��H M
)
��M N
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 6
,
��6 7
x
��8 9
=>
��: <
new
��= @
{
��A B
x
��C D
.
��D E
	PackageId
��E N
,
��N O
x
��P Q
.
��Q R
Id
��R T
}
��U V
)
��V W
;
��W X
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� B
,
��B C
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
	PackageId
��' 0
,
��0 1
principalTable
�� &
:
��& '
$str
��( 2
,
��2 3
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� )
,
��) *
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 

CarriersId
�� 
=
��  
table
��! &
.
��& '
Column
��' -
<
��- .
Guid
��. 2
>
��2 3
(
��3 4
type
��4 8
:
��8 9
$str
��: L
,
��L M
nullable
��N V
:
��V W
false
��X ]
)
��] ^
,
��^ _
RelayPointsId
�� !
=
��" #
table
��$ )
.
��) *
Column
��* 0
<
��0 1
Guid
��1 5
>
��5 6
(
��6 7
type
��7 ;
:
��; <
$str
��= O
,
��O P
nullable
��Q Y
:
��Y Z
false
��[ `
)
��` a
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% ;
,
��; <
x
��= >
=>
��? A
new
��B E
{
��F G
x
��H I
.
��I J

CarriersId
��J T
,
��T U
x
��V W
.
��W X
RelayPointsId
��X e
}
��f g
)
��g h
;
��h i
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� H
,
��H I
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '

CarriersId
��' 1
,
��1 2
principalTable
�� &
:
��& '
$str
��( 2
,
��2 3
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� N
,
��N O
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
RelayPointsId
��' 4
,
��4 5
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� (
,
��( )
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
Guid
��& *
>
��* +
(
��+ ,
type
��, 0
:
��0 1
$str
��2 D
,
��D E
nullable
��F N
:
��N O
false
��P U
)
��U V
,
��V W
PricePerKilogram
�� $
=
��% &
table
��' ,
.
��, -
Column
��- 3
<
��3 4
decimal
��4 ;
>
��; <
(
��< =
type
��= A
:
��A B
$str
��C R
,
��R S
	precision
��T ]
:
��] ^
$num
��_ a
,
��a b
scale
��c h
:
��h i
$num
��j k
,
��k l
nullable
��m u
:
��u v
false
��w |
)
��| }
,
��} ~
	MaxWeight
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
decimal
��- 4
>
��4 5
(
��5 6
type
��6 :
:
��: ;
$str
��< K
,
��K L
	precision
��M V
:
��V W
$num
��X Z
,
��Z [
scale
��\ a
:
��a b
$num
��c d
,
��d e
nullable
��f n
:
��n o
false
��p u
)
��u v
,
��v w 
PricePerCubicMeter
�� &
=
��' (
table
��) .
.
��. /
Column
��/ 5
<
��5 6
decimal
��6 =
>
��= >
(
��> ?
type
��? C
:
��C D
$str
��E T
,
��T U
	precision
��V _
:
��_ `
$num
��a c
,
��c d
scale
��e j
:
��j k
$num
��l m
,
��m n
nullable
��o w
:
��w x
false
��y ~
)
��~ 
,�� �
MaxDimension
��  
=
��! "
table
��# (
.
��( )
Column
��) /
<
��/ 0
decimal
��0 7
>
��7 8
(
��8 9
type
��9 =
:
��= >
$str
��? N
,
��N O
	precision
��P Y
:
��Y Z
$num
��[ ]
,
��] ^
scale
��_ d
:
��d e
$num
��f g
,
��g h
nullable
��i q
:
��q r
false
��s x
)
��x y
,
��y z
PricePerKilometer
�� %
=
��& '
table
��( -
.
��- .
Column
��. 4
<
��4 5
decimal
��5 <
>
��< =
(
��= >
type
��> B
:
��B C
$str
��D S
,
��S T
	precision
��U ^
:
��^ _
$num
��` b
,
��b c
scale
��d i
:
��i j
$num
��k l
,
��l m
nullable
��n v
:
��v w
false
��x }
)
��} ~
,
��~ 
RelayPointId
��  
=
��! "
table
��# (
.
��( )
Column
��) /
<
��/ 0
Guid
��0 4
>
��4 5
(
��5 6
type
��6 :
:
��: ;
$str
��< N
,
��N O
nullable
��P X
:
��X Y
false
��Z _
)
��_ `
,
��` a
	CarrierId
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
Guid
��- 1
>
��1 2
(
��2 3
type
��3 7
:
��7 8
$str
��9 K
,
��K L
nullable
��M U
:
��U V
false
��W \
)
��\ ]
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% :
,
��: ;
x
��< =
=>
��> @
x
��A B
.
��B C
Id
��C E
)
��E F
;
��F G
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� F
,
��F G
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
	CarrierId
��' 0
,
��0 1
principalTable
�� &
:
��& '
$str
��( 2
,
��2 3
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� L
,
��L M
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
RelayPointId
��' 3
,
��3 4
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� +
,
��+ ,
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
Guid
��& *
>
��* +
(
��+ ,
type
��, 0
:
��0 1
$str
��2 D
,
��D E
nullable
��F N
:
��N O
false
��P U
)
��U V
,
��V W
	DayOfWeek
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
int
��- 0
>
��0 1
(
��1 2
type
��2 6
:
��6 7
$str
��8 =
,
��= >
nullable
��? G
:
��G H
false
��I N
)
��N O
,
��O P
	StartTime
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
DateTime
��- 5
>
��5 6
(
��6 7
type
��7 ;
:
��; <
$str
��= H
,
��H I
nullable
��J R
:
��R S
false
��T Y
)
��Y Z
,
��Z [
EndTime
�� 
=
�� 
table
�� #
.
��# $
Column
��$ *
<
��* +
DateTime
��+ 3
>
��3 4
(
��4 5
type
��5 9
:
��9 :
$str
��; F
,
��F G
nullable
��H P
:
��P Q
false
��R W
)
��W X
,
��X Y
RelayPointId
��  
=
��! "
table
��# (
.
��( )
Column
��) /
<
��/ 0
Guid
��0 4
>
��4 5
(
��5 6
type
��6 :
:
��: ;
$str
��< N
,
��N O
nullable
��P X
:
��X Y
false
��Z _
)
��_ `
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% =
,
��= >
x
��? @
=>
��A C
x
��D E
.
��E F
Id
��F H
)
��H I
;
��I J
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� O
,
��O P
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
RelayPointId
��' 3
,
��3 4
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� !
,
��! "
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
Guid
��& *
>
��* +
(
��+ ,
type
��, 0
:
��0 1
$str
��2 D
,
��D E
nullable
��F N
:
��N O
false
��P U
)
��U V
,
��V W
OwnerId
�� 
=
�� 
table
�� #
.
��# $
Column
��$ *
<
��* +
Guid
��+ /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 I
,
��I J
nullable
��K S
:
��S T
false
��U Z
)
��Z [
,
��[ \
IsValidated
�� 
=
��  !
table
��" '
.
��' (
Column
��( .
<
��. /
bool
��/ 3
>
��3 4
(
��4 5
type
��5 9
:
��9 :
$str
��; @
,
��@ A
nullable
��B J
:
��J K
false
��L Q
)
��Q R
,
��R S
IsDraft
�� 
=
�� 
table
�� #
.
��# $
Column
��$ *
<
��* +
bool
��+ /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 <
,
��< =
nullable
��> F
:
��F G
false
��H M
)
��M N
,
��N O
IsDelivered
�� 
=
��  !
table
��" '
.
��' (
Column
��( .
<
��. /
bool
��/ 3
>
��3 4
(
��4 5
type
��5 9
:
��9 :
$str
��; @
,
��@ A
nullable
��B J
:
��J K
false
��L Q
)
��Q R
,
��R S
	IsShipper
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
bool
��- 1
>
��1 2
(
��2 3
type
��3 7
:
��7 8
$str
��9 >
,
��> ?
nullable
��@ H
:
��H I
false
��J O
)
��O P
,
��P Q
WithInsurance
�� !
=
��" #
table
��$ )
.
��) *
Column
��* 0
<
��0 1
bool
��1 5
>
��5 6
(
��6 7
type
��7 ;
:
��; <
$str
��= B
,
��B C
nullable
��D L
:
��L M
false
��N S
)
��S T
,
��T U
FromPickupDate
�� "
=
��# $
table
��% *
.
��* +
Column
��+ 1
<
��1 2
DateTime
��2 :
>
��: ;
(
��; <
type
��< @
:
��@ A
$str
��B M
,
��M N
nullable
��O W
:
��W X
false
��Y ^
)
��^ _
,
��_ `
ToPickupDate
��  
=
��! "
table
��# (
.
��( )
Column
��) /
<
��/ 0
DateTime
��0 8
>
��8 9
(
��9 :
type
��: >
:
��> ?
$str
��@ K
,
��K L
nullable
��M U
:
��U V
false
��W \
)
��\ ]
,
��] ^
	ShipperId
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
Guid
��- 1
>
��1 2
(
��2 3
type
��3 7
:
��7 8
$str
��9 K
,
��K L
nullable
��M U
:
��U V
false
��W \
)
��\ ]
,
��] ^
RecipientId
�� 
=
��  !
table
��" '
.
��' (
Column
��( .
<
��. /
Guid
��/ 3
>
��3 4
(
��4 5
type
��5 9
:
��9 :
$str
��; M
,
��M N
nullable
��O W
:
��W X
false
��Y ^
)
��^ _
,
��_ `
InsuranceId
�� 
=
��  !
table
��" '
.
��' (
Column
��( .
<
��. /
Guid
��/ 3
>
��3 4
(
��4 5
type
��5 9
:
��9 :
$str
��; M
,
��M N
nullable
��O W
:
��W X
false
��Y ^
)
��^ _
,
��_ `
	CarrierId
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
Guid
��- 1
>
��1 2
(
��2 3
type
��3 7
:
��7 8
$str
��9 K
,
��K L
nullable
��M U
:
��U V
true
��W [
)
��[ \
,
��\ ]
PickupPointId
�� !
=
��" #
table
��$ )
.
��) *
Column
��* 0
<
��0 1
Guid
��1 5
>
��5 6
(
��6 7
type
��7 ;
:
��; <
$str
��= O
,
��O P
nullable
��Q Y
:
��Y Z
true
��[ _
)
��_ `
,
��` a
RelayPointId
��  
=
��! "
table
��# (
.
��( )
Column
��) /
<
��/ 0
Guid
��0 4
>
��4 5
(
��5 6
type
��6 :
:
��: ;
$str
��< N
,
��N O
nullable
��P X
:
��X Y
true
��Z ^
)
��^ _
,
��_ `
	PackageId
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
Guid
��- 1
>
��1 2
(
��2 3
type
��3 7
:
��7 8
$str
��9 K
,
��K L
nullable
��M U
:
��U V
false
��W \
)
��\ ]
,
��] ^
PaymentMethodId
�� #
=
��$ %
table
��& +
.
��+ ,
Column
��, 2
<
��2 3
Guid
��3 7
>
��7 8
(
��8 9
type
��9 =
:
��= >
$str
��? Q
,
��Q R
nullable
��S [
:
��[ \
false
��] b
)
��b c
,
��c d
	CreatedAt
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
DateTime
��- 5
>
��5 6
(
��6 7
type
��7 ;
:
��; <
$str
��= H
,
��H I
nullable
��J R
:
��R S
true
��T X
)
��X Y
,
��Y Z
	UpdatedAt
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
DateTime
��- 5
>
��5 6
(
��6 7
type
��7 ;
:
��; <
$str
��= H
,
��H I
nullable
��J R
:
��R S
true
��T X
)
��X Y
,
��Y Z
	CreatedBy
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
string
��- 3
>
��3 4
(
��4 5
type
��5 9
:
��9 :
$str
��; J
,
��J K
nullable
��L T
:
��T U
true
��V Z
)
��Z [
,
��[ \
	UpdatedBy
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
string
��- 3
>
��3 4
(
��4 5
type
��5 9
:
��9 :
$str
��; J
,
��J K
nullable
��L T
:
��T U
true
��V Z
)
��Z [
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 3
,
��3 4
x
��5 6
=>
��7 9
x
��: ;
.
��; <
Id
��< >
)
��> ?
;
��? @
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� ?
,
��? @
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
	CarrierId
��' 0
,
��0 1
principalTable
�� &
:
��& '
$str
��( 2
,
��2 3
principalColumn
�� '
:
��' (
$str
��) -
)
��- .
;
��. /
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� C
,
��C D
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
InsuranceId
��' 2
,
��2 3
principalTable
�� &
:
��& '
$str
��( 4
,
��4 5
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� ?
,
��? @
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
	PackageId
��' 0
,
��0 1
principalTable
�� &
:
��& '
$str
��( 2
,
��2 3
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� K
,
��K L
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
PaymentMethodId
��' 6
,
��6 7
principalTable
�� &
:
��& '
$str
��( 8
,
��8 9
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� @
,
��@ A
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
RecipientId
��' 2
,
��2 3
principalTable
�� &
:
��& '
$str
��( 1
,
��1 2
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� >
,
��> ?
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
	ShipperId
��' 0
,
��0 1
principalTable
�� &
:
��& '
$str
��( 1
,
��1 2
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� F
,
��F G
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
PickupPointId
��' 4
,
��4 5
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
)
��- .
;
��. /
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� E
,
��E F
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
RelayPointId
��' 3
,
��3 4
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
)
��- .
;
��. /
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
��  
,
��  !
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
Guid
��& *
>
��* +
(
��+ ,
type
��, 0
:
��0 1
$str
��2 D
,
��D E
nullable
��F N
:
��N O
false
��P U
)
��U V
,
��V W
Amount
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
decimal
��* 1
>
��1 2
(
��2 3
type
��3 7
:
��7 8
$str
��9 H
,
��H I
	precision
��J S
:
��S T
$num
��U W
,
��W X
scale
��Y ^
:
��^ _
$num
��` a
,
��a b
nullable
��c k
:
��k l
false
��m r
)
��r s
,
��s t
PaymentDate
�� 
=
��  !
table
��" '
.
��' (
Column
��( .
<
��. /
DateTime
��/ 7
>
��7 8
(
��8 9
type
��9 =
:
��= >
$str
��? J
,
��J K
nullable
��L T
:
��T U
false
��V [
)
��[ \
,
��\ ]
PaymentMethodId
�� #
=
��$ %
table
��& +
.
��+ ,
Column
��, 2
<
��2 3
Guid
��3 7
>
��7 8
(
��8 9
type
��9 =
:
��= >
$str
��? Q
,
��Q R
nullable
��S [
:
��[ \
false
��] b
)
��b c
,
��c d

ShipmentId
�� 
=
��  
table
��! &
.
��& '
Column
��' -
<
��- .
Guid
��. 2
>
��2 3
(
��3 4
type
��4 8
:
��8 9
$str
��: L
,
��L M
nullable
��N V
:
��V W
false
��X ]
)
��] ^
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 2
,
��2 3
x
��4 5
=>
��6 8
x
��9 :
.
��: ;
Id
��; =
)
��= >
;
��> ?
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� J
,
��J K
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
PaymentMethodId
��' 6
,
��6 7
principalTable
�� &
:
��& '
$str
��( 8
,
��8 9
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� @
,
��@ A
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '

ShipmentId
��' 1
,
��1 2
principalTable
�� &
:
��& '
$str
��( 3
,
��3 4
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� 
,
�� 
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
Guid
��& *
>
��* +
(
��+ ,
type
��, 0
:
��0 1
$str
��2 D
,
��D E
nullable
��F N
:
��N O
false
��P U
)
��U V
,
��V W
Name
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
type
��0 4
:
��4 5
$str
��6 E
,
��E F
	maxLength
��G P
:
��P Q
$num
��R U
,
��U V
nullable
��W _
:
��_ `
false
��a f
)
��f g
,
��g h
Url
�� 
=
�� 
table
�� 
.
��  
Column
��  &
<
��& '
string
��' -
>
��- .
(
��. /
type
��/ 3
:
��3 4
$str
��5 D
,
��D E
	maxLength
��F O
:
��O P
$num
��Q T
,
��T U
nullable
��V ^
:
��^ _
false
��` e
)
��e f
,
��f g

ShipmentId
�� 
=
��  
table
��! &
.
��& '
Column
��' -
<
��- .
Guid
��. 2
>
��2 3
(
��3 4
type
��4 8
:
��8 9
$str
��: L
,
��L M
nullable
��N V
:
��V W
true
��X \
)
��\ ]
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 0
,
��0 1
x
��2 3
=>
��4 6
x
��7 8
.
��8 9
Id
��9 ;
)
��; <
;
��< =
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� >
,
��> ?
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '

ShipmentId
��' 1
,
��1 2
principalTable
�� &
:
��& '
$str
��( 3
,
��3 4
principalColumn
�� '
:
��' (
$str
��) -
)
��- .
;
��. /
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� :
,
��: ;
table
�� 
:
�� 
$str
�� *
,
��* +
column
�� 
:
�� 
$str
�� '
)
��' (
;
��( )
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� ,
,
��, -
table
�� 
:
�� 
$str
�� !
,
��! "
column
�� 
:
�� 
$str
�� "
)
��" #
;
��# $
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� -
,
��- .
table
�� 
:
�� 
$str
�� !
,
��! "
column
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� .
,
��. /
table
�� 
:
�� 
$str
�� #
,
��# $
column
�� 
:
�� 
$str
�� "
)
��" #
;
��# $
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� /
,
��/ 0
table
�� 
:
�� 
$str
�� #
,
��# $
column
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 3
,
��3 4
table
�� 
:
�� 
$str
�� !
,
��! "
column
�� 
:
�� 
$str
�� )
)
��) *
;
��* +
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� .
,
��. /
table
�� 
:
�� 
$str
�� !
,
��! "
column
�� 
:
�� 
$str
�� $
)
��$ %
;
��% &
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� +
,
��+ ,
table
�� 
:
�� 
$str
��  
,
��  !
column
�� 
:
�� 
$str
�� "
)
��" #
;
��# $
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� ,
,
��, -
table
�� 
:
�� 
$str
��  
,
��  !
column
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� ,
,
��, -
table
�� 
:
�� 
$str
�� 
,
��  
column
�� 
:
�� 
$str
�� $
)
��$ %
;
��% &
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 5
,
��5 6
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 8
,
��8 9
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
�� &
)
��& '
;
��' (
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� /
,
��/ 0
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� "
)
��" #
;
��# $
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 0
,
��0 1
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� ;
,
��; <
table
�� 
:
�� 
$str
�� ,
,
��, -
column
�� 
:
�� 
$str
�� &
)
��& '
;
��' (
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� .
,
��. /
table
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 0
,
��0 1
table
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
�� %
)
��% &
;
��& '
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� .
,
��. /
table
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 4
,
��4 5
table
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
�� )
)
��) *
;
��* +
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
�� '
)
��' (
;
��( )
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 0
,
��0 1
table
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
�� %
)
��% &
;
��& '
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 1
,
��1 2
table
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
�� &
)
��& '
;
��' (
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� .
,
��. /
table
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 	
	protected
�� 
override
�� 
void
�� 
Down
��  $
(
��$ %
MigrationBuilder
��% 5
migrationBuilder
��6 F
)
��F G
{
�� 	
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� )
)
��) *
;
��* +
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� $
)
��$ %
;
��% &
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
��  
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� +
)
��+ ,
;
��, -
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� "
)
��" #
;
��# $
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� &
)
��& '
;
��' (
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
��  
;
��  !
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
��  
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
��  
)
��  !
;
��! "
}
�� 	
}
�� 
}�� ��
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
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� E
,
��E F
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� (
,
��( )
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
UserId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
type
��2 6
:
��6 7
$str
��8 J
,
��J K
nullable
��L T
:
��T U
false
��V [
)
��[ \
,
��\ ]
LoginProvider
�� !
=
��" #
table
��$ )
.
��) *
Column
��* 0
<
��0 1
string
��1 7
>
��7 8
(
��8 9
type
��9 =
:
��= >
$str
��? N
,
��N O
nullable
��P X
:
��X Y
false
��Z _
)
��_ `
,
��` a
Name
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
type
��0 4
:
��4 5
$str
��6 E
,
��E F
nullable
��G O
:
��O P
false
��Q V
)
��V W
,
��W X
Value
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
string
��) /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 F
,
��F G
nullable
��H P
:
��P Q
true
��R V
)
��V W
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% :
,
��: ;
x
��< =
=>
��> @
new
��A D
{
��E F
x
��G H
.
��H I
UserId
��I O
,
��O P
x
��Q R
.
��R S
LoginProvider
��S `
,
��` a
x
��b c
.
��c d
Name
��d h
}
��i j
)
��j k
;
��k l
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� F
,
��F G
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� %
,
��% &
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� (
,
��( )
unique
�� 
:
�� 
true
�� 
,
�� 
filter
�� 
:
�� 
$str
�� 6
)
��6 7
;
��7 8
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 1
,
��1 2
table
�� 
:
�� 
$str
�� (
,
��( )
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� "
,
��" #
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� )
)
��) *
;
��* +
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� %
,
��% &
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� ,
,
��, -
unique
�� 
:
�� 
true
�� 
,
�� 
filter
�� 
:
�� 
$str
�� :
)
��: ;
;
��; <
}
�� 	
	protected
�� 
override
�� 
void
�� 
Down
��  $
(
��$ %
MigrationBuilder
��% 5
migrationBuilder
��6 F
)
��F G
{
�� 	
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� '
)
��' (
;
��( )
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 	
}
�� 
}�� �]
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
�� 
:
�� 
typeof
�� "
(
��" #
Guid
��# '
)
��' (
,
��( )
oldType
�� 
:
�� 
$str
�� +
)
��+ ,
;
��, -
migrationBuilder
�� 
.
�� 
AlterColumn
�� (
<
��( )
string
��) /
>
��/ 0
(
��0 1
name
�� 
:
�� 
$str
�� 
,
�� 
table
�� 
:
�� 
$str
�� )
,
��) *
type
�� 
:
�� 
$str
�� %
,
��% &
nullable
�� 
:
�� 
false
�� 
,
��  

oldClrType
�� 
:
�� 
typeof
�� "
(
��" #
Guid
��# '
)
��' (
,
��( )
oldType
�� 
:
�� 
$str
�� +
)
��+ ,
;
��, -
migrationBuilder
�� 
.
�� 
AlterColumn
�� (
<
��( )
string
��) /
>
��/ 0
(
��0 1
name
�� 
:
�� 
$str
�� 
,
�� 
table
�� 
:
�� 
$str
�� )
,
��) *
type
�� 
:
�� 
$str
�� %
,
��% &
nullable
�� 
:
�� 
false
�� 
,
��  

oldClrType
�� 
:
�� 
typeof
�� "
(
��" #
Guid
��# '
)
��' (
,
��( )
oldType
�� 
:
�� 
$str
�� +
)
��+ ,
;
��, -
migrationBuilder
�� 
.
�� 
AlterColumn
�� (
<
��( )
string
��) /
>
��/ 0
(
��0 1
name
�� 
:
�� 
$str
�� 
,
�� 
table
�� 
:
�� 
$str
�� $
,
��$ %
type
�� 
:
�� 
$str
�� %
,
��% &
nullable
�� 
:
�� 
false
�� 
,
��  

oldClrType
�� 
:
�� 
typeof
�� "
(
��" #
Guid
��# '
)
��' (
,
��( )
oldType
�� 
:
�� 
$str
�� +
)
��+ ,
;
��, -
migrationBuilder
�� 
.
�� 
AlterColumn
�� (
<
��( )
string
��) /
>
��/ 0
(
��0 1
name
�� 
:
�� 
$str
�� 
,
�� 
table
�� 
:
�� 
$str
�� )
,
��) *
type
�� 
:
�� 
$str
�� %
,
��% &
nullable
�� 
:
�� 
false
�� 
,
��  

oldClrType
�� 
:
�� 
typeof
�� "
(
��" #
Guid
��# '
)
��' (
,
��( )
oldType
�� 
:
�� 
$str
�� +
)
��+ ,
;
��, -
}
�� 	
}
�� 
}�� ��
�C:\Developpement\GoColis\GoColis.Shipping\GoColis.Shipping.Infrastructure\Migrations\20230402031143_AddUserToPersonsAndCarrier.cs
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
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
�� )
,
��) *
principalTable
�� 
:
�� 
$str
��  0
,
��0 1
principalColumn
�� 
:
��  
$str
��! %
)
��% &
;
��& '
}
�� 	
	protected
�� 
override
�� 
void
�� 
Down
��  $
(
��$ %
MigrationBuilder
��% 5
migrationBuilder
��6 F
)
��F G
{
�� 	
migrationBuilder
�� 
.
�� 
DropForeignKey
�� +
(
��+ ,
name
�� 
:
�� 
$str
�� 6
,
��6 7
table
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
DropForeignKey
�� +
(
��+ ,
name
�� 
:
�� 
$str
�� 5
,
��5 6
table
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
DropForeignKey
�� +
(
��+ ,
name
�� 
:
�� 
$str
�� 5
,
��5 6
table
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
DropForeignKey
�� +
(
��+ ,
name
�� 
:
�� 
$str
�� ;
,
��; <
table
�� 
:
�� 
$str
�� "
)
��" #
;
��# $
migrationBuilder
�� 
.
�� 
DropForeignKey
�� +
(
��+ ,
name
�� 
:
�� 
$str
�� C
,
��C D
table
�� 
:
�� 
$str
�� "
)
��" #
;
��# $
migrationBuilder
�� 
.
�� 
	DropIndex
�� &
(
��& '
name
�� 
:
�� 
$str
�� )
,
��) *
table
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
	DropIndex
�� &
(
��& '
name
�� 
:
�� 
$str
�� *
,
��* +
table
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 

DropColumn
�� '
(
��' (
name
�� 
:
�� 
$str
�� !
,
��! "
table
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 

DropColumn
�� '
(
��' (
name
�� 
:
�� 
$str
�� !
,
��! "
table
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 

DropColumn
�� '
(
��' (
name
�� 
:
�� 
$str
�� !
,
��! "
table
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 

DropColumn
�� '
(
��' (
name
�� 
:
�� 
$str
�� !
,
��! "
table
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 

DropColumn
�� '
(
��' (
name
�� 
:
�� 
$str
�� 
,
�� 
table
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 

DropColumn
�� '
(
��' (
name
�� 
:
�� 
$str
�� 
,
�� 
table
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
AlterColumn
�� (
<
��( )
Guid
��) -
>
��- .
(
��. /
name
�� 
:
�� 
$str
�� '
,
��' (
table
�� 
:
�� 
$str
�� "
,
��" #
type
�� 
:
�� 
$str
�� (
,
��( )
nullable
�� 
:
�� 
false
�� 
,
��  
defaultValue
�� 
:
�� 
new
�� !
Guid
��" &
(
��& '
$str
��' M
)
��M N
,
��N O

oldClrType
�� 
:
�� 
typeof
�� "
(
��" #
Guid
��# '
)
��' (
,
��( )
oldType
�� 
:
�� 
$str
�� +
,
��+ ,
oldNullable
�� 
:
�� 
true
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
AlterColumn
�� (
<
��( )
Guid
��) -
>
��- .
(
��. /
name
�� 
:
�� 
$str
�� #
,
��# $
table
�� 
:
�� 
$str
�� "
,
��" #
type
�� 
:
�� 
$str
�� (
,
��( )
nullable
�� 
:
�� 
false
�� 
,
��  
defaultValue
�� 
:
�� 
new
�� !
Guid
��" &
(
��& '
$str
��' M
)
��M N
,
��N O

oldClrType
�� 
:
�� 
typeof
�� "
(
��" #
Guid
��# '
)
��' (
,
��( )
oldType
�� 
:
�� 
$str
�� +
,
��+ ,
oldNullable
�� 
:
�� 
true
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
AlterColumn
�� (
<
��( )
Guid
��) -
>
��- .
(
��. /
name
�� 
:
�� 
$str
�� !
,
��! "
table
�� 
:
�� 
$str
��  
,
��  !
type
�� 
:
�� 
$str
�� (
,
��( )
nullable
�� 
:
�� 
false
�� 
,
��  
defaultValue
�� 
:
�� 
new
�� !
Guid
��" &
(
��& '
$str
��' M
)
��M N
,
��N O

oldClrType
�� 
:
�� 
typeof
�� "
(
��" #
Guid
��# '
)
��' (
,
��( )
oldType
�� 
:
�� 
$str
�� +
,
��+ ,
oldNullable
�� 
:
�� 
true
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
AddForeignKey
�� *
(
��* +
name
�� 
:
�� 
$str
�� 5
,
��5 6
table
�� 
:
�� 
$str
��  
,
��  !
column
�� 
:
�� 
$str
�� #
,
��# $
principalTable
�� 
:
�� 
$str
��  *
,
��* +
principalColumn
�� 
:
��  
$str
��! %
,
��% &
onDelete
�� 
:
�� 
ReferentialAction
�� +
.
��+ ,
Cascade
��, 3
)
��3 4
;
��4 5
migrationBuilder
�� 
.
�� 
AddForeignKey
�� *
(
��* +
name
�� 
:
�� 
$str
�� ;
,
��; <
table
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
�� %
,
��% &
principalTable
�� 
:
�� 
$str
��  ,
,
��, -
principalColumn
�� 
:
��  
$str
��! %
,
��% &
onDelete
�� 
:
�� 
ReferentialAction
�� +
.
��+ ,
Cascade
��, 3
)
��3 4
;
��4 5
migrationBuilder
�� 
.
�� 
AddForeignKey
�� *
(
��* +
name
�� 
:
�� 
$str
�� C
,
��C D
table
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
�� )
,
��) *
principalTable
�� 
:
�� 
$str
��  0
,
��0 1
principalColumn
�� 
:
��  
$str
��! %
,
��% &
onDelete
�� 
:
�� 
ReferentialAction
�� +
.
��+ ,
Cascade
��, 3
)
��3 4
;
��4 5
}
�� 	
}
�� 
}�� �
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
}99 �
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
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 1
,
��1 2
table
�� 
:
�� 
$str
�� '
,
��' (
column
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 7
,
��7 8
table
�� 
:
�� 
$str
�� (
,
��( )
column
�� 
:
�� 
$str
�� &
)
��& '
;
��' (
}
�� 	
	protected
�� 
override
�� 
void
�� 
Down
��  $
(
��$ %
MigrationBuilder
��% 5
migrationBuilder
��6 F
)
��F G
{
�� 	
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� &
)
��& '
;
��' (
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� '
)
��' (
;
��( )
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� $
,
��$ %
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� $
,
��$ %
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� $
,
��$ %
	keyColumn
�� 
:
�� 
$str
�� 
,
��  
keyValue
�� 
:
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
)
��J K
;
��K L
}
�� 	
}
�� 
}�� ��
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
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 
AddPrimaryKey
�� *
(
��* +
name
�� 
:
�� 
$str
�� *
,
��* +
table
�� 
:
�� 
$str
�� (
,
��( )
columns
�� 
:
�� 
new
�� 
[
�� 
]
�� 
{
��  
$str
��! /
,
��/ 0
$str
��1 9
}
��: ;
)
��; <
;
��< =
migrationBuilder
�� 
.
�� 

InsertData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )
columns
�� 
:
�� 
new
�� 
[
�� 
]
�� 
{
��  
$str
��! /
,
��/ 0
$str
��1 9
}
��: ;
,
��; <
values
�� 
:
�� 
new
�� 
object
�� "
[
��" #
,
��# $
]
��$ %
{
�� 
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 1
,
��1 2
table
�� 
:
�� 
$str
�� (
,
��( )
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
}
�� 	
	protected
�� 
override
�� 
void
�� 
Down
��  $
(
��$ %
MigrationBuilder
��% 5
migrationBuilder
��6 F
)
��F G
{
�� 	
migrationBuilder
�� 
.
�� 
DropPrimaryKey
�� +
(
��+ ,
name
�� 
:
�� 
$str
�� *
,
��* +
table
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropIndex
�� &
(
��& '
name
�� 
:
�� 
$str
�� 1
,
��1 2
table
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 
AddPrimaryKey
�� *
(
��* +
name
�� 
:
�� 
$str
�� *
,
��* +
table
�� 
:
�� 
$str
�� (
,
��( )
columns
�� 
:
�� 
new
�� 
[
�� 
]
�� 
{
��  
$str
��! )
,
��) *
$str
��+ 9
}
��: ;
)
��; <
;
��< =
migrationBuilder
�� 
.
�� 

InsertData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )
columns
�� 
:
�� 
new
�� 
[
�� 
]
�� 
{
��  
$str
��! /
,
��/ 0
$str
��1 9
}
��: ;
,
��; <
values
�� 
:
�� 
new
�� 
object
�� "
[
��" #
,
��# $
]
��$ %
{
�� 
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 7
,
��7 8
table
�� 
:
�� 
$str
�� (
,
��( )
column
�� 
:
�� 
$str
�� &
)
��& '
;
��' (
}
�� 	
}
�� 
}�� ��
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
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
}
�� 	
	protected
�� 
override
�� 
void
�� 
Down
��  $
(
��$ %
MigrationBuilder
��% 5
migrationBuilder
��6 F
)
��F G
{
�� 	
migrationBuilder
�� 
.
�� 

InsertData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )
columns
�� 
:
�� 
new
�� 
[
�� 
]
�� 
{
��  
$str
��! /
,
��/ 0
$str
��1 9
}
��: ;
,
��; <
values
�� 
:
�� 
new
�� 
object
�� "
[
��" #
,
��# $
]
��$ %
{
�� 
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� !
(
��! "
$str
��" H
)
��H I
}
��J K
,
��K L
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
,
��L M
{
�� 
$num
�� 
,
�� 
new
�� 
Guid
�� "
(
��" #
$str
��# I
)
��I J
}
��K L
}
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �
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
}33 ��
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
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* +
,
��+ ,
new
��- 0
Guid
��1 5
(
��5 6
$str
��6 \
)
��\ ]
}
��^ _
)
��_ `
;
��` a
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
migrationBuilder
�� 
.
�� 

DeleteData
�� '
(
��' (
table
�� 
:
�� 
$str
�� (
,
��( )

keyColumns
�� 
:
�� 
new
�� 
[
��  
]
��  !
{
��" #
$str
��$ 2
,
��2 3
$str
��4 <
}
��= >
,
��> ?
	keyValues
�� 
:
�� 
new
�� 
object
�� %
[
��% &
]
��& '
{
��( )
$num
��* ,
,
��, -
new
��. 1
Guid
��2 6
(
��6 7
$str
��7 ]
)
��] ^
}
��_ `
)
��` a
;
��a b
}
�� 	
}
�� 
}�� 