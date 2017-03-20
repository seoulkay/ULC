
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>UFO</title>

        <!-- Bootstrap -->
        <link href="${pageContext.request.contextPath}/resources/pix/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- custom css -->
        <link href="${pageContext.request.contextPath}/resources/pix/css/style.css" rel="stylesheet" type="text/css" media="screen">
        <!-- font awesome for icons -->
        <link href="${pageContext.request.contextPath}/resources/pix/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!--flex slider-->
        <link href="${pageContext.request.contextPath}/resources/pix/css/flexslider.css" rel="stylesheet" type="text/css" media="screen">
        <!-- animated css  -->
        <link href="${pageContext.request.contextPath}/resources/pix/css/animate.css" rel="stylesheet" type="text/css" media="screen">
        <!--web fonts-->      
        <link href='http://fonts.googleapis.com/css?family=Lato:300,400,400italic' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

        <!--owl carousel css-->
        <link href="${pageContext.request.contextPath}/resources/pix/css/owl.carousel.css" rel="stylesheet" type="text/css" media="screen">
        <link href="${pageContext.request.contextPath}/resources/pix/css/owl.theme.css" rel="stylesheet" type="text/css" media="screen">
        <!--popups css-->
        <link href="${pageContext.request.contextPath}/resources/pix/css/magnific-popup.css" rel="stylesheet" type="text/css">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        
	    <script src="https://unpkg.com/react@15/dist/react.js"></script>
		<script src="https://unpkg.com/react-dom@15/dist/react-dom.js"></script>
		<!-- In-browser JSX transformer, remove when pre-compiling JSX. -->
		<script src="http://fb.me/JSXTransformer-0.12.0.js"></script>
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/pix/css/remodal.css">
  		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/pix/css/remodal-default-theme.css">
  		<style>
		    .remodal-bg.with-red-theme.remodal-is-opening,
		    .remodal-bg.with-red-theme.remodal-is-opened {
		      filter: none;
		    }
		
		    .remodal-overlay.with-red-theme {
		      background-color: #f44336;
		    }
		
		    .remodal.with-red-theme {
		      background: #fff;
		    }
		  </style>
		  <script src="${pageContext.request.contextPath}/resources/pix/js/remodal.js"></script>

		<!-- Events -->
		<script>
		  $(document).on('opening', '.remodal', function () {
		    console.log('opening');
		  });
		
		  $(document).on('opened', '.remodal', function () {
		    console.log('opened');
		  });
		
		  $(document).on('closing', '.remodal', function (e) {
		    console.log('closing' + (e.reason ? ', reason: ' + e.reason : ''));
		  });
		
		  $(document).on('closed', '.remodal', function (e) {
		    console.log('closed' + (e.reason ? ', reason: ' + e.reason : ''));
		  });
		
		  $(document).on('confirmation', '.remodal', function () {
		    console.log('confirmation');
		  });
		
		  $(document).on('cancellation', '.remodal', function () {
		    console.log('cancellation');
		  });
		
		  $('[data-remodal-id=modal2]').remodal({
		    modifier: 'with-red-theme'
		  });
		</script>
</head>
