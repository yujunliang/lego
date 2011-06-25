var loan = {
   value : null,

   display : function() {
	  $("#loan").hide();
	  $("#monthPayment").html(this.value.monthPayment);
	  $("#stampDuty").html(this.value.stampDuty);
	  $("#firstMonthPayment").html(this.value.firstMonthPayment);
	  $("#result").show();
   },
  
   init : function() {
	  $("#result").hide();
	  $("#loan").show();
	  $("#back").click(function(){
		  loan.init();
	  });
   }
};

loan.init();