FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �| Copyright (C) 2016 Tetsuro KURITA

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Foobar is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar.  If not, see <http://www.gnu.org/licenses/>      � 	 	�   C o p y r i g h t   ( C )   2 0 1 6   T e t s u r o   K U R I T A  
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
pnam  m        �    X P r e f e r e n c e s      j    �� 
�� 
vers  m       �    0 . 1      l     ��������  ��  ��        l      ��  ��   �!@title XPreferences Reference* Version : 0.1* Author : Tetsuro KURITA ((<tkurita@mac.com>))
* Repository : 
XPreferences to support saving and loading setting of the script.

== Example
@example
property XPreferences : moduleproperty loader : boot (module loader) for mescript DefaultSettings	property parent : AppleScript	property version : "2.7"	property _msg : "hello"		on message()		return my _msg	end message		on set_message(v)		set my _msg to v		return me	end set_message		on update(old_settings)		set my _msg to old_settings's _msg	end updateend scripton _init()	tell XPreferences		set_default_prefs(DefaultSettings)		set_pref_name("XPreferencesSample Preferences")	end tellend _initproperty _ : _init()on run	set prefs to XPreferences's load()	display alert (prefs's message())	prefs's set_message("Hi")	XPreferences's save_current_prefs()end run
     �  � ! @ t i t l e   X P r e f e r e n c e s   R e f e r e n c e  *   V e r s i o n   :   0 . 1  *   A u t h o r   :   T e t s u r o   K U R I T A   ( ( < t k u r i t a @ m a c . c o m > ) ) 
 *   R e p o s i t o r y   :    
 X P r e f e r e n c e s   t o   s u p p o r t   s a v i n g   a n d   l o a d i n g   s e t t i n g   o f   t h e   s c r i p t . 
 
 = =   E x a m p l e 
 @ e x a m p l e 
 p r o p e r t y   X P r e f e r e n c e s   :   m o d u l e  p r o p e r t y   l o a d e r   :   b o o t   ( m o d u l e   l o a d e r )   f o r   m e   s c r i p t   D e f a u l t S e t t i n g s  	 p r o p e r t y   p a r e n t   :   A p p l e S c r i p t  	 p r o p e r t y   v e r s i o n   :   " 2 . 7 "  	 p r o p e r t y   _ m s g   :   " h e l l o "  	  	 o n   m e s s a g e ( )  	 	 r e t u r n   m y   _ m s g  	 e n d   m e s s a g e  	  	 o n   s e t _ m e s s a g e ( v )  	 	 s e t   m y   _ m s g   t o   v  	 	 r e t u r n   m e  	 e n d   s e t _ m e s s a g e  	  	 o n   u p d a t e ( o l d _ s e t t i n g s )  	 	 s e t   m y   _ m s g   t o   o l d _ s e t t i n g s ' s   _ m s g  	 e n d   u p d a t e  e n d   s c r i p t   o n   _ i n i t ( )  	 t e l l   X P r e f e r e n c e s  	 	 s e t _ d e f a u l t _ p r e f s ( D e f a u l t S e t t i n g s )  	 	 s e t _ p r e f _ n a m e ( " X P r e f e r e n c e s S a m p l e   P r e f e r e n c e s " )  	 e n d   t e l l  e n d   _ i n i t   p r o p e r t y   _   :   _ i n i t ( )   o n   r u n  	 s e t   p r e f s   t o   X P r e f e r e n c e s ' s   l o a d ( )  	 d i s p l a y   a l e r t   ( p r e f s ' s   m e s s a g e ( ) )  	 p r e f s ' s   s e t _ m e s s a g e ( " H i " )  	 X P r e f e r e n c e s ' s   s a v e _ c u r r e n t _ p r e f s ( )  e n d   r u n 
      l     ��������  ��  ��         j    �� !�� 0 _current_prefs   ! m    ��
�� 
msng    " # " j   	 �� $�� 0 _pref_folder   $ m   	 
��
�� 
msng #  % & % j    �� '�� 0 _default_prefs   ' m    ��
�� 
msng &  ( ) ( j    �� *�� 0 
_pref_name   * m    ��
�� 
msng )  + , + l     ��������  ��  ��   ,  - . - i     / 0 / I      �� 1���� 0 set_default_prefs   1  2�� 2 o      ���� 0 a_script  ��  ��   0 r      3 4 3 o     ���� 0 a_script   4 n      5 6 5 o    ���� 0 _default_prefs   6  f     .  7 8 7 l     ��������  ��  ��   8  9 : 9 i     ; < ; I      �� =���� 0 set_pref_name   =  >�� > o      ���� 
0 a_name  ��  ��   < r      ? @ ? o     ���� 
0 a_name   @ n      A B A o    ���� 0 
_pref_name   B  f     :  C D C l     ��������  ��  ��   D  E F E i     G H G I      �� I���� 0 set_pref_version   I  J�� J o      ���� 	0 a_ver  ��  ��   H r      K L K o     ���� 	0 a_ver   L n      M N M o    ���� 0 _pref_version   N  f     F  O P O l     ��������  ��  ��   P  Q R Q i    ! S T S I      �� U���� 0 check_version   U  V�� V o      ���� 	0 prefs  ��  ��   T k     A W W  X Y X l     �� Z [��   Z  log "start check_version"    [ � \ \ 2 l o g   " s t a r t   c h e c k _ v e r s i o n " Y  ] ^ ] r      _ ` _ n     a b a n    c d c 1    ��
�� 
vers d o    ���� 0 _default_prefs   b  f      ` o      ���� 0 required_ver   ^  e f e Z     g h���� g =    i j i o    	���� 0 required_ver   j m   	 
��
�� 
msng h L     k k m    ��
�� boovtrue��  ��   f  l m l l   ��������  ��  ��   m  n o n r     p q p n    r s r 1    ��
�� 
vers s o    ���� 	0 prefs   q o      ���� 0 current_ver   o  t u t Z    ' v w���� v =    x y x o    ���� 0 current_ver   y m    ��
�� 
msng w L   ! # z z m   ! "��
�� boovfals��  ��   u  { | { l  ( (��������  ��  ��   |  } ~ } P   ( >  ���  Z   - = � ����� � l  - 4 ����� � @  - 4 � � � l  - 0 ����� � c   - 0 � � � o   - .���� 0 current_ver   � m   . /��
�� 
ctxt��  ��   � l  0 3 ����� � c   0 3 � � � o   0 1���� 0 required_ver   � m   1 2��
�� 
ctxt��  ��  ��  ��   � L   7 9 � � m   7 8��
�� boovtrue��  ��   � ����
�� consnume��  ��   ~  � � � l  ? ?��������  ��  ��   �  ��� � L   ? A � � m   ? @��
�� boovfals��   R  � � � l     ��������  ��  ��   �  � � � i   " % � � � I      �������� 0 load_saved_prefs  ��  ��   � k     \ � �  � � � r     	 � � � I    �� ���
�� .earsffdralis        afdr � m     ��
�� afdrpref��   � n      � � � o    ���� 0 _pref_folder   �  f     �  � � � Q   
 - � � � � k    # � �  � � � r     � � � 4    �� �
�� 
alis � l    ����� � b     � � � l    ����� � c     � � � n    � � � o    ���� 0 _pref_folder   �  f     � m    ��
�� 
utxt��  ��   � n    � � � o    ���� 0 
_pref_name   �  f    ��  ��   � o      ���� 0 	pref_file   �  ��� � r    # � � � I   !�� ���
�� .sysoloadscpt        file � o    ���� 0 	pref_file  ��   � o      ���� 	0 prefs  ��   � R      ������
�� .ascrerr ****      � ****��  ��   � L   + - � � m   + ,��
�� 
msng �  � � � l  . .��~�}�  �~  �}   �  � � � Z   . Y � ��| � � I   . 4�{ ��z�{ 0 check_version   �  ��y � o   / 0�x�x 	0 prefs  �y  �z   � L   7 9 � � o   7 8�w�w 	0 prefs  �|   � k   < Y � �  � � � s   < B � � � n  < ? � � � o   = ?�v�v 0 _default_prefs   �  f   < = � o      �u�u 0 	new_prefs   �  � � � Q   C V � � � � n  F L � � � I   G L�t ��s�t 
0 update   �  ��r � o   G H�q�q 	0 prefs  �r  �s   � o   F G�p�p 0 	new_prefs   � R      �o ��n
�o .ascrerr ****      � **** � o      �m�m 
0 errmsg  �n   � k   T V � �  � � � l  T T�l � ��l   �  
log errmsg    � � � �  l o g   e r r m s g �  ��k � L   T V � � m   T U�j
�j 
msng�k   �  ��i � L   W Y � � o   W X�h�h 0 	new_prefs  �i   �  ��g � L   Z \ � � m   Z [�f
�f 
msng�g   �  � � � l     �e�d�c�e  �d  �c   �  � � � i   & ) � � � I      �b�a�`�b 0 load  �a  �`   � k     # � �  � � � r      � � � I     �_�^�]�_ 0 load_saved_prefs  �^  �]   � o      �\�\ 	0 prefs   �  � � � Z     � ��[ � � =    � � � o    	�Z�Z 	0 prefs   � m   	 
�Y
�Y 
msng � s     � � � n    � � � o    �X�X 0 _default_prefs   �  f     � n      � � � o    �W�W 0 _current_prefs   �  f    �[   � r     � � � o    �V�V 	0 prefs   � n      � � � o    �U�U 0 _current_prefs   �  f     �  � � � l   �T�S�R�T  �S  �R   �  ��Q � L    # � � n   "   o    !�P�P 0 _current_prefs    f    �Q   �  l     �O�N�M�O  �N  �M    i   * - I      �L�K�J�L 0 save_current_prefs  �K  �J   I    �I	
�I .sysostornull��� ��� scpt n    

 o    �H�H 0 _current_prefs    f     	 �G
�G 
fpth 4    �F
�F 
file l   �E�D b     l   �C�B c     o    �A�A 0 _pref_folder   m    �@
�@ 
utxt�C  �B   o    �?�? 0 
_pref_name  �E  �D   �>�=
�> 
savo m    �<
�< savoyes �=    l     �;�:�9�;  �:  �9    i   . 1 I      �8�7�8 0 save_as_pefs   �6 o      �5�5 0 a_script  �6  �7   I    �4
�4 .sysostornull��� ��� scpt o     �3�3 0 a_script   �2 !
�2 
fpth  4    �1"
�1 
file" l   #�0�/# b    $%$ l   	&�.�-& c    	'(' n   )*) o    �,�, 0 _pref_folder  *  f    ( m    �+
�+ 
utxt�.  �-  % n  	 +,+ o   
 �*�* 0 
_pref_name  ,  f   	 
�0  �/  ! �)-�(
�) 
savo- m    �'
�' savoyes �(   ./. l     �&�%�$�&  �%  �$  / 010 i   2 5232 I      �#�"�!�# 	0 prefs  �"  �!  3 L     44 n    565 o    � �  0 _current_prefs  6  f     1 787 l     ����  �  �  8 9:9 i   6 9;<; I     ���
� .aevtoappnull  �   � ****�  �  < k     == >?> l     �@A�  @  return debug()   A �BB  r e t u r n   d e b u g ( )? C�C Q     DEFD I   �GH
� .HBsushHBTEXT    ��� fileG l   I��I I   �J�
� .earsffdralis        afdrJ  f    �  �  �  H �K�
� 
rcIPK m   	 
�
� boovtrue�  E R      �LM
� .ascrerr ****      � ****L o      �� 0 msg  M �N�
� 
errnN o      �� 	0 errno  �  F I   �
O�	
�
 .sysodisAaleR        TEXTO l   P��P b    QRQ b    STS o    �� 0 msg  T o    �
� 
ret R o    �� 	0 errno  �  �  �	  �  : U�U l     ��� �  �  �   �       ��V  ��������WXYZ[\]^_`��  V ��������������������������������
�� 
pnam
�� 
vers�� 0 _current_prefs  �� 0 _pref_folder  �� 0 _default_prefs  �� 0 
_pref_name  �� 0 set_default_prefs  �� 0 set_pref_name  �� 0 set_pref_version  �� 0 check_version  �� 0 load_saved_prefs  �� 0 load  �� 0 save_current_prefs  �� 0 save_as_pefs  �� 	0 prefs  
�� .aevtoappnull  �   � ****
�� 
msng
�� 
msng
�� 
msng
�� 
msngW �� 0����ab���� 0 set_default_prefs  �� ��c�� c  ���� 0 a_script  ��  a ���� 0 a_script  b ���� 0 _default_prefs  �� �)�,FX �� <����de���� 0 set_pref_name  �� ��f�� f  ���� 
0 a_name  ��  d ���� 
0 a_name  e ���� 0 
_pref_name  �� �)�,FY �� H����gh���� 0 set_pref_version  �� ��i�� i  ���� 	0 a_ver  ��  g ���� 	0 a_ver  h ���� 0 _pref_version  �� �)�,FZ �� T����jk���� 0 check_version  �� ��l�� l  ���� 	0 prefs  ��  j �������� 	0 prefs  �� 0 required_ver  �� 0 current_ver  k ������ ����� 0 _default_prefs  
�� 
vers
�� 
msng
�� 
ctxt�� B)�,�,E�O��  eY hO��,E�O��  fY hO�g ��&��& eY hVOf[ �� �����mn���� 0 load_saved_prefs  ��  ��  m ���������� 0 	pref_file  �� 	0 prefs  �� 0 	new_prefs  �� 
0 errmsg  n ����������������������������
�� afdrpref
�� .earsffdralis        afdr�� 0 _pref_folder  
�� 
alis
�� 
utxt�� 0 
_pref_name  
�� .sysoloadscpt        file��  ��  
�� 
msng�� 0 check_version  �� 0 _default_prefs  �� 
0 update  �� 
0 errmsg  �� ]�j )�,FO *�)�,�&)�,%/E�O�j E�W 	X  �O*�k+ 
 �Y )�,EQ�O ��k+ W 	X  �O�O�\ �� �����op���� 0 load  ��  ��  o ���� 	0 prefs  p ���������� 0 load_saved_prefs  
�� 
msng�� 0 _default_prefs  �� 0 _current_prefs  �� $*j+  E�O��  )�,)�,GY �)�,FO)�,E] ������qr���� 0 save_current_prefs  ��  ��  q  r ������������������ 0 _current_prefs  
�� 
fpth
�� 
file
�� 
utxt
�� 
savo
�� savoyes �� 
�� .sysostornull��� ��� scpt�� )�,�*�b  �&b  %/��� ^ ������st���� 0 save_as_pefs  �� ��u�� u  ���� 0 a_script  ��  s ���� 0 a_script  t 	������������������
�� 
fpth
�� 
file�� 0 _pref_folder  
�� 
utxt�� 0 
_pref_name  
�� 
savo
�� savoyes �� 
�� .sysostornull��� ��� scpt�� ��*�)�,�&)�,%/��� _ ��3����vw���� 	0 prefs  ��  ��  v  w ���� 0 _current_prefs  �� )�,E` ��<����xy��
�� .aevtoappnull  �   � ****��  ��  x ������ 0 msg  �� 	0 errno  y ��~�}�|z�{�z
� .earsffdralis        afdr
�~ 
rcIP
�} .HBsushHBTEXT    ��� file�| 0 msg  z �y�x�w
�y 
errn�x 	0 errno  �w  
�{ 
ret 
�z .sysodisAaleR        TEXT��   )j  �el W X  ��%�%j ascr  ��ޭ