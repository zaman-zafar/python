<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1619252428766" ID="ID_178377165" MODIFIED="1619252960288" TEXT="artificial neural network">
<node CREATED="1619252548518" ID="ID_346610360" MODIFIED="1619252924920" POSITION="right" TEXT="Forward propagation">
<node CREATED="1619252581433" ID="ID_278827044" MODIFIED="1619252912996" TEXT="W1 means layer 1 (in out case input layer)">
<node CREATED="1619253071149" ID="ID_1279835841" MODIFIED="1619253080260" TEXT="Relu">
<node CREATED="1619253132607" ID="ID_1452061506" MODIFIED="1619798775726" TEXT="Both are random numbers generated using Randn&#xa;&#xa;&apos;W1&apos;: &#xa;&#xa;&#xa;&apos;b1&apos;: &#xa;">
<node BACKGROUND_COLOR="#ffff99" CREATED="1619253679987" ID="ID_1091213640" MODIFIED="1619798782446" TEXT="A_prev / x_train.T =&#xa;&#xa;">
<icon BUILTIN="full-1"/>
<icon BUILTIN="idea"/>
<node CREATED="1619253898542" ID="ID_856840570" MODIFIED="1619798789099" TEXT="Z_curr = np.dot(W_curr , A_prev ) + b_curr&#xa;">
<node BACKGROUND_COLOR="#ffff99" CREATED="1619254061143" ID="ID_432282529" MODIFIED="1619798796967" TEXT="Relu (Z_curr) = A_curr &#xa;">
<icon BUILTIN="full-2"/>
<icon BUILTIN="idea"/>
<node CREATED="1619255247434" ID="ID_839230210" MODIFIED="1619255326909" TEXT="A_curr will become A_Prev of previous of next layer in our case output layer"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1619253006042" ID="ID_909256067" MODIFIED="1619253053885" TEXT="W2 means 2nd layer (in our case output layer)">
<node CREATED="1619253085986" ID="ID_309656752" MODIFIED="1619253090541" TEXT="sigmoid">
<node BACKGROUND_COLOR="#99ffff" CREATED="1619255469164" HGAP="38" ID="ID_1939620320" MODIFIED="1619799216293" TEXT="Both are random numbers generated using Randn&#xa;(the value will change each time you run the code &#xa;as this is the second array so seeding won&apos;t help)&#xa;&#xa;W_curr&apos;: &#xa; &apos;b_curr&apos;: &#xa;&#xa;" VSHIFT="89">
<node BACKGROUND_COLOR="#ffff99" CREATED="1619256827606" HGAP="75" ID="ID_477170485" MODIFIED="1619798847544" TEXT="(Relu (Z_curr) = A_curr ) from previous layer = A_prev&apos;: &#xa;&#xa;" VSHIFT="-19">
<icon BUILTIN="full-3"/>
<icon BUILTIN="idea"/>
<node CREATED="1619257107575" ID="ID_175449857" MODIFIED="1619264939306" TEXT="&apos;Z_curr&apos;:   = np.dot(W_curr , A_prev ) + b_curr          &#xa;&#xa;array([[0.14784097, 0.14708226, 0.14651722, 0.11335617]]) ">
<node BACKGROUND_COLOR="#ff6666" CREATED="1619257159396" ID="ID_524773838" MODIFIED="1619265480506" TEXT="Sigmoid (Z_curr) =   A_curr&apos;: &#xa;&#xa;array([[0.53689307, 0.53670442, 0.53656392, 0.52830873]])"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1619257282457" ID="ID_1239213919" MODIFIED="1619258825433" POSITION="right" TEXT="Back Propagation   :                                                                            &#xa;&#xa;it is in reverse so last layer will become first layer">
<node CREATED="1619258544361" ID="ID_173825527" MODIFIED="1619258673978" TEXT="first layer">
<node CREATED="1619257324438" ID="ID_1815097431" MODIFIED="1619258478973" TEXT="sigmoid">
<node BACKGROUND_COLOR="#99ffff" CREATED="1619258331597" ID="ID_346639080" MODIFIED="1619798858491" TEXT="W_curr1 =                                                                                        ">
<node CREATED="1619259397183" HGAP="83" ID="ID_337283000" MODIFIED="1619798868504" TEXT="(Relu (Z_curr) = A_curr ) from previous layer = A_prev&apos;:    &#xa;" VSHIFT="51">
<node CREATED="1619264519031" ID="ID_318234194" MODIFIED="1619798874825" TEXT="&apos;Z_curr&apos;:      = np.dot(W_curr , A_prev ) + b_curr         "/>
</node>
<node CREATED="1619264677218" HGAP="108" ID="ID_1220467675" MODIFIED="1619798882135" TEXT="dA_prev_To_dA_curr_&#xa;&#xa;dA_prev = - (np.divide(y , y_hat) - np.divide(1- y , 1 - y_hat))&#xa;&#xa; -( np.divide(y_train_.reshape(y_hat_train.shape) , y_hat_train) - np.divide(1 - y_train_.reshape(y_hat_train.shape) ,1 - y_hat_train))&#xa; &#xa;" VSHIFT="-10">
<node CREATED="1619265602867" ID="ID_397374755" MODIFIED="1619798890669" TEXT="dZ_curr1 = sigmoid_backprop(dA_prev_To_dA_curr_ , Z_curr1)&#xa;">
<node BACKGROUND_COLOR="#ff99cc" CREATED="1619265799671" HGAP="61" ID="ID_240005245" MODIFIED="1619798903577" TEXT="dW_curr1 = np.dot(dZ_curr1 , A_prev1.T)  /  m dW_curr&#xa;" VSHIFT="-47"/>
<node CREATED="1619265885822" HGAP="79" ID="ID_106444422" MODIFIED="1619798912311" TEXT="db_curr1 = np.sum(dZ_curr1 , axis = 1 , keepdims = True) / m                                                                       &#xa;&#xa;db_curr" VSHIFT="-21"/>
<node BACKGROUND_COLOR="#99ff99" CREATED="1619267396019" HGAP="87" ID="ID_387506508" MODIFIED="1619798918811" TEXT="dA_prev1 = np.dot(np.transpose(W_curr1 ), dZ_curr1) &#xa;" VSHIFT="13"/>
</node>
</node>
<node BACKGROUND_COLOR="#ff6666" CREATED="1619265331451" ID="ID_317447821" MODIFIED="1619798928112" TEXT="y_hat_train = A_curr                                                                                             "/>
</node>
</node>
</node>
<node CREATED="1619258686934" ID="ID_1275141418" MODIFIED="1619258802774" TEXT="Second Layer">
<node CREATED="1619258805441" ID="ID_338214459" MODIFIED="1619258809636" TEXT=" Relu">
<node CREATED="1619353200109" ID="ID_1535361723" MODIFIED="1619798942369" TEXT="W_curr0               from forward propagation&#xa;">
<node CREATED="1619353475820" HGAP="56" ID="ID_742888247" MODIFIED="1619798949004" TEXT="(Relu (Z_curr) = A_curr ) from previous layer = A_prev&apos;:          from forward propagation                         &#xa;" VSHIFT="40">
<node CREATED="1619353548671" ID="ID_1719454355" MODIFIED="1619798958313" TEXT="Z_curr0     from forward propagation&#xa;"/>
</node>
<node BACKGROUND_COLOR="#99ff99" CREATED="1619353522372" HGAP="67" ID="ID_1093648714" MODIFIED="1619798971556" TEXT="dA_prev_To_dA_curr_   = dA_prev1&#xa;" VSHIFT="2">
<node CREATED="1619354126367" HGAP="104" ID="ID_651299366" MODIFIED="1619798979062" TEXT="dZ_curr0 =                relu_backprop(dA_prev_To_dA_curr_0 , Z_curr0) &#xa;" VSHIFT="35">
<node BACKGROUND_COLOR="#9999ff" CREATED="1619354299672" HGAP="79" ID="ID_172864097" MODIFIED="1619798987968" TEXT="dW_curr&#xa;" VSHIFT="3"/>
<node CREATED="1619354338535" HGAP="95" ID="ID_1102722162" MODIFIED="1619798993622" TEXT="db_curr                                                                                    &#xa;" VSHIFT="31"/>
<node CREATED="1619354387441" HGAP="84" ID="ID_619087213" MODIFIED="1619799000816" TEXT="dA_prev0 = np.dot(np.transpose(W_curr0 ), dZ_curr0)   &#xa;" VSHIFT="45"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1619381558732" ID="ID_19208607" MODIFIED="1619381570954" POSITION="right" TEXT="updating the weights and baise">
<node CREATED="1619381634645" ID="ID_1237861313" MODIFIED="1619381656083" TEXT="changing value of weight 1">
<node CREATED="1619381669044" ID="ID_75618046" MODIFIED="1619799016649" TEXT="W_curr0               from forward propagation &#xa;">
<node BACKGROUND_COLOR="#9999ff" CREATED="1619382462803" ID="ID_217079499" MODIFIED="1619799026355" TEXT="dW_curr  ">
<node CREATED="1619382049021" ID="ID_477931849" MODIFIED="1619382160400" TEXT="learning rate 0.01">
<node BACKGROUND_COLOR="#99ffcc" CREATED="1619382082985" HGAP="23" ID="ID_1432771384" MODIFIED="1619799031876" TEXT="weightupdate1 = W_curr0 - 0.01 * dW_curr0 &#xa;" VSHIFT="33"/>
<node CREATED="1619382166977" ID="ID_725634534" MODIFIED="1619799039789" TEXT="baiseupadte1 =  b_curr0 - 0.01 * db_curr0  &#xa;&#xa;"/>
</node>
</node>
</node>
</node>
<node CREATED="1619381637743" ID="ID_785137811" MODIFIED="1619381662950" TEXT="changing value of weight 2">
<node CREATED="1619382023089" HGAP="54" ID="ID_75711925" MODIFIED="1619799050170" TEXT="W_curr1 =                                                                                          &#xa;" VSHIFT="19">
<node BACKGROUND_COLOR="#ff99cc" CREATED="1619382635599" ID="ID_679622350" MODIFIED="1619799057196" TEXT="dW_curr1 = np.dot(dZ_curr1 , A_prev1.T)  /  m dW_curr   ">
<node CREATED="1619382064089" ID="ID_1931353489" MODIFIED="1619382068960" TEXT="learning rate 0.01">
<node CREATED="1619382204454" HGAP="104" ID="ID_1710191349" MODIFIED="1619799072528" TEXT="weightupdate2 = W_curr1 - 0.01 * dW_curr1   &#xa;" VSHIFT="-61">
<edge COLOR="#333333"/>
</node>
<node CREATED="1619382238972" HGAP="92" ID="ID_362262152" MODIFIED="1619799093322" TEXT="baiseupdate2 =  b_curr1 - 0.01 * db_curr1   " VSHIFT="20"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1619383756817" ID="ID_883512152" MODIFIED="1619423804265" POSITION="right" TEXT="Forward propagation 2">
<arrowlink DESTINATION="ID_883512152" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_1426082044" STARTARROW="None" STARTINCLINATION="0;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_883512152" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_1426082044" SOURCE="ID_883512152" STARTARROW="None" STARTINCLINATION="0;0;"/>
<node CREATED="1619423802553" ID="ID_1054863377" MODIFIED="1619423822235" TEXT="First layer">
<node CREATED="1619423872074" ID="ID_51184875" MODIFIED="1619423875365" TEXT="Relu">
<node BACKGROUND_COLOR="#99ffcc" CREATED="1619423937694" HGAP="51" ID="ID_653412912" MODIFIED="1619799112478" TEXT="W_curr1 &#xa;&#xa;b_curr&apos;:                                                         &#xa;" VSHIFT="56">
<node BACKGROUND_COLOR="#ffff99" CREATED="1619253679987" ID="ID_428623833" MODIFIED="1619799119105" TEXT="A_prev / x_train.T =">
<icon BUILTIN="full-1"/>
<icon BUILTIN="idea"/>
<node CREATED="1619253898542" HGAP="46" ID="ID_956405510" MODIFIED="1619799126676" TEXT="Z_curr = np.dot(W_curr , A_prev ) + b_curr&#xa;" VSHIFT="59">
<node CREATED="1619254061143" ID="ID_1869562260" MODIFIED="1619799136800" TEXT="Relu (Z_curr) = A_curr &#xa;">
<icon BUILTIN="full-2"/>
<icon BUILTIN="idea"/>
<node CREATED="1619255247434" ID="ID_1509746506" MODIFIED="1619255326909" TEXT="A_curr will become A_Prev of previous of next layer in our case output layer"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1619423806622" HGAP="16" ID="ID_1181105747" MODIFIED="1619424444972" TEXT="Second layer" VSHIFT="68">
<node CREATED="1619423880572" ID="ID_1420533972" MODIFIED="1619433731535" TEXT="Sigmoid">
<node CREATED="1619433364493" HGAP="49" ID="ID_148901903" MODIFIED="1619799157041" TEXT="weightupdate2&#xa;&#xa;&#xa; baiseupdate2" VSHIFT="11">
<node BACKGROUND_COLOR="#ffff99" CREATED="1619256827606" HGAP="75" ID="ID_87137080" MODIFIED="1619799164330" TEXT="(Relu (Z_curr) = A_curr ) from previous layer = A_prev&apos;: " VSHIFT="-19">
<icon BUILTIN="full-3"/>
<icon BUILTIN="idea"/>
<node CREATED="1619257107575" FOLDED="true" ID="ID_807918941" MODIFIED="1619799171212" TEXT="&apos;Z_curr&apos;:   = np.dot(W_curr , A_prev ) + b_curr          &#xa;">
<node CREATED="1619257159396" ID="ID_297519407" MODIFIED="1619435766129" TEXT="Sigmoid (Z_curr) =   A_curr&apos;: &#xa;&#xa;[[0.53742813 0.53724009 0.53710462 0.52889524]]"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
