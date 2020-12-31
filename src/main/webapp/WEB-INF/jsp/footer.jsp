<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>CSS Goey footer</title>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:400,700&amp;display=swap'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css'>
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        a{
            text-decoration: none!important;
        }
        body {
            display: grid;
            grid-template-rows: 1fr auto;
            grid-template-areas: "main" "footer";
            overflow-x: hidden;
            min-height: 100vh;
            font-family: 'Open Sans', sans-serif;
        }
        body .footer {
            z-index: 1;
            --footer-background: #E79D0C;
            display: grid;
            position: relative;
            grid-area: footer;
            min-height: 12rem;
            width: 100% !important;
        }
        body .footer .bubbles {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 1rem;
            background: var(--footer-background);
            -webkit-filter: url("#blob");
            filter: url("#blob");
        }
        body .footer .bubbles .bubble {
            position: absolute;
            left: var(--position, 50%);
            background: var(--footer-background);
            border-radius: 100%;
            -webkit-animation: bubble-size var(--time, 4s) ease-in infinite var(--delay, 0s), bubble-move var(--time, 4s) ease-in infinite var(--delay, 0s);
            animation: bubble-size var(--time, 4s) ease-in infinite var(--delay, 0s), bubble-move var(--time, 4s) ease-in infinite var(--delay, 0s);
            -webkit-transform: translate(-50%, 100%);
            transform: translate(-50%, 100%);
        }
        body .footer .content {
            z-index: 2;
            display: grid;
            grid-template-columns: 1fr auto;
            grid-gap: 4rem;
            background: var(--footer-background);
            padding: 50px 0 30px 0;
            position: relative;
        }
        .footer .content img{
            width: 168px;
            height: 53px;
        }
        .footer .content .mainWrap{
            width: 100%;
            margin: auto;
        }
        .footer .content .contact{
            padding-bottom: 40px;
        }
        .footer .content .txtwrapper{
            display: inline-block;
            color: #fff;
            opacity: 0.7;
            font-size: 13px;
            line-height: 1.75em;
            padding-left: 40px;
            position: absolute;
            top: 50px;
        }
        .txtwrapper span{
            padding-left: 30px;
        }
        .txtwrapper i{
             font-size: 16px;
         }
        .footer .content .copyrights{
            color: #fff;
            opacity: 0.6;
            border-top: 1px solid rgba(255, 255, 255, 0.4);
            padding-top: 20px;
        }
        .copyrights p{
            text-align: center;
        }
        @-webkit-keyframes bubble-size {
            0%, 75% {
                width: var(--size, 4rem);
                height: var(--size, 4rem);
            }
            100% {
                width: 0rem;
                height: 0rem;
            }
        }

        @keyframes bubble-size {
            0%, 75% {
                width: var(--size, 4rem);
                height: var(--size, 4rem);
            }
            100% {
                width: 0rem;
                height: 0rem;
            }
        }
        @-webkit-keyframes bubble-move {
            0% {
                bottom: -4rem;
            }
            100% {
                bottom: var(--distance, 10rem);
            }
        }
        @keyframes bubble-move {
            0% {
                bottom: -4rem;
            }
            100% {
                bottom: var(--distance, 10rem);
            }
        }
    </style>
