<script type="text/javascript" src="js/jquery-1.6.1.js"></script>
<script>

var loan = {
   value : null,

   display : function() {
	  $("#loan").hide();
	  $("#div4").html(this.value.monthPayment);
	  $("#div5").html(this.value.stampDuty);
	  $("#div6").html(this.value.firstMonthPayment);
  }
};

</script>