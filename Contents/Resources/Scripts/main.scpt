FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �{ Copyright (C) 2018 Tetsuro KURITA

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Foobar is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar.  If not, see <http://www.gnu.org/licenses/>      � 	 	�   C o p y r i g h t   ( C )   2 0 1 8   T e t s u r o   K U R I T A 
 
 T h i s   p r o g r a m   i s   f r e e   s o f t w a r e :   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y 
 i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y 
 t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   e i t h e r   v e r s i o n   3   o f   t h e   L i c e n s e ,   o r 
 ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 
 F o o b a r   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l , 
 b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f 
 M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e 
 G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e 
 a l o n g   w i t h   F o o b a r .     I f   n o t ,   s e e   < h t t p : / / w w w . g n u . o r g / l i c e n s e s / >     
  
 l     ��������  ��  ��        j     �� 
�� 
pnam  m        �    X P r e f e r e n c e s      l     ��������  ��  ��        l          x    
��  ��    1      ��
�� 
ascr  �� ��
�� 
minv  m         �    2 . 3��     
 OS X 10.9     �      O S   X   1 0 . 9      x   
 ��  ����     2   ��
�� 
osax��     ! " ! l     ��������  ��  ��   "  # $ # l      �� % &��   %��!@references
Home page || http://www.script-factory.net/XModules/XPreferences/en/index.html
ChangeLog || http://www.script-factory.net/XModules/XPreferences/changelog.html
Repository || https://github.com/tkurita/XPreferences.scptd
Update preferences script object || #Updatepreferencescriptobject

@title XPreferences Reference
* Version : 1.0.2
* Author : Tetsuro KURITA ((<scriptfactory@mac.com>))
* Requirements : OS X 10.9 or later
* ((<Home page>)) || ((<ChangeLog>)) || ((<Repository>)) 

== SynopsisXPreferences is an AppleScript Library to help saving and loading settings(preferences) of an AppleScript application.
Because AppleScript applications (droplets, applets and script files) can keep values in properties after the termination of the execution, properties can be used to store settings. But values of properties will be initialized when the script is recompiled to fix bugs or to implement new functions.
Therefore, even in the case of AppleScript, it is useful to save settings in an external file.
XPreferences help to load and save a user defined script object to store settings (preferences script object) into "~/Library/Preferences" folder.

Also XPreferences support to update the preferences script object. When your AppleScript application is updated and the specification of the preferences script object is changed, XPreferences help to move values from old preferences script object to new one. (see ((<Update preferences script object>)) )

== How to Use
(1) Define a script object to store settings (prefereces script object).
(2) Pass the script to XPreferences by using ((<set_default_prefs>)).
(3) Load saved setttings as a script object (preferences script object).
(4) Obtain values from the preferences script object.
(5) Do your task.
(6) Update values in the preferences script object before termination of your script.
(7) Save the preferences script object by using ((<save_current_prefs>)).
    & � ' ', ! @ r e f e r e n c e s 
 H o m e   p a g e   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X P r e f e r e n c e s / e n / i n d e x . h t m l 
 C h a n g e L o g   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X P r e f e r e n c e s / c h a n g e l o g . h t m l 
 R e p o s i t o r y   | |   h t t p s : / / g i t h u b . c o m / t k u r i t a / X P r e f e r e n c e s . s c p t d 
 U p d a t e   p r e f e r e n c e s   s c r i p t   o b j e c t   | |   # U p d a t e p r e f e r e n c e s c r i p t o b j e c t 
 
 @ t i t l e   X P r e f e r e n c e s   R e f e r e n c e 
 *   V e r s i o n   :   1 . 0 . 2 
 *   A u t h o r   :   T e t s u r o   K U R I T A   ( ( < s c r i p t f a c t o r y @ m a c . c o m > ) ) 
 *   R e q u i r e m e n t s   :   O S   X   1 0 . 9   o r   l a t e r 
 *   ( ( < H o m e   p a g e > ) )   | |   ( ( < C h a n g e L o g > ) )   | |   ( ( < R e p o s i t o r y > ) )   
 
 = =   S y n o p s i s  X P r e f e r e n c e s   i s   a n   A p p l e S c r i p t   L i b r a r y   t o   h e l p   s a v i n g   a n d   l o a d i n g   s e t t i n g s ( p r e f e r e n c e s )   o f   a n   A p p l e S c r i p t   a p p l i c a t i o n . 
  B e c a u s e   A p p l e S c r i p t   a p p l i c a t i o n s   ( d r o p l e t s ,   a p p l e t s   a n d   s c r i p t   f i l e s )   c a n   k e e p   v a l u e s   i n   p r o p e r t i e s   a f t e r   t h e   t e r m i n a t i o n   o f   t h e   e x e c u t i o n ,   p r o p e r t i e s   c a n   b e   u s e d   t o   s t o r e   s e t t i n g s .   B u t   v a l u e s   o f   p r o p e r t i e s   w i l l   b e   i n i t i a l i z e d   w h e n   t h e   s c r i p t   i s   r e c o m p i l e d   t o   f i x   b u g s   o r   t o   i m p l e m e n t   n e w   f u n c t i o n s . 
  T h e r e f o r e ,   e v e n   i n   t h e   c a s e   o f   A p p l e S c r i p t ,   i t   i s   u s e f u l   t o   s a v e   s e t t i n g s   i n   a n   e x t e r n a l   f i l e . 
  X P r e f e r e n c e s   h e l p   t o   l o a d   a n d   s a v e   a   u s e r   d e f i n e d   s c r i p t   o b j e c t   t o   s t o r e   s e t t i n g s   ( p r e f e r e n c e s   s c r i p t   o b j e c t )   i n t o   " ~ / L i b r a r y / P r e f e r e n c e s "   f o l d e r . 
  
 A l s o   X P r e f e r e n c e s   s u p p o r t   t o   u p d a t e   t h e   p r e f e r e n c e s   s c r i p t   o b j e c t .   W h e n   y o u r   A p p l e S c r i p t   a p p l i c a t i o n   i s   u p d a t e d   a n d   t h e   s p e c i f i c a t i o n   o f   t h e   p r e f e r e n c e s   s c r i p t   o b j e c t   i s   c h a n g e d ,   X P r e f e r e n c e s   h e l p   t o   m o v e   v a l u e s   f r o m   o l d   p r e f e r e n c e s   s c r i p t   o b j e c t   t o   n e w   o n e .   ( s e e   ( ( < U p d a t e   p r e f e r e n c e s   s c r i p t   o b j e c t > ) )   ) 
 
 = =   H o w   t o   U s e 
 ( 1 )   D e f i n e   a   s c r i p t   o b j e c t   t o   s t o r e   s e t t i n g s   ( p r e f e r e c e s   s c r i p t   o b j e c t ) . 
 ( 2 )   P a s s   t h e   s c r i p t   t o   X P r e f e r e n c e s   b y   u s i n g   ( ( < s e t _ d e f a u l t _ p r e f s > ) ) . 
 ( 3 )   L o a d   s a v e d   s e t t t i n g s   a s   a   s c r i p t   o b j e c t   ( p r e f e r e n c e s   s c r i p t   o b j e c t ) . 
 ( 4 )   O b t a i n   v a l u e s   f r o m   t h e   p r e f e r e n c e s   s c r i p t   o b j e c t . 
 ( 5 )   D o   y o u r   t a s k . 
 ( 6 )   U p d a t e   v a l u e s   i n   t h e   p r e f e r e n c e s   s c r i p t   o b j e c t   b e f o r e   t e r m i n a t i o n   o f   y o u r   s c r i p t . 
 ( 7 )   S a v e   t h e   p r e f e r e n c e s   s c r i p t   o b j e c t   b y   u s i n g   ( ( < s a v e _ c u r r e n t _ p r e f s > ) ) . 
 $  ( ) ( l     ��������  ��  ��   )  * + * l      �� , -��   ,��!
== Example
@example
use scripting additionsuse XPreferences : script "XPreferences"on setup()	script XPreferencesSampleSettings		property parent : AppleScript -- reduce size of the preferences file.		property version : "1.0" -- optional		property _msg : "hello"				on message()			return my _msg		end message				on set_message(v)			set my _msg to v			return me		end set_message				on update(old_settings) -- optional			set my _msg to old_settings's _msg		end update	end script		tell XPreferences		set_default_prefs(XPreferencesSampleSettings)	end tellend setupon run	setup()	set prefs to XPreferences's load()	display alert (prefs's message())	prefs's set_message("Hi")	XPreferences's save_current_prefs()end run
@end

== Update preferences script object

To allow to update preference script object (e.g. adding new settings), the preference script object has a "version" property and &quot;update&quot; method.

If the default preferences script object passed to ((<set_default_prefs>)) has &quot;version&quot; property and its value is greather than the value of the &quot;version&quot; property of loaded preferences script object, preferences script object will be updated with following steps.

(1) Copy the default preferences script object.
(2) The &quot;update&quot; handler of new preferences object will recieve old loaded preferences script object.
(3) Copy values form old loaded preferences script object by your self in the update handler.
    - � . .� ! 
 = =   E x a m p l e 
 @ e x a m p l e 
 u s e   s c r i p t i n g   a d d i t i o n s  u s e   X P r e f e r e n c e s   :   s c r i p t   " X P r e f e r e n c e s "   o n   s e t u p ( )  	 s c r i p t   X P r e f e r e n c e s S a m p l e S e t t i n g s  	 	 p r o p e r t y   p a r e n t   :   A p p l e S c r i p t   - -   r e d u c e   s i z e   o f   t h e   p r e f e r e n c e s   f i l e .  	 	 p r o p e r t y   v e r s i o n   :   " 1 . 0 "   - -   o p t i o n a l  	 	 p r o p e r t y   _ m s g   :   " h e l l o "  	 	  	 	 o n   m e s s a g e ( )  	 	 	 r e t u r n   m y   _ m s g  	 	 e n d   m e s s a g e  	 	  	 	 o n   s e t _ m e s s a g e ( v )  	 	 	 s e t   m y   _ m s g   t o   v  	 	 	 r e t u r n   m e  	 	 e n d   s e t _ m e s s a g e  	 	  	 	 o n   u p d a t e ( o l d _ s e t t i n g s )   - -   o p t i o n a l  	 	 	 s e t   m y   _ m s g   t o   o l d _ s e t t i n g s ' s   _ m s g  	 	 e n d   u p d a t e  	 e n d   s c r i p t  	  	 t e l l   X P r e f e r e n c e s  	 	 s e t _ d e f a u l t _ p r e f s ( X P r e f e r e n c e s S a m p l e S e t t i n g s )  	 e n d   t e l l  e n d   s e t u p   o n   r u n  	 s e t u p ( )  	 s e t   p r e f s   t o   X P r e f e r e n c e s ' s   l o a d ( )  	 d i s p l a y   a l e r t   ( p r e f s ' s   m e s s a g e ( ) )  	 p r e f s ' s   s e t _ m e s s a g e ( " H i " )  	 X P r e f e r e n c e s ' s   s a v e _ c u r r e n t _ p r e f s ( )  e n d   r u n 
 @ e n d 
 
 = =   U p d a t e   p r e f e r e n c e s   s c r i p t   o b j e c t 
 
 T o   a l l o w   t o   u p d a t e   p r e f e r e n c e   s c r i p t   o b j e c t   ( e . g .   a d d i n g   n e w   s e t t i n g s ) ,   t h e   p r e f e r e n c e   s c r i p t   o b j e c t   h a s   a   " v e r s i o n "   p r o p e r t y   a n d   & q u o t ; u p d a t e & q u o t ;   m e t h o d . 
 
 I f   t h e   d e f a u l t   p r e f e r e n c e s   s c r i p t   o b j e c t   p a s s e d   t o   ( ( < s e t _ d e f a u l t _ p r e f s > ) )   h a s   & q u o t ; v e r s i o n & q u o t ;   p r o p e r t y   a n d   i t s   v a l u e   i s   g r e a t h e r   t h a n   t h e   v a l u e   o f   t h e   & q u o t ; v e r s i o n & q u o t ;   p r o p e r t y   o f   l o a d e d   p r e f e r e n c e s   s c r i p t   o b j e c t ,   p r e f e r e n c e s   s c r i p t   o b j e c t   w i l l   b e   u p d a t e d   w i t h   f o l l o w i n g   s t e p s . 
 
 ( 1 )   C o p y   t h e   d e f a u l t   p r e f e r e n c e s   s c r i p t   o b j e c t . 
 ( 2 )   T h e   & q u o t ; u p d a t e & q u o t ;   h a n d l e r   o f   n e w   p r e f e r e n c e s   o b j e c t   w i l l   r e c i e v e   o l d   l o a d e d   p r e f e r e n c e s   s c r i p t   o b j e c t . 
 ( 3 )   C o p y   v a l u e s   f o r m   o l d   l o a d e d   p r e f e r e n c e s   s c r i p t   o b j e c t   b y   y o u r   s e l f   i n   t h e   u p d a t e   h a n d l e r . 
 +  / 0 / l     ��������  ��  ��   0  1 2 1 j    �� 3�� 0 _current_prefs   3 m    ��
�� 
msng 2  4 5 4 j    �� 6�� 0 _pref_folder   6 m    ��
�� 
msng 5  7 8 7 j    �� 9�� 0 _default_prefs   9 m    ��
�� 
msng 8  : ; : j    !�� <�� 0 
_pref_name   < m     ��
�� 
msng ;  = > = l     ��������  ��  ��   >  ? @ ? l      �� A B��   A � �!
== Methods

@abstruct
Set a default preferences as a script object.
@description
You should obtain settings through handlers definded in the script object.
@param a_script (script) : a script object storing default preferences
@result me
    B � C C� ! 
 = =   M e t h o d s 
 
 @ a b s t r u c t 
 S e t   a   d e f a u l t   p r e f e r e n c e s   a s   a   s c r i p t   o b j e c t . 
 @ d e s c r i p t i o n 
 Y o u   s h o u l d   o b t a i n   s e t t i n g s   t h r o u g h   h a n d l e r s   d e f i n d e d   i n   t h e   s c r i p t   o b j e c t . 
 @ p a r a m   a _ s c r i p t   ( s c r i p t )   :   a   s c r i p t   o b j e c t   s t o r i n g   d e f a u l t   p r e f e r e n c e s 
 @ r e s u l t   m e 
 @  D E D i   " % F G F I      �� H���� 0 set_default_prefs   H  I�� I o      ���� 0 a_script  ��  ��   G k      J J  K L K r      M N M o     ���� 0 a_script   N n      O P O o    ���� 0 _default_prefs   P  f     L  Q�� Q L     R R  f    ��   E  S T S l     ��������  ��  ��   T  U V U l      �� W X��   W � �!@abstruct
Set a file name of a preference file.
@description
If calling this method is omitted, the name of the default preferences object will be used.
@param a_script (script) : a script object storing default preferences
@result me
    X � Y Y� ! @ a b s t r u c t 
 S e t   a   f i l e   n a m e   o f   a   p r e f e r e n c e   f i l e . 
 @ d e s c r i p t i o n 
 I f   c a l l i n g   t h i s   m e t h o d   i s   o m i t t e d ,   t h e   n a m e   o f   t h e   d e f a u l t   p r e f e r e n c e s   o b j e c t   w i l l   b e   u s e d . 
 @ p a r a m   a _ s c r i p t   ( s c r i p t )   :   a   s c r i p t   o b j e c t   s t o r i n g   d e f a u l t   p r e f e r e n c e s 
 @ r e s u l t   m e 
 V  Z [ Z i   & ) \ ] \ I      �� ^���� 0 set_pref_name   ^  _�� _ o      ���� 
0 a_name  ��  ��   ] k      ` `  a b a r      c d c o     ���� 
0 a_name   d n      e f e o    ���� 0 
_pref_name   f  f     b  g�� g L     h h  f    ��   [  i j i l     ��������  ��  ��   j  k l k l      �� m n��   m h b!@abstruct
Load saved prefereces script object.
@result script : loaded preferences script object
    n � o o � ! @ a b s t r u c t 
 L o a d   s a v e d   p r e f e r e c e s   s c r i p t   o b j e c t . 
 @ r e s u l t   s c r i p t   :   l o a d e d   p r e f e r e n c e s   s c r i p t   o b j e c t 
 l  p q p i   * - r s r I      �������� 0 load  ��  ��   s k     # t t  u v u r      w x w I     �������� 0 load_saved_prefs  ��  ��   x o      ���� 0 a_prefs   v  y z y Z     { |�� } { =    ~  ~ o    	���� 0 a_prefs    m   	 
��
�� 
msng | s     � � � n    � � � o    ���� 0 _default_prefs   �  f     � n      � � � o    ���� 0 _current_prefs   �  f    ��   } r     � � � o    ���� 0 a_prefs   � n      � � � o    ���� 0 _current_prefs   �  f     z  � � � l   ��������  ��  ��   �  ��� � L    # � � n   " � � � o    !���� 0 _current_prefs   �  f    ��   q  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �  �!@abstruct
Save the preferences script object stored in XPreferences into a file.
@description
The file name can be given with ((<set_pref_name>)).
If ((<set_pref_name>)) is not called, the name of the default preferences script object will be used.
    � � � �� ! @ a b s t r u c t 
 S a v e   t h e   p r e f e r e n c e s   s c r i p t   o b j e c t   s t o r e d   i n   X P r e f e r e n c e s   i n t o   a   f i l e . 
 @ d e s c r i p t i o n 
 T h e   f i l e   n a m e   c a n   b e   g i v e n   w i t h   ( ( < s e t _ p r e f _ n a m e > ) ) . 
 I f   ( ( < s e t _ p r e f _ n a m e > ) )   i s   n o t   c a l l e d ,   t h e   n a m e   o f   t h e   d e f a u l t   p r e f e r e n c e s   s c r i p t   o b j e c t   w i l l   b e   u s e d . 
 �  � � � i   . 1 � � � I      �������� 0 save_current_prefs  ��  ��   � I    �� � �
�� .sysostornull��� ��� scpt � n     � � � o    ���� 0 _current_prefs   �  f      � �� � �
�� 
fpth � 4    �� �
�� 
file � l    ����� � b     � � � l    ����� � c     � � � n   	 � � � o    	���� 0 _pref_folder   �  f     � m   	 
��
�� 
ctxt��  ��   � I    �������� 0 	pref_name  ��  ��  ��  ��   � �� ���
�� 
savo � m    ��
�� savoyes ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �RL!@abstruct
Save a script object as a preferences script object into a file.
@description
The file name can be given with ((<set_pref_name>)).
If ((<set_pref_name>)) is not called, the name of the default preferences script object will be used.
@param a_script(script object): a script object to save as a preferences script object.
    � � � �� ! @ a b s t r u c t 
 S a v e   a   s c r i p t   o b j e c t   a s   a   p r e f e r e n c e s   s c r i p t   o b j e c t   i n t o   a   f i l e . 
 @ d e s c r i p t i o n 
 T h e   f i l e   n a m e   c a n   b e   g i v e n   w i t h   ( ( < s e t _ p r e f _ n a m e > ) ) . 
 I f   ( ( < s e t _ p r e f _ n a m e > ) )   i s   n o t   c a l l e d ,   t h e   n a m e   o f   t h e   d e f a u l t   p r e f e r e n c e s   s c r i p t   o b j e c t   w i l l   b e   u s e d . 
 @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t ) :   a   s c r i p t   o b j e c t   t o   s a v e   a s   a   p r e f e r e n c e s   s c r i p t   o b j e c t . 
 �  � � � i   2 5 � � � I      �� ����� 0 save_as_pefs   �  ��� � o      ���� 0 a_script  ��  ��   � I    �� � �
