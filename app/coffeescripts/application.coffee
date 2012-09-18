jQuery ->
	# Formulários
	unless $("#incluir_medidas").is(":checked")
		do $(".medidas").hide

	$("#incluir_medidas").change ->
		if $(this).is(":checked")
			$(".medidas").stop(true, true).slideDown()
		else
			$(".medidas").stop(true, true).slideUp()

	$("form").submit ->
		$("[type='submit']").val("Enviando...").attr "disabled", "disabled"

	# Como medir seu sofá
	unless $("#incluir_medidas").is(":checked")
		$(".medidas input").not(":first").each ->
			@medida = $(this).attr "id"
			$("#imagem_#{@medida}").hide()
			$(this).hide()

	$(".medidas input").keydown ->
		console.log $(this).parent().parent().next().find("input").show()
		console.log "lol"

	$(".medidas input").focus ->
		@medida = $(this).attr "id"
		$(".medidas input").not($(this)).each ->
			@medida = $(this).attr "id"
			$("#imagem_#{@medida}").hide()
		
		$("#imagem_#{@medida}").show()

	# Botoes de fechar
	$(".close").click ->
		$(this).parent().remove()

	$(".thumbnails a, .fancy").fancybox
		'transitionIn': 		'elastic'
		'transitionOut': 		'elastic'
		'easingIn': 			'easeInOutQuad'
		'easingOut': 			'easeInOutQuad'
		'speedIn': 				500
		'speedOut': 			200
		'overlayShow': 			true
		'hideOnContentClick': 	true
		'hideOnOverlayClick': 	true


# $ ->
# 	# Paleta de cores
# 	creme = 		"#fffdf5"
# 	marrom = 		"#ecdcd5"
# 	azul =			"#1596d4"

# 	# Feedback do menu
# 	$(".menu li a").mouseenter ->
# 		$(".menu li a").not($(this)).stop(true, true).animate 	{color: marrom} 	, 200
# 		$(this).stop(true, true).animate 						{color: azul} 		, 200

# 	$(".menu a").mouseleave ->
# 		$(".menu li a").stop(true, true).animate 					{color: azul} 		, 200

# 	# Tooltip
# 	$("[data-tooltip]").hover ->
# 		if $(this).data "tooltip"
# 			tooltip = $("<div class='tooltip'><img src='/images/tip.png' height='20'>#{$(this).data "tooltip"}</div>")
# 			tooltip.appendTo("body").hide()
# 			tooltip.css 
# 				left: $(this).offset()["left"] - 16
# 				top: $(this).offset()["top"] - tooltip.outerHeight() - 15
# 			.fadeIn(150)

# 	, ->
# 		$(".tooltip").fadeOut 150, ->
# 			$(this).remove()

# 	$(".fancy").fancybox
# 		'transitionIn': 		'elastic'
# 		'transitionOut': 		'elastic'
# 		'easingIn': 			'easeInOutQuad'
# 		'easingOut': 			'easeInOutQuad'
# 		'speedIn': 				500
# 		'speedOut': 			200
# 		'overlayShow': 			true
# 		'hideOnContentClick': 	true
# 		'hideOnOverlayClick': 	true

# 	$(".erros").hide()

# 	$("form").submit ->
# 		$(".erros").hide().html("")
# 		$("input.btn").attr("disabled", "disabled").val("Enviando, aguarde...")
# 		$.post "/envio.json", $(this).serialize(), (errors) -> 
# 			$("input.btn").removeAttr("disabled", "disabled").val("Enviar")
# 			unless errors == false
# 				msg_html = "<p><strong>Houveram alguns erros:</strong></p>"
# 				for erro in errors
# 					msg_html += "<p>#{erro}</p>\n"
# 			else 
# 				msg_html = ""
# 				alert("Seu contato foi enviado com sucesso!")
# 				window.location = "/"
# 			console.log errors
# 			$(".erros").html(msg_html).fadeIn()
# 		false

# 	$(".como-medir-seu-sofa img, .medidas").hide()

# 	$("#contato_incluir_medidas").change ->
# 		$(".como-medir-seu-sofa img").css
# 			top: $(this).offset()["top"]-70
			
# 		if $(this).is(":checked")
# 			$(".como-medir-seu-sofa img, .medidas").stop(true, true).fadeIn()
# 		else 
# 			$(".como-medir-seu-sofa img, .medidas").stop(true, true).fadeOut()