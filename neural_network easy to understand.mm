<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1619252428766" ID="ID_178377165" MODIFIED="1619252960288" TEXT="artificial neural network">
<node CREATED="1619252548518" ID="ID_346610360" MODIFIED="1619252924920" POSITION="right" TEXT="Forward propagation">
<node CREATED="1619252581433" ID="ID_278827044" MODIFIED="1619252912996" TEXT="W1 means layer 1 (in out case input layer)">
<node CREATED="1619253071149" ID="ID_1279835841" MODIFIED="1619253080260" TEXT="Relu">
<node CREATED="1619253132607" ID="ID_1452061506" MODIFIED="1619255568548" TEXT="Both are random numbers generated using Randn&#xa;&#xa;&apos;W1&apos;: &#xa;array([[ 0.04967142, -0.01382643],        [ 0.06476885,  0.15230299],        [-0.02341534, -0.0234137 ],        [ 0.15792128,  0.07674347],        [-0.04694744,  0.054256  ]])  &#xa;&#xa;&apos;b1&apos;: &#xa;array([[-0.04634177],&#xa;       [-0.04657298],&#xa;       [ 0.02419623],&#xa;       [-0.19132802],&#xa;       [-0.17249178]])">
<node BACKGROUND_COLOR="#ffff99" CREATED="1619253679987" ID="ID_1091213640" MODIFIED="1619257502373" TEXT="A_prev / x_train.T =&#xa;&#xa; array([[-0.80373584,  0.04423593,  0.96210083,  1.9083946 ],        [ 0.10284377,  0.28599133, -0.44899971,  0.5870327 ]])">
<icon BUILTIN="full-1"/>
<icon BUILTIN="idea"/>
<node CREATED="1619253898542" ID="ID_856840570" MODIFIED="1619269858781" TEXT="Z_curr = np.dot(W_curr , A_prev ) + b_curr&#xa;&#xa; &apos; array([[-8.76864283e-02, -4.80987470e-02,  7.65520393e-03,          4.03343250e-02],        [-8.29666117e-02, -1.50530606e-04, -5.26428037e-02,          1.66438388e-01],        [ 4.06080205e-02,  1.64643138e-02,  1.21810541e-02,         -3.42340814e-02],        [-3.10362431e-01, -1.62394261e-01, -7.38496250e-02,          1.55099025e-01],        [-1.29178552e-01, -1.59051800e-01, -2.42020883e-01,         -2.30235973e-01]])">
<node BACKGROUND_COLOR="#ffff99" CREATED="1619254061143" ID="ID_432282529" MODIFIED="1619257614648" TEXT="Relu (Z_curr) = A_curr &#xa;&#xa;array([[0.        , 0.        , 0.0076552 , 0.04033433],        [0.        , 0.        , 0.        , 0.16643839],        [0.04060802, 0.01646431, 0.01218105, 0.        ],        [0.        , 0.        , 0.        , 0.15509902],        [0.        , 0.        , 0.        , 0.        ]])">
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
<node BACKGROUND_COLOR="#99ffff" CREATED="1619255469164" ID="ID_1939620320" MODIFIED="1619352392909" TEXT="Both are random numbers generated using Randn&#xa;(the value will change each time you run the code as this is the second array so seeding won&apos;t help)&#xa;&#xa;W_curr&apos;: &#xa;array([[-0.05622875, -0.10128311,  0.03142473, -0.09080241, -0.14123037]])&#xa;&#xa;&#xa; &apos;b_curr&apos;: &#xa;array([[0.14656488]])&#xa;">
<node BACKGROUND_COLOR="#ffff99" CREATED="1619256827606" ID="ID_477170485" MODIFIED="1619259772068" TEXT="(Relu (Z_curr) = A_curr ) from previous layer = A_prev&apos;: &#xa;&#xa;&#xa;array([[0.        , 0.        , 0.0076552 , 0.04033433],        [0.        , 0.        , 0.        , 0.16643839],        [0.04060802, 0.01646431, 0.01218105, 0.        ],        [0.        , 0.        , 0.        , 0.15509902],        [0.        , 0.        , 0.        , 0.        ]])">
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
<node BACKGROUND_COLOR="#99ffff" CREATED="1619258331597" ID="ID_346639080" MODIFIED="1619352432365" TEXT="W_curr1 =                                                                                        &#xa;&#xa;array([[-0.05622875, -0.10128311,  0.03142473, -0.09080241, -0.14123037]])">
<node CREATED="1619259397183" ID="ID_337283000" MODIFIED="1619259414852" TEXT="(Relu (Z_curr) = A_curr ) from previous layer = A_prev&apos;:    &#xa;&#xa;array([[0.        , 0.        , 0.0076552 , 0.04033433],        [0.        , 0.        , 0.        , 0.16643839],        [0.04060802, 0.01646431, 0.01218105, 0.        ],        [0.        , 0.        , 0.        , 0.15509902],        [0.        , 0.        , 0.        , 0.        ]])">
<node CREATED="1619264519031" ID="ID_318234194" MODIFIED="1619264957274" TEXT="&apos;Z_curr&apos;:      = np.dot(W_curr , A_prev ) + b_curr         &#xa;&#xa; array([[0.14784097, 0.14708226, 0.14651722, 0.11335617]])"/>
</node>
<node CREATED="1619264677218" ID="ID_1220467675" MODIFIED="1619352781132" TEXT="dA_prev_To_dA_curr_&#xa;&#xa;dA_prev = - (np.divide(y , y_hat) - np.divide(1- y , 1 - y_hat))&#xa;&#xa; -( np.divide(y_train_.reshape(y_hat_train.shape) , y_hat_train) - np.divide(1 - y_train_.reshape(y_hat_train.shape) ,1 - y_hat_train))&#xa; &#xa;&#xa;[[ 2.15932852 -1.86322296 -1.86371086 -1.89283261]]">
<node CREATED="1619265602867" ID="ID_397374755" MODIFIED="1619380371033" TEXT="dZ_curr1 = sigmoid_backprop(dA_prev_To_dA_curr_ , Z_curr1)&#xa;&#xa; ([[ 0.53689307, -0.46329558, -0.46343608, -0.47169127]])">
<node BACKGROUND_COLOR="#ff99cc" CREATED="1619265799671" ID="ID_240005245" MODIFIED="1619382969627" TEXT="dW_curr1 = np.dot(dZ_curr1 , A_prev1.T)  /  m dW_curr&#xa;&#xa; [[-0.00564326 -0.01962688  0.0021323  -0.01828971  0.        ]]"/>
<node CREATED="1619265885822" ID="ID_106444422" MODIFIED="1619265943654" TEXT="db_curr1 = np.sum(dZ_curr1 , axis = 1 , keepdims = True) / m                                                                       &#xa;&#xa;db_curr [[-0.21538246]] "/>
<node BACKGROUND_COLOR="#99ff99" CREATED="1619267396019" ID="ID_387506508" MODIFIED="1619353986367" TEXT="dA_prev1 = np.dot(np.transpose(W_curr1 ), dZ_curr1) &#xa;&#xa;array([[-0.03018883,  0.02605053,  0.02605843,  0.02652261],        [-0.0543782 ,  0.04692402,  0.04693825,  0.04777436],        [ 0.01687172, -0.01455894, -0.01456335, -0.01482277],        [-0.04875118,  0.04206836,  0.04208111,  0.0428307 ],        [-0.07582561,  0.06543141,  0.06545125,  0.06661713]])"/>
</node>
</node>
<node BACKGROUND_COLOR="#ff6666" CREATED="1619265331451" ID="ID_317447821" MODIFIED="1619265480507" TEXT="y_hat_train = A_curr                                                                                             &#xa;&#xa;array([[0.53689307, 0.53670442, 0.53656392, 0.52830873]])"/>
</node>
</node>
</node>
<node CREATED="1619258686934" ID="ID_1275141418" MODIFIED="1619258802774" TEXT="Second Layer">
<node CREATED="1619258805441" ID="ID_338214459" MODIFIED="1619258809636" TEXT=" Relu">
<node CREATED="1619353200109" ID="ID_1535361723" MODIFIED="1619381987081" TEXT="W_curr0               from forward propagation&#xa;&#xa;[[ 0.04967142 -0.01382643]  [ 0.06476885  0.15230299]  [-0.02341534 -0.0234137 ]  [ 0.15792128  0.07674347]  [-0.04694744  0.054256  ]]">
<node CREATED="1619353475820" ID="ID_742888247" MODIFIED="1619353666984" TEXT="(Relu (Z_curr) = A_curr ) from previous layer = A_prev&apos;:          from forward propagation                         &#xa;&#xa; [[-0.80373584  0.04423593  0.96210083  1.9083946 ]  [ 0.10284377  0.28599133 -0.44899971  0.5870327 ]]">
<node CREATED="1619353548671" ID="ID_1719454355" MODIFIED="1619353599965" TEXT="Z_curr0     from forward propagation&#xa;&#xa; [[-8.76864283e-02 -4.80987470e-02  7.65520393e-03  4.03343250e-02]  [-8.29666117e-02 -1.50530606e-04 -5.26428037e-02  1.66438388e-01]  [ 4.06080205e-02  1.64643138e-02  1.21810541e-02 -3.42340814e-02]  [-3.10362431e-01 -1.62394261e-01 -7.38496250e-02  1.55099025e-01]  [-1.29178552e-01 -1.59051800e-01 -2.42020883e-01 -2.30235973e-01]]"/>
</node>
<node BACKGROUND_COLOR="#99ff99" CREATED="1619353522372" ID="ID_1093648714" MODIFIED="1619353986364" TEXT="dA_prev_To_dA_curr_   = dA_prev1&#xa;&#xa; [[-0.03018883  0.02605053  0.02605843  0.02652261]  [-0.0543782   0.04692402  0.04693825  0.04777436]  [ 0.01687172 -0.01455894 -0.01456336 -0.01482277]  [-0.04875118  0.04206835  0.04208111  0.0428307 ]  [-0.07582561  0.06543141  0.06545125  0.06661713]]">
<node CREATED="1619354126367" ID="ID_651299366" MODIFIED="1619381193397" TEXT="dZ_curr0 =                relu_backprop(dA_prev_To_dA_curr_0 , Z_curr0) &#xa;&#xa;array([[ 0.        ,  0.        ,  0.02605843,  0.02652261],&#xa;       [ 0.        ,  0.        ,  0.        ,  0.04777436],&#xa;       [ 0.01687172, -0.01455894, -0.01456336,  0.        ],&#xa;       [ 0.        ,  0.        ,  0.        ,  0.0428307 ],&#xa;       [ 0.        ,  0.        ,  0.        ,  0.        ]])">
<node BACKGROUND_COLOR="#9999ff" CREATED="1619354299672" ID="ID_172864097" MODIFIED="1619382598210" TEXT="dW_curr&#xa;&#xa; [[ 0.01892161  0.00096735]  [ 0.02279308  0.00701128]  [-0.00705396  0.00102759]  [ 0.02043447  0.00628576]  [ 0.          0.        ]]"/>
<node CREATED="1619354338535" ID="ID_1102722162" MODIFIED="1619354354661" TEXT="db_curr                                                                                    &#xa;&#xa; [[ 0.01314526]  [ 0.01194359]  [-0.00306264]  [ 0.01070768]  [ 0.        ]]"/>
<node CREATED="1619354387441" ID="ID_619087213" MODIFIED="1619354413545" TEXT="dA_prev0 = np.dot(np.transpose(W_curr0 ), dZ_curr0)   &#xa;&#xa;&#xa;array([[-3.95057053e-04,  3.40902494e-04,  1.63536512e-03,          1.11755856e-02],        [-3.95029354e-04,  3.40878591e-04, -1.93131338e-05,          1.01964414e-02]])"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1619381558732" ID="ID_19208607" MODIFIED="1619381570954" POSITION="right" TEXT="updating the weights and baise">
<node CREATED="1619381634645" ID="ID_1237861313" MODIFIED="1619381656083" TEXT="changing value of weight 1">
<node CREATED="1619381669044" ID="ID_75618046" MODIFIED="1619382039220" TEXT="W_curr0               from forward propagation &#xa;&#xa; [[ 0.04967142 -0.01382643]  [ 0.06476885  0.15230299]  [-0.02341534 -0.0234137 ]  [ 0.15792128  0.07674347]  [-0.04694744  0.054256  ]]">
<node BACKGROUND_COLOR="#9999ff" CREATED="1619382462803" ID="ID_217079499" MODIFIED="1619382598211" TEXT="dW_curr  &#xa;&#xa; [[ 0.01892161  0.00096735]  [ 0.02279308  0.00701128]  [-0.00705396  0.00102759]  [ 0.02043447  0.00628576]  [ 0.          0.        ]]">
<node CREATED="1619382049021" ID="ID_477931849" MODIFIED="1619382160400" TEXT="learning rate 0.01">
<node CREATED="1619382082985" ID="ID_1432771384" MODIFIED="1619382136744" TEXT="weightupdate1 = W_curr0 - 0.01 * dW_curr0 &#xa;&#xa;[[ 0.0494822  -0.0138361 ]  [ 0.06454092  0.15223287]  [-0.0233448  -0.02342397]  [ 0.15771694  0.07668062]  [-0.04694744  0.054256  ]]"/>
<node CREATED="1619382166977" ID="ID_725634534" MODIFIED="1619382197083" TEXT="baiseupadte1 =  b_curr0 - 0.01 * db_curr0  &#xa;&#xa; [[-0.04647322]  [-0.04669241]  [ 0.02422685]  [-0.1914351 ]  [-0.17249178]]"/>
</node>
</node>
</node>
</node>
<node CREATED="1619381637743" ID="ID_785137811" MODIFIED="1619381662950" TEXT="changing value of weight 2">
<node CREATED="1619382023089" ID="ID_75711925" MODIFIED="1619382031243" TEXT="W_curr1 =                                                                                          &#xa;&#xa;array([[-0.05622875, -0.10128311,  0.03142473, -0.09080241, -0.14123037]])">
<node BACKGROUND_COLOR="#ff99cc" CREATED="1619382635599" ID="ID_679622350" MODIFIED="1619382969629" TEXT="dW_curr1 = np.dot(dZ_curr1 , A_prev1.T)  /  m dW_curr   &#xa;&#xa;[[-0.00564326 -0.01962688  0.0021323  -0.01828971  0.        ]]">
<node CREATED="1619382064089" ID="ID_1931353489" MODIFIED="1619382068960" TEXT="learning rate 0.01">
<node CREATED="1619382204454" ID="ID_1710191349" MODIFIED="1619382306734" TEXT="weightupdate2 = W_curr1 - 0.01 * dW_curr1   &#xa;&#xa; [[-0.05617232 -0.10108684  0.03140341 -0.09061951 -0.14123037]]">
<edge COLOR="#333333"/>
</node>
<node CREATED="1619382238972" ID="ID_362262152" MODIFIED="1619382285568" TEXT="baiseupdate2 =  b_curr1 - 0.01 * db_curr1                                                                                                         &#xa;&#xa;[[0.1487187]]"/>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
