<script type="text/javascript" src="js/jquery-1.6.1.js"></script>
<script>

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
  }
};

loan.init();
</script>