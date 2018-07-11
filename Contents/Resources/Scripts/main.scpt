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
pnam  m        �    X P r e f e r e n c e s      l     ��������  ��  ��        l      ��  ��   ��!@title XPreferences Reference
* Version : 1.0
* Author : Tetsuro KURITA ((<scriptfactory@mac.com>))
* Repository : 

XPreferences to support saving and loading settings(preferences) of a script.

XPreferences help to load and save a script object to store settings of your script.

The file of the settings is save in "~/Library/Preferences" folder as a script file.

== How to Use
(1) Define a script object to store settings (prefereces script object).
(2) Pass the script to XPreferences by using ((<set_default_prefs>)).
(3) Load saved setttings as a script object (preferences script object).
(4) Obtain values from the preferences script object.
(5) Do your task.
(6) At the end of your task, update values in the preferences script object.
(7) Save the preferences script object by using ((<save_current_prefs>)).

== Example
@example
use scripting additionsuse XPreferences : script "XPreferences"script XPreferencesSampleSettings	property version : "1.0" -- optional	property _msg : "hello"		on message()		return my _msg	end message		on set_message(v)		set my _msg to v		return me	end set_message		on update(old_settings) -- optional		set my _msg to old_settings's _msg	end updateend scripton _init()	tell XPreferences		set_default_prefs(XPreferencesSampleSettings)	end tellend _initproperty _ : _init()on run	set prefs to XPreferences's load()	display alert (prefs's message())	prefs's set_message("Hi")	XPreferences's save_current_prefs()end run
@end

== Update preference script object

To allow to update preference script object (e.g. adding new settings), the preference script object has a "version" property and "update" method.

If the default preferences script object passed to ((<set_default_prefs>)) has "version" property and its value is greather than the value of the "version" property of loaded preferences script object, preferences script object will be updated with following steps.

(1) Copy the default preferences script object.
(2) The "update" handler of new preferences object will recieve old loaded preferences script object.
(3) Copy values form old loaded preferences script object by your self in the update handler.
     �  " ! @ t i t l e   X P r e f e r e n c e s   R e f e r e n c e 
 *   V e r s i o n   :   1 . 0 
 *   A u t h o r   :   T e t s u r o   K U R I T A   ( ( < s c r i p t f a c t o r y @ m a c . c o m > ) ) 
 *   R e p o s i t o r y   :   
 
 X P r e f e r e n c e s   t o   s u p p o r t   s a v i n g   a n d   l o a d i n g   s e t t i n g s ( p r e f e r e n c e s )   o f   a   s c r i p t . 
 
 X P r e f e r e n c e s   h e l p   t o   l o a d   a n d   s a v e   a   s c r i p t   o b j e c t   t o   s t o r e   s e t t i n g s   o f   y o u r   s c r i p t . 
 
 T h e   f i l e   o f   t h e   s e t t i n g s   i s   s a v e   i n   " ~ / L i b r a r y / P r e f e r e n c e s "   f o l d e r   a s   a   s c r i p t   f i l e . 
 
 = =   H o w   t o   U s e 
 ( 1 )   D e f i n e   a   s c r i p t   o b j e c t   t o   s t o r e   s e t t i n g s   ( p r e f e r e c e s   s c r i p t   o b j e c t ) . 
 ( 2 )   P a s s   t h e   s c r i p t   t o   X P r e f e r e n c e s   b y   u s i n g   ( ( < s e t _ d e f a u l t _ p r e f s > ) ) . 
 ( 3 )   L o a d   s a v e d   s e t t t i n g s   a s   a   s c r i p t   o b j e c t   ( p r e f e r e n c e s   s c r i p t   o b j e c t ) . 
 ( 4 )   O b t a i n   v a l u e s   f r o m   t h e   p r e f e r e n c e s   s c r i p t   o b j e c t . 
 ( 5 )   D o   y o u r   t a s k . 
 ( 6 )   A t   t h e   e n d   o f   y o u r   t a s k ,   u p d a t e   v a l u e s   i n   t h e   p r e f e r e n c e s   s c r i p t   o b j e c t . 
 ( 7 )   S a v e   t h e   p r e f e r e n c e s   s c r i p t   o b j e c t   b y   u s i n g   ( ( < s a v e _ c u r r e n t _ p r e f s > ) ) . 
 
 = =   E x a m p l e 
 @ e x a m p l e 
 u s e   s c r i p t i n g   a d d i t i o n s  u s e   X P r e f e r e n c e s   :   s c r i p t   " X P r e f e r e n c e s "   s c r i p t   X P r e f e r e n c e s S a m p l e S e t t i n g s  	 p r o p e r t y   v e r s i o n   :   " 1 . 0 "   - -   o p t i o n a l  	 p r o p e r t y   _ m s g   :   " h e l l o "  	  	 o n   m e s s a g e ( )  	 	 r e t u r n   m y   _ m s g  	 e n d   m e s s a g e  	  	 o n   s e t _ m e s s a g e ( v )  	 	 s e t   m y   _ m s g   t o   v  	 	 r e t u r n   m e  	 e n d   s e t _ m e s s a g e  	  	 o n   u p d a t e ( o l d _ s e t t i n g s )   - -   o p t i o n a l  	 	 s e t   m y   _ m s g   t o   o l d _ s e t t i n g s ' s   _ m s g  	 e n d   u p d a t e  e n d   s c r i p t   o n   _ i n i t ( )  	 t e l l   X P r e f e r e n c e s  	 	 s e t _ d e f a u l t _ p r e f s ( X P r e f e r e n c e s S a m p l e S e t t i n g s )  	 e n d   t e l l  e n d   _ i n i t   p r o p e r t y   _   :   _ i n i t ( )   o n   r u n  	 s e t   p r e f s   t o   X P r e f e r e n c e s ' s   l o a d ( )  	 d i s p l a y   a l e r t   ( p r e f s ' s   m e s s a g e ( ) )  	 p r e f s ' s   s e t _ m e s s a g e ( " H i " )  	 X P r e f e r e n c e s ' s   s a v e _ c u r r e n t _ p r e f s ( )  e n d   r u n 
 @ e n d 
 
 = =   U p d a t e   p r e f e r e n c e   s c r i p t   o b j e c t 
 
 T o   a l l o w   t o   u p d a t e   p r e f e r e n c e   s c r i p t   o b j e c t   ( e . g .   a d d i n g   n e w   s e t t i n g s ) ,   t h e   p r e f e r e n c e   s c r i p t   o b j e c t   h a s   a   " v e r s i o n "   p r o p e r t y   a n d   " u p d a t e "   m e t h o d . 
 
 I f   t h e   d e f a u l t   p r e f e r e n c e s   s c r i p t   o b j e c t   p a s s e d   t o   ( ( < s e t _ d e f a u l t _ p r e f s > ) )   h a s   " v e r s i o n "   p r o p e r t y   a n d   i t s   v a l u e   i s   g r e a t h e r   t h a n   t h e   v a l u e   o f   t h e   " v e r s i o n "   p r o p e r t y   o f   l o a d e d   p r e f e r e n c e s   s c r i p t   o b j e c t ,   p r e f e r e n c e s   s c r i p t   o b j e c t   w i l l   b e   u p d a t e d   w i t h   f o l l o w i n g   s t e p s . 
 
 ( 1 )   C o p y   t h e   d e f a u l t   p r e f e r e n c e s   s c r i p t   o b j e c t . 
 ( 2 )   T h e   " u p d a t e "   h a n d l e r   o f   n e w   p r e f e r e n c e s   o b j e c t   w i l l   r e c i e v e   o l d   l o a d e d   p r e f e r e n c e s   s c r i p t   o b j e c t . 
 ( 3 )   C o p y   v a l u e s   f o r m   o l d   l o a d e d   p r e f e r e n c e s   s c r i p t   o b j e c t   b y   y o u r   s e l f   i n   t h e   u p d a t e   h a n d l e r . 
      l     ��������  ��  ��        j    �� �� 0 _current_prefs    m    ��
�� 
msng      j    �� �� 0 _pref_folder    m    ��
�� 
msng     !   j   	 �� "�� 0 _default_prefs   " m   	 
��
�� 
msng !  # $ # j    �� %�� 0 
_pref_name   % m    ��
�� 
msng $  & ' & l     ��������  ��  ��   '  ( ) ( l      �� * +��   * � �!
== Methods

@abstruct
Set a default preferences as a script object.
@description
You should obtain settings through handlers definded in the script object.
@param a_script (script) : a script object storing default preferences
@result me
    + � , ,� ! 
 = =   M e t h o d s 
 
 @ a b s t r u c t 
 S e t   a   d e f a u l t   p r e f e r e n c e s   a s   a   s c r i p t   o b j e c t . 
 @ d e s c r i p t i o n 
 Y o u   s h o u l d   o b t a i n   s e t t i n g s   t h r o u g h   h a n d l e r s   d e f i n d e d   i n   t h e   s c r i p t   o b j e c t . 
 @ p a r a m   a _ s c r i p t   ( s c r i p t )   :   a   s c r i p t   o b j e c t   s t o r i n g   d e f a u l t   p r e f e r e n c e s 
 @ r e s u l t   m e 
 )  - . - i     / 0 / I      �� 1���� 0 set_default_prefs   1  2�� 2 o      ���� 0 a_script  ��  ��   0 k      3 3  4 5 4 r      6 7 6 o     ���� 0 a_script   7 n      8 9 8 o    ���� 0 _default_prefs   9  f     5  :�� : L     ; ;  f    ��   .  < = < l     ��������  ��  ��   =  > ? > l      �� @ A��   @ � �!@abstruct
Set a file name of a preference file.
@description
If calling this method is omitted, the name of the default preferences object will be used.
@param a_script (script) : a script object storing default preferences
@result me
    A � B B� ! @ a b s t r u c t 
 S e t   a   f i l e   n a m e   o f   a   p r e f e r e n c e   f i l e . 
 @ d e s c r i p t i o n 
 I f   c a l l i n g   t h i s   m e t h o d   i s   o m i t t e d ,   t h e   n a m e   o f   t h e   d e f a u l t   p r e f e r e n c e s   o b j e c t   w i l l   b e   u s e d . 
 @ p a r a m   a _ s c r i p t   ( s c r i p t )   :   a   s c r i p t   o b j e c t   s t o r i n g   d e f a u l t   p r e f e r e n c e s 
 @ r e s u l t   m e 
 ?  C D C i     E F E I      �� G���� 0 set_pref_name   G  H�� H o      ���� 
0 a_name  ��  ��   F k      I I  J K J r      L M L o     ���� 
0 a_name   M n      N O N o    ���� 0 
_pref_name   O  f     K  P�� P L     Q Q  f    ��   D  R S R l     ��������  ��  ��   S  T U T l      �� V W��   V h b!@abstruct
Load saved prefereces script object.
@result script : loaded preferences script object
    W � X X � ! @ a b s t r u c t 
 L o a d   s a v e d   p r e f e r e c e s   s c r i p t   o b j e c t . 
 @ r e s u l t   s c r i p t   :   l o a d e d   p r e f e r e n c e s   s c r i p t   o b j e c t 
 U  Y Z Y i     [ \ [ I      �������� 0 load  ��  ��   \ k     # ] ]  ^ _ ^ r      ` a ` I     �������� 0 load_saved_prefs  ��  ��   a o      ���� 	0 prefs   _  b c b Z     d e�� f d =    g h g o    	���� 	0 prefs   h m   	 
��
�� 
msng e s     i j i n    k l k o    ���� 0 _default_prefs   l  f     j n      m n m o    ���� 0 _current_prefs   n  f    ��   f r     o p o o    ���� 	0 prefs   p n      q r q o    ���� 0 _current_prefs   r  f     c  s t s l   ��������  ��  ��   t  u�� u L    # v v n   " w x w o    !���� 0 _current_prefs   x  f    ��   Z  y z y l     ��������  ��  ��   z  { | { l      �� } ~��   }  �!@abstruct
Save the preferences script object stored in XPreferences into a file.
@description
The file name can be given with ((<set_pref_name>)).
If ((<set_pref_name>)) is not called, the name of the default preferences script object will be used.
    ~ �  � ! @ a b s t r u c t 
 S a v e   t h e   p r e f e r e n c e s   s c r i p t   o b j e c t   s t o r e d   i n   X P r e f e r e n c e s   i n t o   a   f i l e . 
 @ d e s c r i p t i o n 
 T h e   f i l e   n a m e   c a n   b e   g i v e n   w i t h   ( ( < s e t _ p r e f _ n a m e > ) ) . 
 I f   ( ( < s e t _ p r e f _ n a m e > ) )   i s   n o t   c a l l e d ,   t h e   n a m e   o f   t h e   d e f a u l t   p r e f e r e n c e s   s c r i p t   o b j e c t   w i l l   b e   u s e d . 
 |  � � � i     � � � I      �������� 0 save_current_prefs  ��  ��   � I    �� � �
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
 �  � � � i    " � � � I      �� ����� 0 save_as_pefs   �  ��� � o      ���� 0 a_script  ��  ��   � I    �� � �
�� .sysostornull��� ��� scpt � o     ���� 0 a_script   � �� � �
�� 
fpth � 4    �� �
�� 
file � l    ����� � b     � � � l   	 ����� � c    	 � � � n    � � � o    ���� 0 _pref_folder   �  f     � m    ��
�� 
ctxt��  ��   � I   	 �������� 0 	pref_name  ��  ��  ��  ��   � �� ���
�� 
savo � m    ��
�� savoyes ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � !@abstruct
Obtain current preferences script object stored in XPreferences.
@result script : current preferences script object
    � � � � � ! @ a b s t r u c t 
 O b t a i n   c u r r e n t   p r e f e r e n c e s   s c r i p t   o b j e c t   s t o r e d   i n   X P r e f e r e n c e s . 
 @ r e s u l t   s c r i p t   :   c u r r e n t   p r e f e r e n c e s   s c r i p t   o b j e c t 
 �  � � � i   # & � � � I      �������� 	0 prefs  ��  ��   � L      � � n     � � � o    ���� 0 _current_prefs   �  f      �  � � � l     ��������  ��  ��   �  � � � i   ' * � � � I      �� ����� 0 check_version   �  ��� � o      ���� 	0 prefs  ��  ��   � k     A � �  � � � l     � � ��   �  log "start check_version"    � � � � 2 l o g   " s t a r t   c h e c k _ v e r s i o n " �  � � � r      � � � n     � � � n    � � � 1    �~
�~ 
vers � o    �}�} 0 _default_prefs   �  f      � o      �|�| 0 required_ver   �  � � � Z     � ��{�z � =    � � � o    	�y�y 0 required_ver   � m   	 
�x
�x 
msng � L     � � m    �w
�w boovtrue�{  �z   �  � � � l   �v�u�t�v  �u  �t   �  � � � r     � � � n    � � � 1    �s
�s 
vers � o    �r�r 	0 prefs   � o      �q�q 0 current_ver   �  � � � Z    ' � ��p�o � =    � � � o    �n�n 0 current_ver   � m    �m
�m 
msng � L   ! # � � m   ! "�l
�l boovfals�p  �o   �  � � � l  ( (�k�j�i�k  �j  �i   �  � � � P   ( > � ��h � Z   - = � ��g�f � l  - 4 ��e�d � @  - 4 � � � l  - 0 ��c�b � c   - 0 � � � o   - .�a�a 0 current_ver   � m   . /�`
�` 
ctxt�c  �b   � l  0 3 ��_�^ � c   0 3 � � � o   0 1�]�] 0 required_ver   � m   1 2�\
�\ 
ctxt�_  �^  �e  �d   � L   7 9 � � m   7 8�[
�[ boovtrue�g  �f   � �Z�Y
�Z consnume�Y  �h   �  � � � l  ? ?�X�W�V�X  �W  �V   �  ��U � L   ? A � � m   ? @�T
�T boovfals�U   �  �  � l     �S�R�Q�S  �R  �Q     i   + . I      �P�O�N�P 0 force_update  �O  �N   k     +  l     �M	�M    log "start force_update"   	 �

 0 l o g   " s t a r t   f o r c e _ u p d a t e "  s      n     o    �L�L 0 _default_prefs    f      o      �K�K 0 	new_prefs    Q    " n  
  I    �J�I�J 
0 update   �H n    o    �G�G 0 _current_prefs    f    �H  �I   o   
 �F�F 0 	new_prefs   R      �E�D
�E .ascrerr ****      � **** o      �C�C 
0 errmsg  �D   k    "  I   �B �A
�B .ascrcmnt****      � ****  o    �@�@ 
0 errmsg  �A   !�?! L     """ m     !�>
�> 
msng�?   #$# r   # (%&% o   # $�=�= 0 	new_prefs  & n     '(' o   % '�<�< 0 _current_prefs  (  f   $ %$ )*) l  ) )�;+,�;  +  log "end force_update"   , �-- , l o g   " e n d   f o r c e _ u p d a t e "* .�:. L   ) +// o   ) *�9�9 0 	new_prefs  �:   010 l     �8�7�6�8  �7  �6  1 232 i   / 2454 I      �5�4�3�5 0 	pref_name  �4  �3  5 k     66 787 Z     9:�2�19 =    ;<; n    =>= o    �0�0 0 
_pref_name  >  f     < m    �/
�/ 
msng: L    ?? n    @A@ 1    �.
�. 
pnamA n   BCB o   	 �-�- 0 _default_prefs  C  f    	�2  �1  8 D�,D L    EE n   FGF o    �+�+ 0 
_pref_name  G  f    �,  3 HIH l     �*�)�(�*  �)  �(  I JKJ i   3 6LML I      �'�&�%�' 0 load_saved_prefs  �&  �%  M k     nNN OPO r     	QRQ I    �$S�#
�$ .earsffdralis        afdrS m     �"
�" afdrpref�#  R n     TUT o    �!�! 0 _pref_folder  U  f    P VWV Q   
 3XYZX k    )[[ \]\ r    ^_^ 4    � `
�  
alis` l   a��a b    bcb l   d��d c    efe n   ghg o    �� 0 _pref_folder  h  f    f m    �
� 
utxt�  �  c I    ���� 0 	pref_name  �  �  �  �  _ o      �� 0 	pref_file  ] i�i r    )jkj I   #�l�
� .sysoloadscpt        filel o    �� 0 	pref_file  �  k o      �� 	0 prefs  �  Y R      ���
� .ascrerr ****      � ****�  �  Z L   1 3mm m   1 2�
� 
msngW non l  4 4���
�  �  �
  o pqp Z   4 krs�	tr I   4 >�u�� 0 check_version  u v�v o   5 :�� 	0 prefs  �  �  s L   A Gww o   A F�� 	0 prefs  �	  t k   J kxx yzy s   J P{|{ n  J M}~} o   K M�� 0 _default_prefs  ~  f   J K| o      �� 0 	new_prefs  z � Q   Q h���� n  T ^��� I   U ^��� � 
0 update  � ���� o   U Z���� 	0 prefs  ��  �   � o   T U���� 0 	new_prefs  � R      �����
�� .ascrerr ****      � ****� o      ���� 
0 errmsg  ��  � k   f h�� ��� l  f f������  �  
log errmsg   � ���  l o g   e r r m s g� ���� L   f h�� m   f g��
�� 
msng��  � ���� L   i k�� o   i j���� 0 	new_prefs  ��  q ���� L   l n�� m   l m��
�� 
msng��  K ��� l     ��������  ��  ��  � ��� i   7 :��� I     ������
�� .aevtoappnull  �   � ****��  ��  � k     �� ��� l     ������  �  return debug()   � ���  r e t u r n   d e b u g ( )� ���� Q     ���� I   ����
�� .HBsushHBTEXT    ��� file� l   ������ I   �����
�� .earsffdralis        afdr�  f    ��  ��  ��  � �����
�� 
rcIP� m   	 
��
�� boovtrue��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 msg  � �����
�� 
errn� o      ���� 	0 errno  ��  � I   �����
�� .sysodisAaleR        TEXT� l   ������ b    ��� b    ��� o    ���� 0 msg  � o    ��
�� 
ret � o    ���� 	0 errno  ��  ��  ��  ��  � ���� l     ��������  ��  ��  ��       ��� ���������������������  � ��������������������������������
�� 
pnam�� 0 _current_prefs  �� 0 _pref_folder  �� 0 _default_prefs  �� 0 
_pref_name  �� 0 set_default_prefs  �� 0 set_pref_name  �� 0 load  �� 0 save_current_prefs  �� 0 save_as_pefs  �� 	0 prefs  �� 0 check_version  �� 0 force_update  �� 0 	pref_name  �� 0 load_saved_prefs  
�� .aevtoappnull  �   � ****
�� 
msng
�� 
msng
�� 
msng
�� 
msng� �� 0���������� 0 set_default_prefs  �� ����� �  ���� 0 a_script  ��  � ���� 0 a_script  � ���� 0 _default_prefs  �� 	�)�,FO)� �� F���������� 0 set_pref_name  �� ����� �  ���� 
0 a_name  ��  � ���� 
0 a_name  � ���� 0 
_pref_name  �� 	�)�,FO)� �� \���������� 0 load  ��  ��  � ���� 	0 prefs  � ���������� 0 load_saved_prefs  
�� 
msng�� 0 _default_prefs  �� 0 _current_prefs  �� $*j+  E�O��  )�,)�,GY �)�,FO)�,E� �� ����������� 0 save_current_prefs  ��  ��  �  � 
���������������������� 0 _current_prefs  
�� 
fpth
�� 
file�� 0 _pref_folder  
�� 
ctxt�� 0 	pref_name  
�� 
savo
�� savoyes �� 
�� .sysostornull��� ��� scpt�� )�,�*�)�,�&*j+ %/��� 	� �� ����������� 0 save_as_pefs  �� ����� �  ���� 0 a_script  ��  � ���� 0 a_script  � 	������������������
�� 
fpth
�� 
file�� 0 _pref_folder  
�� 
ctxt�� 0 	pref_name  
�� 
savo
�� savoyes �� 
�� .sysostornull��� ��� scpt�� ��*�)�,�&*j+ %/��� � �� ����������� 	0 prefs  ��  ��  �  � ���� 0 _current_prefs  �� )�,E� �� �������~�� 0 check_version  �� �}��} �  �|�| 	0 prefs  �  � �{�z�y�{ 	0 prefs  �z 0 required_ver  �y 0 current_ver  � �x�w�v ��u�x 0 _default_prefs  
�w 
vers
�v 
msng
�u 
ctxt�~ B)�,�,E�O��  eY hO��,E�O��  fY hO�g ��&��& eY hVOf� �t�s�r���q�t 0 force_update  �s  �r  � �p�o�p 0 	new_prefs  �o 
0 errmsg  � �n�m�l�k�j�i�h�n 0 _default_prefs  �m 0 _current_prefs  �l 
0 update  �k 
0 errmsg  �j  
�i .ascrcmnt****      � ****
�h 
msng�q ,)�,EQ�O �)�,k+ W X  �j O�O�)�,FO�� �g5�f�e���d�g 0 	pref_name  �f  �e  �  � �c�b�a�`�c 0 
_pref_name  
�b 
msng�a 0 _default_prefs  
�` 
pnam�d )�,�  )�,�,EY hO)�,E� �_M�^�]���\�_ 0 load_saved_prefs  �^  �]  � �[�Z�Y�[ 0 	pref_file  �Z 0 	new_prefs  �Y 
0 errmsg  � �X�W�V�U�T�S�R�Q�P�O�N�M�L�K
�X afdrpref
�W .earsffdralis        afdr�V 0 _pref_folder  
�U 
alis
�T 
utxt�S 0 	pref_name  
�R .sysoloadscpt        file�Q  �P  
�O 
msng�N 0 check_version  �M 0 _default_prefs  �L 
0 update  �K 
0 errmsg  �\ o�j )�,FO !*�)�,�&*j+ %/E�O�j Ec  
W 	X  �O*b  
k+ 
 b  
Y #)�,EQ�O �b  
k+ W 	X  �O�O�� �J��I�H���G
�J .aevtoappnull  �   � ****�I  �H  � �F�E�F 0 msg  �E 	0 errno  � �D�C�B�A��@�?
�D .earsffdralis        afdr
�C 
rcIP
�B .HBsushHBTEXT    ��� file�A 0 msg  � �>�=�<
�> 
errn�= 	0 errno  �<  
�@ 
ret 
�? .sysodisAaleR        TEXT�G   )j  �el W X  ��%�%j  ascr  ��ޭ