�� .sysostornull��� ��� scpt � o     ���� 0 a_script   � �� � �
�� 
fpth � 4    �� �
�� 
file � l    ����� � b     � � � l   	 ����� � c    	 � � � n    � � � o    ���� 0 _pref_folder   �  f     � m    ��
�� 
ctxt��  ��   � I   	 �������� 0 	pref_name  ��  ��  ��  ��   � �� ���
�� 
savo � m    ��
�� savoyes ��   �  � � � l     ����~��  �  �~   �  � � � l      �} � ��}   � � !@abstruct
Obtain current preferences script object stored in XPreferences.
@result script : current preferences script object
    � � � � � ! @ a b s t r u c t 
 O b t a i n   c u r r e n t   p r e f e r e n c e s   s c r i p t   o b j e c t   s t o r e d   i n   X P r e f e r e n c e s . 
 @ r e s u l t   s c r i p t   :   c u r r e n t   p r e f e r e n c e s   s c r i p t   o b j e c t 
 �  � � � i   6 9 � � � I      �|�{�z�| 	0 prefs  �{  �z   � L      � � n     � � � o    �y�y 0 _current_prefs   �  f      �  � � � l     �x�w�v�x  �w  �v   �  � � � i   : = � � � I      �u ��t�u 0 check_version   �  ��s � o      �r�r 0 a_prefs  �s  �t   � k     A � �  � � � l     �q � ��q   �  log "start check_version"    � � � � 2 l o g   " s t a r t   c h e c k _ v e r s i o n " �  � � � r      � � � n     � � � n    � � � m    �p
�p 
vers � o    �o�o 0 _default_prefs   �  f      � o      �n�n 0 required_ver   �  � � � Z     � ��m�l � =    � � � o    	�k�k 0 required_ver   � m   	 
�j
�j 
msng � L     � � m    �i
�i boovtrue�m  �l   �  � � � l   �h�g�f�h  �g  �f   �  � � � r     � � � n    � � � m    �e
�e 
vers � o    �d�d 0 a_prefs   � o      �c�c 0 current_ver   �  � � � Z    ' � ��b�a � =    � � � o    �`�` 0 current_ver   � m    �_
�_ 
msng � L   ! # � � m   ! "�^
�^ boovfals�b  �a   �    l  ( (�]�\�[�]  �\  �[    P   ( >�Z Z   - =�Y�X l  - 4�W�V @  - 4	
	 l  - 0�U�T c   - 0 o   - .�S�S 0 current_ver   m   . /�R
�R 
ctxt�U  �T  
 l  0 3�Q�P c   0 3 o   0 1�O�O 0 required_ver   m   1 2�N
�N 
ctxt�Q  �P  �W  �V   L   7 9 m   7 8�M
�M boovtrue�Y  �X   �L�K
�L consnume�K  �Z    l  ? ?�J�I�H�J  �I  �H   �G L   ? A m   ? @�F
�F boovfals�G   �  l     �E�D�C�E  �D  �C    i   > A I      �B�A�@�B 0 force_update  �A  �@   k     +  l     �? �?    log "start force_update"     �!! 0 l o g   " s t a r t   f o r c e _ u p d a t e " "#" s     $%$ n    &'& o    �>�> 0 _default_prefs  '  f     % o      �=�= 0 	new_prefs  # ()( Q    "*+,* n  
 -.- I    �</�;�< 
0 update  / 0�:0 n   121 o    �9�9 0 _current_prefs  2  f    �:  �;  . o   
 �8�8 0 	new_prefs  + R      �73�6
�7 .ascrerr ****      � ****3 o      �5�5 
0 errmsg  �6  , k    "44 565 I   �47�3
�4 .ascrcmnt****      � ****7 o    �2�2 
0 errmsg  �3  6 8�18 L     "99 m     !�0
�0 
msng�1  ) :;: r   # (<=< o   # $�/�/ 0 	new_prefs  = n     >?> o   % '�.�. 0 _current_prefs  ?  f   $ %; @A@ l  ) )�-BC�-  B  log "end force_update"   C �DD , l o g   " e n d   f o r c e _ u p d a t e "A E�,E L   ) +FF o   ) *�+�+ 0 	new_prefs  �,   GHG l     �*�)�(�*  �)  �(  H IJI i   B EKLK I      �'�&�%�' 0 	pref_name  �&  �%  L k     -MM NON Z     *PQ�$RP =    STS n    UVU o    �#�# 0 
_pref_name  V  f     T m    �"
�" 
msngQ k     WW XYX r    Z[Z n    \]\ 1    �!
�! 
pnam] n   ^_^ o   	 � �  0 _default_prefs  _  f    	[ o      �� 
0 a_name  Y `�` Z     ab��a =   cdc o    �� 
0 a_name  d m    �
� 
msngb R    �ef
� .ascrerr ****      � ****e m    gg �hh : P r e f e r e n c e   n a m e   i s   n o t   g i v e n .f �i�
� 
errni m    ����  �  �  �  �$  R r   # *jkj o   # (�� 0 
_pref_name  k o      �� 
0 a_name  O l�l L   + -mm o   + ,�� 
0 a_name  �  J non l     ����  �  �  o pqp i   F Irsr I      ���� 0 load_saved_prefs  �  �  s k     ^tt uvu r     	wxw I    �y�

� .earsffdralis        afdry m     �	
�	 afdrpref�
  x n     z{z o    �� 0 _pref_folder  {  f    v |}| Q   
 /~�~ k    %�� ��� r    ��� 4    ��
� 
alis� l   ���� b    ��� l   ���� c    ��� n   ��� o    �� 0 _pref_folder  �  f    � m    �
� 
utxt�  �  � I    � �����  0 	pref_name  ��  ��  �  �  � o      ���� 0 	pref_file  � ���� r    %��� I   #�����
�� .sysoloadscpt        file� o    ���� 0 	pref_file  ��  � o      ���� 0 a_prefs  ��   R      ������
�� .ascrerr ****      � ****��  ��  � L   - /�� m   - .��
�� 
msng} ��� l  0 0��������  ��  ��  � ��� Z   0 [������ I   0 6������� 0 check_version  � ���� o   1 2���� 0 a_prefs  ��  ��  � L   9 ;�� o   9 :���� 0 a_prefs  ��  � k   > [�� ��� s   > D��� n  > A��� o   ? A���� 0 _default_prefs  �  f   > ?� o      ���� 0 	new_prefs  � ��� Q   E X���� n  H N��� I   I N������� 
0 update  � ���� o   I J���� 0 a_prefs  ��  ��  � o   H I���� 0 	new_prefs  � R      �����
�� .ascrerr ****      � ****� o      ���� 
0 errmsg  ��  � k   V X�� ��� l  V V������  �  
log errmsg   � ���  l o g   e r r m s g� ���� L   V X�� m   V W��
�� 
msng��  � ���� L   Y [�� o   Y Z���� 0 	new_prefs  ��  � ���� L   \ ^�� m   \ ]��
�� 
msng��  q ��� l     ��������  ��  ��  � ��� i   J M��� I      �������� 0 open_helpbook  ��  ��  � Q     ,���� O   ��� I   
 ������� 0 do  � ���� I   �����
�� .earsffdralis        afdr�  f    ��  ��  ��  � 4    ���
�� 
scpt� m    �� ���  O p e n H e l p B o o k� R      ����
�� .ascrerr ****      � ****� o      ���� 0 msg  � �����
�� 
errn� o      ���� 	0 errno  ��  � k    ,�� ��� I   "������
�� .miscactvnull��� ��� null��  ��  � ���� I  # ,�����
�� .sysodisAaleR        TEXT� l  # (������ b   # (��� b   # &��� o   # $���� 0 msg  � o   $ %��
�� 
ret � o   & '���� 	0 errno  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i   N Q��� I     ������
�� .aevtoappnull  �   � ****��  ��  � k     �� ��� l     ������  �  test()   � ���  t e s t ( )� ���� I     �������� 0 open_helpbook  ��  ��  ��  � ���� l     ��������  ��  ��  ��       ��� �����������������������  � ������������������������������������
�� 
pnam
�� 
pimr�� 0 _current_prefs  �� 0 _pref_folder  �� 0 _default_prefs  �� 0 
_pref_name  �� 0 set_default_prefs  �� 0 set_pref_name  �� 0 load  �� 0 save_current_prefs  �� 0 save_as_pefs  �� 	0 prefs  �� 0 check_version  �� 0 force_update  �� 0 	pref_name  �� 0 load_saved_prefs  �� 0 open_helpbook  
�� .aevtoappnull  �   � ****� ����� �  ��� �� ��
�� 
vers��  � �����
�� 
cobj� ��   ��
�� 
osax��  
�� 
msng
�� 
msng
�� 
msng
�� 
msng� �� G���������� 0 set_default_prefs  �� ����� �  ���� 0 a_script  ��  � ���� 0 a_script  � ���� 0 _default_prefs  �� 	�)�,FO)� �� ]���������� 0 set_pref_name  �� ����� �  ���� 
0 a_name  ��  � ���� 
0 a_name  � ���� 0 
_pref_name  �� 	�)�,FO)� �� s��� �~�� 0 load  ��  �    �}�} 0 a_prefs   �|�{�z�y�| 0 load_saved_prefs  
�{ 
msng�z 0 _default_prefs  �y 0 _current_prefs  �~ $*j+  E�O��  )�,)�,GY �)�,FO)�,E� �x ��w�v�u�x 0 save_current_prefs  �w  �v     
�t�s�r�q�p�o�n�m�l�k�t 0 _current_prefs  
�s 
fpth
�r 
file�q 0 _pref_folder  
�p 
ctxt�o 0 	pref_name  
�n 
savo
�m savoyes �l 
�k .sysostornull��� ��� scpt�u )�,�*�)�,�&*j+ %/��� 	� �j ��i�h�g�j 0 save_as_pefs  �i �f�f   �e�e 0 a_script  �h   �d�d 0 a_script   	�c�b�a�`�_�^�]�\�[
�c 
fpth
�b 
file�a 0 _pref_folder  
�` 
ctxt�_ 0 	pref_name  
�^ 
savo
�] savoyes �\ 
�[ .sysostornull��� ��� scpt�g ��*�)�,�&*j+ %/��� � �Z ��Y�X�W�Z 	0 prefs  �Y  �X     �V�V 0 _current_prefs  �W )�,E� �U ��T�S	
�R�U 0 check_version  �T �Q�Q   �P�P 0 a_prefs  �S  	 �O�N�M�O 0 a_prefs  �N 0 required_ver  �M 0 current_ver  
 �L�K�J�I�L 0 _default_prefs  
