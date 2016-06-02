FasdUAS 1.101.10   ��   ��    k             j     �� 
�� 
pnam  m        � 	 	  X P r e f e r e n c e s   
  
 j    �� 
�� 
vers  m       �    0 . 1      l     ��������  ��  ��        l      ��  ��   .(!@title XPreferences Reference* Version : 0.1* Author : Tetsuro KURITA ((<tkurita@mac.com>))
XPreferences to support saving and loading setting of the script.

== Example
<div class="sourceCode">
<div>
<span class="langKeyword">property</span> <span class="userDefine">XPreferences</span><span class="normal"> : </span><span class="additionCommandName">module</span>
</div>
<div>
<span class="langKeyword">property</span> <span class="userDefine">loader</span><span class="normal"> : </span><span class="additionCommandName">boot</span><span class="normal"> (</span><span class="additionCommandName">module loader</span><span class="normal">) </span><span class="additionParameterName">for</span> <span class="langKeyword">me</span>
</div>
<br />
<div>
<span class="langKeyword">script</span> <span class="userDefine">DefaultSettings</span>
</div>
<div style="text-indent:4ex;">
<span class="langKeyword">property</span> <span class="propertyName">parent</span><span class="normal"> : </span><span class="propertyName">AppleScript</span>
</div>
<div style="text-indent:4ex;">
<span class="langKeyword">property</span> <span class="className">version</span><span class="normal"> : &quot;2.7&quot;</span>
</div>
<div style="text-indent:4ex;">
<span class="langKeyword">property</span> <span class="userDefine">_msg</span><span class="normal"> : &quot;hello&quot;</span>
</div>
<br />
<div style="text-indent:4ex;">
<span class="langKeyword">on</span> <span class="userDefine">message</span><span class="normal">()</span>
</div>
<div style="text-indent:8ex;">
<span class="langKeyword">return</span> <span class="langKeyword">my</span> <span class="userDefine">_msg</span>
</div>
<div style="text-indent:4ex;">
<span class="langKeyword">end</span> <span class="userDefine">message</span>
</div>
<br />
<div style="text-indent:4ex;">
<span class="langKeyword">on</span> <span class="userDefine">set_message</span><span class="normal">(</span><span class="userDefine">v</span><span class="normal">)</span>
</div>
<div style="text-indent:8ex;">
<span class="langKeyword">set</span> <span class="langKeyword">my</span> <span class="userDefine">_msg</span> <span class="langKeyword">to</span> <span class="userDefine">v</span>
</div>
<div style="text-indent:8ex;">
<span class="langKeyword">return</span> <span class="langKeyword">me</span>
</div>
<div style="text-indent:4ex;">
<span class="langKeyword">end</span> <span class="userDefine">set_message</span>
</div>
<br />
<div style="text-indent:4ex;">
<span class="langKeyword">on</span> <span class="userDefine">update</span><span class="normal">(</span><span class="userDefine">old_settings</span><span class="normal">)</span>
</div>
<div style="text-indent:8ex;">
<span class="langKeyword">set</span> <span class="langKeyword">my</span> <span class="userDefine">_msg</span> <span class="langKeyword">to</span> <span class="userDefine">old_settings's</span> <span class="userDefine">_msg</span>
</div>
<div style="text-indent:4ex;">
<span class="langKeyword">end</span> <span class="userDefine">update</span>
</div>
<div>
<span class="langKeyword">end</span> <span class="langKeyword">script</span>
</div>
<br />
<div>
<span class="langKeyword">on</span> <span class="userDefine">_init</span><span class="normal">()</span>
</div>
<div style="text-indent:4ex;">
<span class="langKeyword">tell</span> <span class="userDefine">XPreferences</span>
</div>
<div style="text-indent:8ex;">
<span class="userDefine">set_default_prefs</span><span class="normal">(</span><span class="userDefine">DefaultSettings</span><span class="normal">)</span>
</div>
<div style="text-indent:8ex;">
<span class="userDefine">set_pref_name</span><span class="normal">(&quot;XPreferencesSample Preferences&quot;)</span>
</div>
<div style="text-indent:4ex;">
<span class="langKeyword">end</span> <span class="langKeyword">tell</span>
</div>
<div>
<span class="langKeyword">end</span> <span class="userDefine">_init</span>
</div>
<br />
<div>
<span class="langKeyword">property</span> <span class="userDefine">_</span><span class="normal"> : </span><span class="userDefine">_init</span><span class="normal">()</span>
</div>
<br />
<div>
<span class="langKeyword">on</span> <span class="commandName">run</span>
</div>
<div style="text-indent:4ex;">
<span class="langKeyword">set</span> <span class="userDefine">prefs</span> <span class="langKeyword">to</span> <span class="userDefine">XPreferences's</span> <span class="userDefine">load</span><span class="normal">()</span>
</div>
<div style="text-indent:4ex;">
<span class="additionCommandName">display alert</span><span class="normal"> (</span><span class="userDefine">prefs's</span> <span class="userDefine">message</span><span class="normal">())</span>
</div>
<div style="text-indent:4ex;">
<span class="userDefine">prefs's</span> <span class="userDefine">set_message</span><span class="normal">(&quot;Hi&quot;)</span>
</div>
<div style="text-indent:4ex;">
<span class="userDefine">XPreferences's</span> <span class="userDefine">save_current_prefs</span><span class="normal">()</span>
</div>
<div>
<span class="langKeyword">end</span> <span class="commandName">run</span>
</div>
</div>
     �  (P ! @ t i t l e   X P r e f e r e n c e s   R e f e r e n c e  *   V e r s i o n   :   0 . 1  *   A u t h o r   :   T e t s u r o   K U R I T A   ( ( < t k u r i t a @ m a c . c o m > ) )  
 X P r e f e r e n c e s   t o   s u p p o r t   s a v i n g   a n d   l o a d i n g   s e t t i n g   o f   t h e   s c r i p t . 
 
 = =   E x a m p l e 
 < d i v   c l a s s = " s o u r c e C o d e " > 
 < d i v > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > p r o p e r t y < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > X P r e f e r e n c e s < / s p a n > < s p a n   c l a s s = " n o r m a l " >   :   < / s p a n > < s p a n   c l a s s = " a d d i t i o n C o m m a n d N a m e " > m o d u l e < / s p a n > 
 < / d i v > 
 < d i v > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > p r o p e r t y < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > l o a d e r < / s p a n > < s p a n   c l a s s = " n o r m a l " >   :   < / s p a n > < s p a n   c l a s s = " a d d i t i o n C o m m a n d N a m e " > b o o t < / s p a n > < s p a n   c l a s s = " n o r m a l " >   ( < / s p a n > < s p a n   c l a s s = " a d d i t i o n C o m m a n d N a m e " > m o d u l e   l o a d e r < / s p a n > < s p a n   c l a s s = " n o r m a l " > )   < / s p a n > < s p a n   c l a s s = " a d d i t i o n P a r a m e t e r N a m e " > f o r < / s p a n >   < s p a n   c l a s s = " l a n g K e y w o r d " > m e < / s p a n > 
 < / d i v > 
 < b r   / > 
 < d i v > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > s c r i p t < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > D e f a u l t S e t t i n g s < / s p a n > 
 < / d i v > 
 < d i v   s t y l e = " t e x t - i n d e n t : 4 e x ; " > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > p r o p e r t y < / s p a n >   < s p a n   c l a s s = " p r o p e r t y N a m e " > p a r e n t < / s p a n > < s p a n   c l a s s = " n o r m a l " >   :   < / s p a n > < s p a n   c l a s s = " p r o p e r t y N a m e " > A p p l e S c r i p t < / s p a n > 
 < / d i v > 
 < d i v   s t y l e = " t e x t - i n d e n t : 4 e x ; " > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > p r o p e r t y < / s p a n >   < s p a n   c l a s s = " c l a s s N a m e " > v e r s i o n < / s p a n > < s p a n   c l a s s = " n o r m a l " >   :   & q u o t ; 2 . 7 & q u o t ; < / s p a n > 
 < / d i v > 
 < d i v   s t y l e = " t e x t - i n d e n t : 4 e x ; " > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > p r o p e r t y < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > _ m s g < / s p a n > < s p a n   c l a s s = " n o r m a l " >   :   & q u o t ; h e l l o & q u o t ; < / s p a n > 
 < / d i v > 
 < b r   / > 
 < d i v   s t y l e = " t e x t - i n d e n t : 4 e x ; " > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > o n < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > m e s s a g e < / s p a n > < s p a n   c l a s s = " n o r m a l " > ( ) < / s p a n > 
 < / d i v > 
 < d i v   s t y l e = " t e x t - i n d e n t : 8 e x ; " > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > r e t u r n < / s p a n >   < s p a n   c l a s s = " l a n g K e y w o r d " > m y < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > _ m s g < / s p a n > 
 < / d i v > 
 < d i v   s t y l e = " t e x t - i n d e n t : 4 e x ; " > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > e n d < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > m e s s a g e < / s p a n > 
 < / d i v > 
 < b r   / > 
 < d i v   s t y l e = " t e x t - i n d e n t : 4 e x ; " > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > o n < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > s e t _ m e s s a g e < / s p a n > < s p a n   c l a s s = " n o r m a l " > ( < / s p a n > < s p a n   c l a s s = " u s e r D e f i n e " > v < / s p a n > < s p a n   c l a s s = " n o r m a l " > ) < / s p a n > 
 < / d i v > 
 < d i v   s t y l e = " t e x t - i n d e n t : 8 e x ; " > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > s e t < / s p a n >   < s p a n   c l a s s = " l a n g K e y w o r d " > m y < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > _ m s g < / s p a n >   < s p a n   c l a s s = " l a n g K e y w o r d " > t o < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > v < / s p a n > 
 < / d i v > 
 < d i v   s t y l e = " t e x t - i n d e n t : 8 e x ; " > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > r e t u r n < / s p a n >   < s p a n   c l a s s = " l a n g K e y w o r d " > m e < / s p a n > 
 < / d i v > 
 < d i v   s t y l e = " t e x t - i n d e n t : 4 e x ; " > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > e n d < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > s e t _ m e s s a g e < / s p a n > 
 < / d i v > 
 < b r   / > 
 < d i v   s t y l e = " t e x t - i n d e n t : 4 e x ; " > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > o n < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > u p d a t e < / s p a n > < s p a n   c l a s s = " n o r m a l " > ( < / s p a n > < s p a n   c l a s s = " u s e r D e f i n e " > o l d _ s e t t i n g s < / s p a n > < s p a n   c l a s s = " n o r m a l " > ) < / s p a n > 
 < / d i v > 
 < d i v   s t y l e = " t e x t - i n d e n t : 8 e x ; " > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > s e t < / s p a n >   < s p a n   c l a s s = " l a n g K e y w o r d " > m y < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > _ m s g < / s p a n >   < s p a n   c l a s s = " l a n g K e y w o r d " > t o < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > o l d _ s e t t i n g s ' s < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > _ m s g < / s p a n > 
 < / d i v > 
 < d i v   s t y l e = " t e x t - i n d e n t : 4 e x ; " > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > e n d < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > u p d a t e < / s p a n > 
 < / d i v > 
 < d i v > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > e n d < / s p a n >   < s p a n   c l a s s = " l a n g K e y w o r d " > s c r i p t < / s p a n > 
 < / d i v > 
 < b r   / > 
 < d i v > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > o n < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > _ i n i t < / s p a n > < s p a n   c l a s s = " n o r m a l " > ( ) < / s p a n > 
 < / d i v > 
 < d i v   s t y l e = " t e x t - i n d e n t : 4 e x ; " > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > t e l l < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > X P r e f e r e n c e s < / s p a n > 
 < / d i v > 
 < d i v   s t y l e = " t e x t - i n d e n t : 8 e x ; " > 
 < s p a n   c l a s s = " u s e r D e f i n e " > s e t _ d e f a u l t _ p r e f s < / s p a n > < s p a n   c l a s s = " n o r m a l " > ( < / s p a n > < s p a n   c l a s s = " u s e r D e f i n e " > D e f a u l t S e t t i n g s < / s p a n > < s p a n   c l a s s = " n o r m a l " > ) < / s p a n > 
 < / d i v > 
 < d i v   s t y l e = " t e x t - i n d e n t : 8 e x ; " > 
 < s p a n   c l a s s = " u s e r D e f i n e " > s e t _ p r e f _ n a m e < / s p a n > < s p a n   c l a s s = " n o r m a l " > ( & q u o t ; X P r e f e r e n c e s S a m p l e   P r e f e r e n c e s & q u o t ; ) < / s p a n > 
 < / d i v > 
 < d i v   s t y l e = " t e x t - i n d e n t : 4 e x ; " > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > e n d < / s p a n >   < s p a n   c l a s s = " l a n g K e y w o r d " > t e l l < / s p a n > 
 < / d i v > 
 < d i v > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > e n d < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > _ i n i t < / s p a n > 
 < / d i v > 
 < b r   / > 
 < d i v > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > p r o p e r t y < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > _ < / s p a n > < s p a n   c l a s s = " n o r m a l " >   :   < / s p a n > < s p a n   c l a s s = " u s e r D e f i n e " > _ i n i t < / s p a n > < s p a n   c l a s s = " n o r m a l " > ( ) < / s p a n > 
 < / d i v > 
 < b r   / > 
 < d i v > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > o n < / s p a n >   < s p a n   c l a s s = " c o m m a n d N a m e " > r u n < / s p a n > 
 < / d i v > 
 < d i v   s t y l e = " t e x t - i n d e n t : 4 e x ; " > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > s e t < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > p r e f s < / s p a n >   < s p a n   c l a s s = " l a n g K e y w o r d " > t o < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > X P r e f e r e n c e s ' s < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > l o a d < / s p a n > < s p a n   c l a s s = " n o r m a l " > ( ) < / s p a n > 
 < / d i v > 
 < d i v   s t y l e = " t e x t - i n d e n t : 4 e x ; " > 
 < s p a n   c l a s s = " a d d i t i o n C o m m a n d N a m e " > d i s p l a y   a l e r t < / s p a n > < s p a n   c l a s s = " n o r m a l " >   ( < / s p a n > < s p a n   c l a s s = " u s e r D e f i n e " > p r e f s ' s < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > m e s s a g e < / s p a n > < s p a n   c l a s s = " n o r m a l " > ( ) ) < / s p a n > 
 < / d i v > 
 < d i v   s t y l e = " t e x t - i n d e n t : 4 e x ; " > 
 < s p a n   c l a s s = " u s e r D e f i n e " > p r e f s ' s < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > s e t _ m e s s a g e < / s p a n > < s p a n   c l a s s = " n o r m a l " > ( & q u o t ; H i & q u o t ; ) < / s p a n > 
 < / d i v > 
 < d i v   s t y l e = " t e x t - i n d e n t : 4 e x ; " > 
 < s p a n   c l a s s = " u s e r D e f i n e " > X P r e f e r e n c e s ' s < / s p a n >   < s p a n   c l a s s = " u s e r D e f i n e " > s a v e _ c u r r e n t _ p r e f s < / s p a n > < s p a n   c l a s s = " n o r m a l " > ( ) < / s p a n > 
 < / d i v > 
 < d i v > 
 < s p a n   c l a s s = " l a n g K e y w o r d " > e n d < / s p a n >   < s p a n   c l a s s = " c o m m a n d N a m e " > r u n < / s p a n > 
 < / d i v > 
 < / d i v > 
      l     ��������  ��  ��        j    �� �� 0 _current_prefs    m    ��
�� 
msng      j   	 �� �� 0 _pref_folder    m   	 
��
�� 
msng      j    ��  �� 0 _default_prefs     m    ��
�� 
msng   ! " ! j    �� #�� 0 
_pref_name   # m    ��
�� 
msng "  $ % $ l     ��������  ��  ��   %  & ' & i     ( ) ( I      �� *���� 0 set_default_prefs   *  +�� + o      ���� 0 a_script  ��  ��   ) r      , - , o     ���� 0 a_script   - n      . / . o    ���� 0 _default_prefs   /  f     '  0 1 0 l     ��������  ��  ��   1  2 3 2 i     4 5 4 I      �� 6���� 0 set_pref_name   6  7�� 7 o      ���� 
0 a_name  ��  ��   5 r      8 9 8 o     ���� 
0 a_name   9 n      : ; : o    ���� 0 
_pref_name   ;  f     3  < = < l     ��������  ��  ��   =  > ? > i     @ A @ I      �� B���� 0 set_pref_version   B  C�� C o      ���� 	0 a_ver  ��  ��   A r      D E D o     ���� 	0 a_ver   E n      F G F o    ���� 0 _pref_version   G  f     ?  H I H l     ��������  ��  ��   I  J K J i    ! L M L I      �� N���� 0 check_version   N  O�� O o      ���� 	0 prefs  ��  ��   M k     A P P  Q R Q l     �� S T��   S  log "start check_version"    T � U U 2 l o g   " s t a r t   c h e c k _ v e r s i o n " R  V W V r      X Y X n     Z [ Z n    \ ] \ 1    ��
�� 
vers ] o    ���� 0 _default_prefs   [  f      Y o      ���� 0 required_ver   W  ^ _ ^ Z     ` a���� ` =    b c b o    	���� 0 required_ver   c m   	 
��
�� 
msng a L     d d m    ��
�� boovtrue��  ��   _  e f e l   ��������  ��  ��   f  g h g r     i j i n    k l k 1    ��
�� 
vers l o    ���� 	0 prefs   j o      ���� 0 current_ver   h  m n m Z    ' o p���� o =    q r q o    ���� 0 current_ver   r m    ��
�� 
msng p L   ! # s s m   ! "��
�� boovfals��  ��   n  t u t l  ( (��������  ��  ��   u  v w v P   ( > x y�� x Z   - = z {���� z l  - 4 |���� | @  - 4 } ~ } l  - 0 ����  c   - 0 � � � o   - .���� 0 current_ver   � m   . /��
�� 
ctxt��  ��   ~ l  0 3 ����� � c   0 3 � � � o   0 1���� 0 required_ver   � m   1 2��
�� 
ctxt��  ��  ��  ��   { L   7 9 � � m   7 8��
�� boovtrue��  ��   y ����
�� consnume��  ��   w  � � � l  ? ?��������  ��  ��   �  ��� � L   ? A � � m   ? @��
�� boovfals��   K  � � � l     ��������  ��  ��   �  � � � i   " % � � � I      �������� 0 load_saved_prefs  ��  ��   � k     \ � �  � � � r     	 � � � I    �� ���
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
msng �  � � � l  . .��������  ��  ��   �  � � � Z   . Y � ��� � � I   . 4� ��~� 0 check_version   �  ��} � o   / 0�|�| 	0 prefs  �}  �~   � L   7 9 � � o   7 8�{�{ 	0 prefs  ��   � k   < Y � �  � � � s   < B � � � n  < ? � � � o   = ?�z�z 0 _default_prefs   �  f   < = � o      �y�y 0 	new_prefs   �  � � � Q   C V � � � � n  F L � � � I   G L�x ��w�x 
0 update   �  ��v � o   G H�u�u 	0 prefs  �v  �w   � o   F G�t�t 0 	new_prefs   � R      �s ��r
�s .ascrerr ****      � **** � o      �q�q 
0 errmsg  �r   � k   T V � �  � � � l  T T�p � ��p   �  
log errmsg    � � � �  l o g   e r r m s g �  ��o � L   T V � � m   T U�n
�n 
msng�o   �  ��m � L   W Y � � o   W X�l�l 0 	new_prefs  �m   �  ��k � L   Z \ � � m   Z [�j
�j 
msng�k   �  � � � l     �i�h�g�i  �h  �g   �  � � � i   & ) � � � I      �f�e�d�f 0 load  �e  �d   � k     # � �  � � � r      � � � I     �c�b�a�c 0 load_saved_prefs  �b  �a   � o      �`�` 	0 prefs   �  � � � Z     � ��_ � � =    � � � o    	�^�^ 	0 prefs   � m   	 
�]
�] 
msng � s     � � � n    � � � o    �\�\ 0 _default_prefs   �  f     � n      � � � o    �[�[ 0 _current_prefs   �  f    �_   � r     � � � o    �Z�Z 	0 prefs   � n      � � � o    �Y�Y 0 _current_prefs   �  f     �  � � � l   �X�W�V�X  �W  �V   �  ��U � L    # � � n   " � � � o    !�T�T 0 _current_prefs   �  f    �U   �  � � � l     �S�R�Q�S  �R  �Q   �  � � � i   * - �  � I      �P�O�N�P 0 save_current_prefs  �O  �N    I    �M
�M .sysostornull��� ��� scpt n     o    �L�L 0 _current_prefs    f      �K
�K 
fpth 4    �J
�J 
file l   �I�H b    	
	 l   �G�F c     o    �E�E 0 _pref_folder   m    �D
�D 
utxt�G  �F  
 o    �C�C 0 
_pref_name  �I  �H   �B�A
�B 
savo m    �@
�@ savoyes �A   �  l     �?�>�=�?  �>  �=    i   . 1 I      �<�;�< 0 save_as_pefs   �: o      �9�9 0 a_script  �:  �;   I    �8
�8 .sysostornull��� ��� scpt o     �7�7 0 a_script   �6
�6 
fpth 4    �5
�5 
file l   �4�3 b     l   	�2�1 c    	 !  n   "#" o    �0�0 0 _pref_folder  #  f    ! m    �/
�/ 
utxt�2  �1   n  	 $%$ o   
 �.�. 0 
_pref_name  %  f   	 
�4  �3   �-&�,
�- 
savo& m    �+
�+ savoyes �,   '(' l     �*�)�(�*  �)  �(  ( )�') i   2 5*+* I      �&�%�$�& 	0 prefs  �%  �$  + L     ,, n    -.- o    �#�# 0 _current_prefs  .  f     �'       �"/  �!� ��012345678�"  / ���������������
� 
pnam
� 
vers� 0 _current_prefs  � 0 _pref_folder  � 0 _default_prefs  � 0 
_pref_name  � 0 set_default_prefs  � 0 set_pref_name  � 0 set_pref_version  � 0 check_version  � 0 load_saved_prefs  � 0 load  � 0 save_current_prefs  � 0 save_as_pefs  � 	0 prefs  
�! 
msng
�  
msng
� 
msng
� 
msng0 � )��9:�� 0 set_default_prefs  � �
;�
 ;  �	�	 0 a_script  �  9 �� 0 a_script  : �� 0 _default_prefs  � �)�,F1 � 5��<=�� 0 set_pref_name  � �>� >  �� 
0 a_name  �  < � �  
0 a_name  = ���� 0 
_pref_name  � �)�,F2 �� A����?@���� 0 set_pref_version  �� ��A�� A  ���� 	0 a_ver  ��  ? ���� 	0 a_ver  @ ���� 0 _pref_version  �� �)�,F3 �� M����BC���� 0 check_version  �� ��D�� D  ���� 	0 prefs  ��  B �������� 	0 prefs  �� 0 required_ver  �� 0 current_ver  C ������ y���� 0 _default_prefs  
�� 
vers
�� 
msng
�� 
ctxt�� B)�,�,E�O��  eY hO��,E�O��  fY hO�g ��&��& eY hVOf4 �� �����EF���� 0 load_saved_prefs  ��  ��  E ���������� 0 	pref_file  �� 	0 prefs  �� 0 	new_prefs  �� 
0 errmsg  F ����������������������������
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
 �Y )�,EQ�O ��k+ W 	X  �O�O�5 �� �����GH���� 0 load  ��  ��  G ���� 	0 prefs  H ���������� 0 load_saved_prefs  
�� 
msng�� 0 _default_prefs  �� 0 _current_prefs  �� $*j+  E�O��  )�,)�,GY �)�,FO)�,E6 �� ����IJ���� 0 save_current_prefs  ��  ��  I  J ������������������ 0 _current_prefs  
�� 
fpth
�� 
file
�� 
utxt
�� 
savo
�� savoyes �� 
�� .sysostornull��� ��� scpt�� )�,�*�b  �&b  %/��� 7 ������KL���� 0 save_as_pefs  �� ��M�� M  ���� 0 a_script  ��  K ���� 0 a_script  L 	������������������
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
�� .sysostornull��� ��� scpt�� ��*�)�,�&)�,%/��� 8 ��+����NO���� 	0 prefs  ��  ��  N  O ���� 0 _current_prefs  �� )�,E ascr  ��ޭ