</head>
<body>
<div class="footer">
    <div class="bubbles">
        <div class="bubble" style="--size:3.6130760982793104rem; --distance:7.520385672785227rem; --position:60.74770996992038%; --time:2.064140035219479s; --delay:-2.5733304536516s;"></div>
        <div class="bubble" style="--size:5.444189967347817rem; --distance:9.162852306501048rem; --position:13.340046251348213%; --time:2.2191632395614165s; --delay:-2.717654424682341s;"></div>
        <div class="bubble" style="--size:3.8551517875729857rem; --distance:6.286623513109197rem; --position:27.49541451522385%; --time:3.618127068390549s; --delay:-2.359157281555765s;"></div>
        <div class="bubble" style="--size:5.327287384119257rem; --distance:8.383643138240345rem; --position:34.22770221025571%; --time:2.402504990203312s; --delay:-2.5262087423443376s;"></div>
        <div class="bubble" style="--size:4.557837710101241rem; --distance:6.665396063733129rem; --position:16.461265636679222%; --time:3.0485295055026818s; --delay:-2.7999025840130285s;"></div>
        <div class="bubble" style="--size:2.9321315879726706rem; --distance:7.038475317649034rem; --position:60.127041383351255%; --time:3.1619794974606608s; --delay:-3.28298822233228s;"></div>
        <div class="bubble" style="--size:3.5433542296911273rem; --distance:6.251643869717526rem; --position:74.81429544413149%; --time:3.7666454870800723s; --delay:-2.621361761725777s;"></div>
        <div class="bubble" style="--size:5.302927070078741rem; --distance:8.46511261977286rem; --position:31.113714488948574%; --time:2.247628556478543s; --delay:-2.0268158383830186s;"></div>
        <div class="bubble" style="--size:3.589688540817825rem; --distance:8.250585164031893rem; --position:18.179968238521305%; --time:2.3445071064840484s; --delay:-2.3513224480750003s;"></div>
        <div class="bubble" style="--size:2.8093996750432337rem; --distance:8.274101497374868rem; --position:42.96791931035444%; --time:2.8382333662411376s; --delay:-2.2578734478483335s;"></div>
        <div class="bubble" style="--size:4.644856349706659rem; --distance:8.555192048814623rem; --position:95.90278941410882%; --time:2.3625378865593234s; --delay:-3.5756808451495314s;"></div>
        <div class="bubble" style="--size:5.8402104843105995rem; --distance:8.697374102789919rem; --position:89.34852175719358%; --time:3.9758719644880602s; --delay:-2.4630229128649375s;"></div>
        <div class="bubble" style="--size:5.726834209376335rem; --distance:8.710083495514rem; --position:36.386634922848756%; --time:3.26744655455918s; --delay:-2.278795927848179s;"></div>
        <div class="bubble" style="--size:3.398692552259244rem; --distance:7.490788770723574rem; --position:92.01713699844478%; --time:2.353823913296711s; --delay:-2.125813423422234s;"></div>
        <div class="bubble" style="--size:5.116727462865707rem; --distance:7.503631090219299rem; --position:97.76832341279096%; --time:3.2416787314951665s; --delay:-2.7857773863845177s;"></div>
        <div class="bubble" style="--size:3.403640000675809rem; --distance:7.395945244803204rem; --position:21.312317376574942%; --time:3.644987952513525s; --delay:-3.2501186805171516s;"></div>
        <div class="bubble" style="--size:2.269788617001595rem; --distance:9.719337235927117rem; --position:5.5648049984158465%; --time:2.5816948719559885s; --delay:-2.2462329704292814s;"></div>
        <div class="bubble" style="--size:3.417745333723519rem; --distance:6.804270758598798rem; --position:63.804573754444746%; --time:2.34741825069955s; --delay:-3.5500135932557533s;"></div>
        <div class="bubble" style="--size:5.000873729799098rem; --distance:9.479415952236959rem; --position:91.14988512519623%; --time:2.8850320673709655s; --delay:-3.6724037475956615s;"></div>
        <div class="bubble" style="--size:2.0893700702363995rem; --distance:8.383892354748554rem; --position:15.72862878547609%; --time:3.3786843826278044s; --delay:-3.6613475444042054s;"></div>
        <div class="bubble" style="--size:3.130874688326627rem; --distance:6.517997119359304rem; --position:85.31382709919217%; --time:3.9656117749998345s; --delay:-3.3957663848978936s;"></div>
        <div class="bubble" style="--size:3.741870777863949rem; --distance:9.120799588417796rem; --position:0.1218142622806484%; --time:2.8205806919386007s; --delay:-2.417519885417555s;"></div>
        <div class="bubble" style="--size:2.393670152973127rem; --distance:8.442724322924938rem; --position:93.47114722942976%; --time:3.6674772424790953s; --delay:-2.5520360851223405s;"></div>
        <div class="bubble" style="--size:3.545029004277086rem; --distance:7.015860616875553rem; --position:62.37821740602837%; --time:3.6259413871724475s; --delay:-3.7784002258068736s;"></div>
        <div class="bubble" style="--size:4.1611840512099rem; --distance:8.155170429539849rem; --position:68.46212788791173%; --time:3.748961866313154s; --delay:-3.4966284846154476s;"></div>
        <div class="bubble" style="--size:4.129978713009164rem; --distance:7.343490810374488rem; --position:10.090912047520392%; --time:3.8358630203782993s; --delay:-2.2575275539103234s;"></div>
        <div class="bubble" style="--size:3.032625303374277rem; --distance:6.7004797238748806rem; --position:34.205348022208675%; --time:2.328117127675668s; --delay:-3.4886324279736187s;"></div>
        <div class="bubble" style="--size:5.683918318093438rem; --distance:6.502766707311035rem; --position:5.363468530670792%; --time:2.882179136694418s; --delay:-2.301688626575186s;"></div>
        <div class="bubble" style="--size:3.158629693112853rem; --distance:9.305376260795843rem; --position:10.46395582910835%; --time:3.6632844279273726s; --delay:-2.599292421393734s;"></div>
        <div class="bubble" style="--size:3.1041864468364224rem; --distance:9.064103031823109rem; --position:45.33753431529266%; --time:2.7963812741548386s; --delay:-3.3561136789720685s;"></div>
        <div class="bubble" style="--size:4.15394079605454rem; --distance:8.780102335701496rem; --position:9.424968424154239%; --time:3.6830070806653166s; --delay:-2.0502566246792044s;"></div>
        <div class="bubble" style="--size:3.2194513613254063rem; --distance:9.49494864201514rem; --position:61.16795391716822%; --time:3.0911543490511693s; --delay:-2.9051407540510628s;"></div>
        <div class="bubble" style="--size:3.61775660620064rem; --distance:7.803775077828518rem; --position:53.773396318834244%; --time:2.776121990730583s; --delay:-2.8999241941002523s;"></div>
        <div class="bubble" style="--size:2.0950117977603755rem; --distance:7.684479313436305rem; --position:79.63386714862257%; --time:3.217458306097348s; --delay:-2.495832285016167s;"></div>
        <div class="bubble" style="--size:5.036238606845978rem; --distance:8.431256721847525rem; --position:28.06166912580732%; --time:3.5616039876056225s; --delay:-3.1514510761953574s;"></div>
        <div class="bubble" style="--size:5.715697115796747rem; --distance:6.543326053848278rem; --position:55.0416466289169%; --time:2.908342317004059s; --delay:-2.6550577990945903s;"></div>
        <div class="bubble" style="--size:5.40515229937055rem; --distance:9.189467146713998rem; --position:99.11111230456612%; --time:3.934537421908031s; --delay:-2.558634932634009s;"></div>
        <div class="bubble" style="--size:4.365296966907237rem; --distance:9.53894335536447rem; --position:21.733631360928737%; --time:3.0050821686654414s; --delay:-2.033952533422324s;"></div>
        <div class="bubble" style="--size:5.793037145297922rem; --distance:9.561172944916176rem; --position:61.68589434616263%; --time:2.0673852795735175s; --delay:-3.8129261659546425s;"></div>
        <div class="bubble" style="--size:5.150118304661341rem; --distance:8.756251727932494rem; --position:14.237448935623426%; --time:3.8391577154711283s; --delay:-2.632902188830952s;"></div>
        <div class="bubble" style="--size:3.2833227317447777rem; --distance:9.173097233588221rem; --position:47.30048773966027%; --time:2.3212581796291163s; --delay:-2.9371326621000544s;"></div>
        <div class="bubble" style="--size:4.2068837880857055rem; --distance:9.20092661990859rem; --position:-1.0671527923388546%; --time:2.642836532744624s; --delay:-3.5650774248958115s;"></div>
        <div class="bubble" style="--size:4.369149618712984rem; --distance:9.306394997861915rem; --position:79.01770642735643%; --time:3.589862259669304s; --delay:-3.7061001464414276s;"></div>
        <div class="bubble" style="--size:5.296905870412796rem; --distance:6.9143911840333665rem; --position:24.333589103424483%; --time:2.052989006384489s; --delay:-3.024630840695984s;"></div>
        <div class="bubble" style="--size:4.159835305103323rem; --distance:8.937883485491797rem; --position:86.30816600932424%; --time:3.1547666744968668s; --delay:-2.6962832521622095s;"></div>
        <div class="bubble" style="--size:2.4985468118501117rem; --distance:6.947925834844037rem; --position:69.61832070049553%; --time:3.358378489935558s; --delay:-3.646901834379804s;"></div>
        <div class="bubble" style="--size:5.3060107769840075rem; --distance:8.785054307120749rem; --position:26.8712714805477%; --time:3.2885036514158084s; --delay:-2.1735315917785765s;"></div>
        <div class="bubble" style="--size:5.042203217066483rem; --distance:6.660351321386907rem; --position:16.340029574142424%; --time:3.1736961746960595s; --delay:-3.50477092665155s;"></div>
        <div class="bubble" style="--size:2.0789950511527273rem; --distance:7.462205816789229rem; --position:13.61612063186595%; --time:2.3381623956343964s; --delay:-3.16816653744423s;"></div>
        <div class="bubble" style="--size:3.6606860082863184rem; --distance:6.244680774110682rem; --position:4.6805511476683375%; --time:2.1549512595157054s; --delay:-3.0798080244220114s;"></div>
        <div class="bubble" style="--size:4.312512805152765rem; --distance:7.382910634689238rem; --position:94.44973655150102%; --time:2.802683077370344s; --delay:-3.6079858089391297s;"></div>
        <div class="bubble" style="--size:3.4562769091926926rem; --distance:9.114940532591426rem; --position:65.32090999623351%; --time:3.5463330920475853s; --delay:-3.0151216075404226s;"></div>
        <div class="bubble" style="--size:3.5241462588057253rem; --distance:6.8252920798064745rem; --position:41.94757554017515%; --time:3.8685392658601034s; --delay:-2.6960827831628196s;"></div>
        <div class="bubble" style="--size:5.81798766373699rem; --distance:8.199016552165986rem; --position:42.90194474813804%; --time:3.2304487608716888s; --delay:-2.7677528214392435s;"></div>
        <div class="bubble" style="--size:2.1003896062633807rem; --distance:9.754122624409192rem; --position:28.750583368669254%; --time:3.6524728605861236s; --delay:-2.177298176652972s;"></div>
        <div class="bubble" style="--size:5.460486241133472rem; --distance:7.2534974737630264rem; --position:29.235947991559186%; --time:3.6522213882375985s; --delay:-3.752190669564346s;"></div>
        <div class="bubble" style="--size:3.503837299440155rem; --distance:9.177849021305295rem; --position:50.3007622142306%; --time:3.7063899356162238s; --delay:-3.798504988219654s;"></div>
        <div class="bubble" style="--size:2.3375411846631184rem; --distance:8.659095039467099rem; --position:49.262452730593765%; --time:2.57790888003298s; --delay:-3.58591008249337s;"></div>
        <div class="bubble" style="--size:2.0854704438776945rem; --distance:6.295650083304579rem; --position:32.6104182291661%; --time:3.5643759982292185s; --delay:-3.626566795830563s;"></div>
        <div class="bubble" style="--size:3.002062384092567rem; --distance:9.719527001631565rem; --position:13.774287174885071%; --time:3.0237052942142597s; --delay:-3.506756916520039s;"></div>
        <div class="bubble" style="--size:5.254728062352253rem; --distance:8.50321988563135rem; --position:49.62393576420537%; --time:2.5561701157012706s; --delay:-3.613215449967805s;"></div>
        <div class="bubble" style="--size:4.562742060772748rem; --distance:8.173096075443048rem; --position:20.53191328055888%; --time:2.0390212951754574s; --delay:-2.0124508835830746s;"></div>
        <div class="bubble" style="--size:2.6489133018061395rem; --distance:9.429803183417285rem; --position:104.53080870839933%; --time:2.227434878280142s; --delay:-2.574907086890041s;"></div>
        <div class="bubble" style="--size:3.520562752631343rem; --distance:8.681367613070488rem; --position:31.725599917324594%; --time:2.210261928421836s; --delay:-2.4057770746916654s;"></div>
        <div class="bubble" style="--size:3.941585830928582rem; --distance:6.464580101464603rem; --position:-1.8743226383100997%; --time:3.5071730833266272s; --delay:-2.699610681561143s;"></div>
        <div class="bubble" style="--size:4.72556213050858rem; --distance:8.844872646051922rem; --position:45.01990135248739%; --time:2.1643662001283395s; --delay:-3.3150401382158416s;"></div>
        <div class="bubble" style="--size:3.033660973701066rem; --distance:8.125181979414684rem; --position:6.630910727156188%; --time:3.2566542524628233s; --delay:-3.761491042909794s;"></div>
        <div class="bubble" style="--size:2.488401358846997rem; --distance:9.573651602943194rem; --position:53.43632959228784%; --time:3.564870333252126s; --delay:-2.2199989835964153s;"></div>
        <div class="bubble" style="--size:3.2181595634543916rem; --distance:9.74225413020731rem; --position:52.63167132026781%; --time:2.670061649121448s; --delay:-2.345006083573251s;"></div>
        <div class="bubble" style="--size:5.1661339023399115rem; --distance:6.181621770071227rem; --position:54.644256468915586%; --time:3.9702259298590734s; --delay:-2.7001233263923448s;"></div>
        <div class="bubble" style="--size:2.796083007615131rem; --distance:9.856250820657618rem; --position:59.83632919917089%; --time:3.3991157822409495s; --delay:-2.954471555913883s;"></div>
        <div class="bubble" style="--size:2.1086107468742785rem; --distance:9.557813990367315rem; --position:101.92701538132961%; --time:2.661000671099948s; --delay:-3.054404603667851s;"></div>
        <div class="bubble" style="--size:5.460935304406987rem; --distance:6.963110124537815rem; --position:16.073684046435986%; --time:3.4788058373669997s; --delay:-3.8250541397725946s;"></div>
        <div class="bubble" style="--size:3.7475482108759577rem; --distance:9.660878950231327rem; --position:7.47599606483668%; --time:2.648170376958515s; --delay:-2.3492276736003945s;"></div>
        <div class="bubble" style="--size:2.1104503726047055rem; --distance:7.742749493810245rem; --position:20.24492217669002%; --time:2.006251708290165s; --delay:-3.131179385548816s;"></div>
        <div class="bubble" style="--size:4.782737549568822rem; --distance:8.024970587211968rem; --position:91.29944843090426%; --time:3.9562555837883964s; --delay:-2.574792817737161s;"></div>
        <div class="bubble" style="--size:2.7732337173400605rem; --distance:8.21522669167701rem; --position:21.22447177036223%; --time:2.1922331257044063s; --delay:-3.167561821568466s;"></div>
        <div class="bubble" style="--size:2.26985243214106rem; --distance:8.097999604497392rem; --position:67.38854484794417%; --time:2.584127228543468s; --delay:-2.415045167260207s;"></div>
        <div class="bubble" style="--size:5.961483213456343rem; --distance:8.33024082421215rem; --position:38.11512857629508%; --time:3.840186984718899s; --delay:-2.881916984572833s;"></div>
        <div class="bubble" style="--size:5.021597269980178rem; --distance:6.402003675364902rem; --position:18.865665467363762%; --time:3.9518118839830434s; --delay:-2.045743770842684s;"></div>
        <div class="bubble" style="--size:5.713466219360591rem; --distance:6.008513930615258rem; --position:73.36891723249649%; --time:3.9889922826938786s; --delay:-3.702543843506237s;"></div>
        <div class="bubble" style="--size:4.472579382338849rem; --distance:9.669461185561447rem; --position:-4.844014667647276%; --time:2.531303122640054s; --delay:-2.1452887484388214s;"></div>
        <div class="bubble" style="--size:5.357628328279157rem; --distance:6.005498760202949rem; --position:29.557793605896507%; --time:3.2133888147920104s; --delay:-3.649052971514044s;"></div>
        <div class="bubble" style="--size:2.3136429240738208rem; --distance:6.551149791151363rem; --position:91.55992499821734%; --time:3.962238491668168s; --delay:-2.8077089113297915s;"></div>
        <div class="bubble" style="--size:5.444185035061853rem; --distance:6.494331198348354rem; --position:59.288372102627065%; --time:2.187773140892039s; --delay:-3.6472501045924255s;"></div>
        <div class="bubble" style="--size:5.193230543500822rem; --distance:8.68520513559664rem; --position:18.404995889039736%; --time:2.400948189253423s; --delay:-2.3583384059229364s;"></div>
        <div class="bubble" style="--size:2.9969891389540777rem; --distance:9.086672938673946rem; --position:8.321327553885027%; --time:2.3434719842538088s; --delay:-2.910262491796418s;"></div>
        <div class="bubble" style="--size:4.697200633261431rem; --distance:9.712689782589791rem; --position:103.33099221218195%; --time:2.333559055004545s; --delay:-2.6385859493459436s;"></div>
        <div class="bubble" style="--size:5.800207471483391rem; --distance:7.606497396701491rem; --position:25.552962967314173%; --time:3.6188984142647063s; --delay:-3.80135765060021s;"></div>
        <div class="bubble" style="--size:2.9014468762191488rem; --distance:6.953970499043219rem; --position:58.007643051704484%; --time:2.8291656648160615s; --delay:-3.635420777903608s;"></div>
        <div class="bubble" style="--size:4.223874482754564rem; --distance:6.8943207195266805rem; --position:36.68442036345502%; --time:2.362254858539937s; --delay:-2.6852544694223406s;"></div>
        <div class="bubble" style="--size:4.131857567341028rem; --distance:9.072491910217728rem; --position:61.07009989612209%; --time:2.6413437114189047s; --delay:-2.162102524890573s;"></div>
        <div class="bubble" style="--size:3.4193084447781157rem; --distance:7.236269965812467rem; --position:89.59800972035673%; --time:2.458712711011643s; --delay:-2.681263920908842s;"></div>
        <div class="bubble" style="--size:4.038610637420761rem; --distance:9.203551938462294rem; --position:78.77469687721256%; --time:3.4487409029425367s; --delay:-2.695386918462411s;"></div>
        <div class="bubble" style="--size:4.518815999840311rem; --distance:7.41112479581883rem; --position:30.9138338862464%; --time:3.5264035958306823s; --delay:-3.1038400820444902s;"></div>
        <div class="bubble" style="--size:5.0864238875976175rem; --distance:6.514049604768627rem; --position:16.30435822792823%; --time:3.9116635582981036s; --delay:-3.2626288194893007s;"></div>
        <div class="bubble" style="--size:2.9869621695932587rem; --distance:9.644920927845787rem; --position:29.109835147746395%; --time:3.236435685463281s; --delay:-3.3802135902126054s;"></div>
        <div class="bubble" style="--size:2.8112851952548654rem; --distance:7.382769117889241rem; --position:49.58116806713774%; --time:3.41574822247916s; --delay:-2.8704062285773486s;"></div>
        <div class="bubble" style="--size:4.5710974776312785rem; --distance:6.34100442593475rem; --position:1.716564820827613%; --time:3.0733653454348158s; --delay:-2.0208562485489048s;"></div>
        <div class="bubble" style="--size:5.074725526186544rem; --distance:8.614315138276485rem; --position:33.165054024280835%; --time:2.21628056229765s; --delay:-3.698638223194689s;"></div>
        <div class="bubble" style="--size:4.422062791576935rem; --distance:7.755510174341168rem; --position:95.71934762345892%; --time:2.8392047754833687s; --delay:-3.5505982843706327s;"></div>
        <div class="bubble" style="--size:5.377970929039006rem; --distance:7.956231860184569rem; --position:75.75140334632819%; --time:3.5230163251739706s; --delay:-2.3844554915366s;"></div>
        <div class="bubble" style="--size:2.2208802155010705rem; --distance:6.167953816575988rem; --position:0.48157018174836086%; --time:3.6765563936766137s; --delay:-3.317916835508458s;"></div>
        <div class="bubble" style="--size:5.223545058339228rem; --distance:8.692606696526045rem; --position:75.50119343476891%; --time:3.302809853581706s; --delay:-3.8765683212615176s;"></div>
        <div class="bubble" style="--size:5.61980409186242rem; --distance:6.880405311577848rem; --position:13.464060523223665%; --time:2.7560981322516014s; --delay:-3.431838632027458s;"></div>
        <div class="bubble" style="--size:3.136542660199156rem; --distance:7.099679872224397rem; --position:57.34875998813981%; --time:2.6423661813742916s; --delay:-3.3080830322942143s;"></div>
        <div class="bubble" style="--size:2.744837689127703rem; --distance:7.686591060681754rem; --position:19.462957195122204%; --time:3.2197658608337996s; --delay:-3.660450151715204s;"></div>
        <div class="bubble" style="--size:5.4983729654270626rem; --distance:6.303977958593758rem; --position:50.2723611025528%; --time:3.6261230926085752s; --delay:-2.590489629572386s;"></div>
        <div class="bubble" style="--size:3.150479222535422rem; --distance:8.84200472119684rem; --position:53.6614850954284%; --time:3.274067207047357s; --delay:-3.321426258385909s;"></div>
        <div class="bubble" style="--size:4.725153287456254rem; --distance:6.897537325318821rem; --position:72.08508486703484%; --time:3.201791078359805s; --delay:-2.343863671921376s;"></div>
        <div class="bubble" style="--size:3.370587708630034rem; --distance:6.969691305262999rem; --position:32.46409254252997%; --time:2.1794449998656673s; --delay:-2.67782271975975s;"></div>
        <div class="bubble" style="--size:5.989951976700553rem; --distance:9.114878165815874rem; --position:4.262608812737136%; --time:2.0603661025562006s; --delay:-2.000572897519532s;"></div>
        <div class="bubble" style="--size:5.064677800268545rem; --distance:8.443230444871068rem; --position:14.025102016116616%; --time:3.395664950186206s; --delay:-3.844764925021198s;"></div>
        <div class="bubble" style="--size:2.697825861285418rem; --distance:8.59014884247497rem; --position:97.65934929520543%; --time:2.5558264223399814s; --delay:-2.224111626301417s;"></div>
        <div class="bubble" style="--size:5.236703410069858rem; --distance:7.325184279160979rem; --position:102.6059118503373%; --time:3.7212985050064367s; --delay:-3.389853199787144s;"></div>
        <div class="bubble" style="--size:4.998493128701731rem; --distance:7.854989581263498rem; --position:51.007346704748706%; --time:3.4863098419014205s; --delay:-2.262038844991302s;"></div>
        <div class="bubble" style="--size:3.987017439750339rem; --distance:7.783254592124023rem; --position:80.26557976170352%; --time:3.916483367821218s; --delay:-2.58255124611077s;"></div>
        <div class="bubble" style="--size:3.873114763186722rem; --distance:9.839128628427392rem; --position:57.61256602098447%; --time:3.7633318354845735s; --delay:-2.975556689688032s;"></div>
        <div class="bubble" style="--size:5.468618271129567rem; --distance:6.730185122861404rem; --position:-4.262724678549368%; --time:2.0249387755565555s; --delay:-3.959068783929126s;"></div>
        <div class="bubble" style="--size:5.72723249617542rem; --distance:8.275165726651258rem; --position:34.301571747024084%; --time:3.7656802346731304s; --delay:-2.7159085045640747s;"></div>
        <div class="bubble" style="--size:2.1371834523208078rem; --distance:8.64722972091031rem; --position:91.00391780981313%; --time:3.4134799194432857s; --delay:-3.6418736199558603s;"></div>
        <div class="bubble" style="--size:2.9207382856566966rem; --distance:8.019450351202286rem; --position:81.40214018810543%; --time:2.487634171151511s; --delay:-3.623015796769719s;"></div>
        <div class="bubble" style="--size:4.376743848033079rem; --distance:6.893759041865588rem; --position:70.18849928941874%; --time:2.6905672877251354s; --delay:-2.6356594964421833s;"></div>
        <div class="bubble" style="--size:2.0948489000560055rem; --distance:7.57614407493372rem; --position:0.6869759684976451%; --time:2.3202060447265245s; --delay:-2.1976981140444805s;"></div>
        <div class="bubble" style="--size:3.950281658109833rem; --distance:8.781033632052852rem; --position:9.377966093668293%; --time:2.3274634573067554s; --delay:-3.4343414732667714s;"></div>
        <div class="bubble" style="--size:2.2468712322273126rem; --distance:9.467101383270462rem; --position:87.76700735302332%; --time:3.8644011270728305s; --delay:-2.3011782348255587s;"></div>
        <div class="bubble" style="--size:4.9981518562949105rem; --distance:6.847588709838459rem; --position:97.39422556306063%; --time:3.1793386670755988s; --delay:-2.532967176910341s;"></div>
        <div class="bubble" style="--size:5.640473971946339rem; --distance:7.397617089060241rem; --position:-3.49688452228593%; --time:3.3422186197148065s; --delay:-3.435054317687463s;"></div>
    </div>
    <div class="content">
        <div class="mainWrap">
            <div>
                <div class="contact">
                    <img src="statics/logo2.png" alt="">
                    <div class="txtwrapper">
                        <i class="material-icons">local_phone</i>
                        82191532
                        <span>
                            <i class="material-icons">email</i>
                            mail.nefu.edu.cn
                        </span>
                        <br>
                        <i class="material-icons">location_on</i>
                        黑龙江省哈尔滨市东北林业大学
                    </div>
                </div>
            </div>
            <div class="copyrights">
                <p>版权所有 © 东北林业大学 &nbsp;&nbsp;&nbsp;&nbsp;黑ICP备<a href="https://beian.miit.gov.cn/#/Integrated/index" target="_blank" style="color:#fff; text-decoration: none">19004777号</a></p>
            </div>
        </div>
    </div>
</div>
<svg style="position:fixed; top:100vh;">
    <defs>
        <filter id="blob">
            <feGaussianBlur in="SourceGraphic" stdDeviation="10" result="blur"></feGaussianBlur>
            <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 19 -9" result="blob"></feColorMatrix>
            <feComposite in="SourceGraphic" in2="blob" operator="atop"></feComposite>
        </filter>
    </defs>
</svg>
</body>
</html>