�K 
vers
�J 
msng
�I 
ctxt�R B)�,�,E�O��  eY hO��,E�O��  fY hO�g ��&��& eY hVOf� �H�G�F�E�H 0 force_update  �G  �F   �D�C�D 0 	new_prefs  �C 
0 errmsg   �B�A�@�?�>�=�<�B 0 _default_prefs  �A 0 _current_prefs  �@ 
0 update  �? 
0 errmsg  �>  
�= .ascrcmnt****      � ****
�< 
msng�E ,)�,EQ�O �)�,k+ W X  �j O�O�)�,FO�� �;L�:�9�8�; 0 	pref_name  �:  �9   �7�7 
0 a_name   �6�5�4�3�2�1g�6 0 
_pref_name  
�5 
msng�4 0 _default_prefs  
�3 
pnam
�2 
errn�1��8 .)�,�  )�,�,E�O��  )��l�Y hY 	b  E�O�� �0s�/�.�-�0 0 load_saved_prefs  �/  �.   �,�+�*�)�, 0 	pref_file  �+ 0 a_prefs  �* 0 	new_prefs  �) 
0 errmsg   �(�'�&�%�$�#�"�!� �����
�( afdrpref
�' .earsffdralis        afdr�& 0 _pref_folder  
�% 
alis
�$ 
utxt�# 0 	pref_name  
�" .sysoloadscpt        file�!  �   
� 
msng� 0 check_version  � 0 _default_prefs  � 
0 update  � 
0 errmsg  �- _�j )�,FO *�)�,�&*j+ %/E�O�j E�W 	X  �O*�k+ 
 �Y )�,EQ�O ��k+ W 	X  �O�O�� ������ 0 open_helpbook  �  �   ��� 0 msg  � 	0 errno   	��������
� 
scpt
� .earsffdralis        afdr� 0 do  � 0 msg   ���
� 
errn� 	0 errno  �  
� .miscactvnull��� ��� null
� 
ret 
� .sysodisAaleR        TEXT� - )��/ *)j k+ UW X  *j O��%�%j � �
��	��
�
 .aevtoappnull  �   � ****�	  �     �� 0 open_helpbook  � *j+  ascr  ��ޭ