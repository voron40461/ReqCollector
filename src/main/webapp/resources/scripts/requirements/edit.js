;(function () {

	var editMode = 0;
	var currentEditArea;

	$('.card-text').hover(
	    function() {

	    	if (editMode == 0) {
	    	// start hover

	    	$(this).attr({
	    		'style' : 'border: 1px solid #ccc; border-radius: 4px; padding: 5px 8px 5px 8px;'
	    		
	    	});
	    	}

	    },
	    function() {
	    	
	    	if (editMode == 0) {
	    		
	    		// finish hover

		    	$(this).attr({
		    		'style' : 'padding: 6px 9px 6px 9px;'
		    		
		    	});
	    	}

	    }
	);


	$(function(){				
				
				var $win = $(window);
				var $box = $(".card-text");
				
				
				 $win.on("click.Bst", function(event){		
					if ($box.has(event.target).length == 0 &&
            			!$box.is(event.target)) {

						console.log("you clicked outside the box");

						if (editMode == 1) {
							console.log("edit mode off");

							var textValue = currentEditArea.value;
							currentEditArea.remove();
							$box.text(textValue);

							console.log("<" + currentEditArea + "> textValue = " + textValue);

							$box.attr({
		    					'style' : 'padding: 6px 9px 6px 9px;'
		    		    	});

		    		    	editMode = 0;
						}

					} else {
						console.log("you clicked inside the box");

								if (editMode == 0) {
									editMode = 1;
									var textValue = $box.text();

									$box.attr({
	    								'style' : 'border: 1px solid #ccc; border-radius: 4px; padding: 0;'
	    		
	    							});

									$box.html('<textarea id="editBox" style="border: none; resize:vertical; display:block" class="form-control"></textarea>');

									currentEditArea = document.getElementById('editBox');

									currentEditArea.value = textValue;

									console.log(currentEditArea.outerHTML);
								}
					}
				});
  
	});



	$("#btn-save").click(function(event) {
		var projectId = $('#project-id').text();
		var cardId = $('#card-id').text();
		var cardDataHtml = $('#card-data').text().replace(/</g, "&lt;").replace(/>/g, "&gt;");
		var cardPriority = $('#card-prior').find(":selected").text();
		var cardStatus = $('#card-status').find(":selected").text();

		$("#btn-save").prop("disabled", true);

		$.post("/projects/" + projectId + "/requirements/" + cardId, {
			id : cardId,
			body : cardDataHtml,
			prior : cardPriority,
			status : cardStatus
		}, function(data) {

			var json = JSON.parse(data);
			//...

		}).done(function() {
		}).fail(function(xhr, textStatus, errorThrown) {
		}).always(function() {
			$("#btn-save").prop("disabled", false);

		});

	});




})();