<%@ page import="composite.loan.*" %>
<%@ page import="functions.primitives.*" %>
<%@ page import="composite.*" %>
<%@ page import="composite.lease.*" %>
<%@ page import="composite.lease.*" %>
<%
    final HttpServletRequest r = request;
	Loan loan = new Loan() {
        {
            setRate(Rate.valueOf(Double.parseDouble(r.getParameter("rate"))));
            setPrincipal(Amount.valueOf(Double.parseDouble(r.getParameter("amount"))));
            setTerm(Integer.parseInt(r.getParameter("term")));
            setCountryCode(r.getParameter("country"));
            setFirstTimeBuyer(true);
            setBorrowLoanApplicationFee(true);
            setApplicationFee(Amount.ZERO);
        }
    };
    new LoanCalculation().apply(loan);
    request.setAttribute("loan", loan);
    
%>

<script>
var loan = parent.frames['f2'].loan;

loan.value = 
{ monthPayment: ${loan.monthPayment},
  stampDuty: ${loan.stampDuty},
  firstMonthPayment: ${loan.firstMonthPayment}  
};

loan.display();
</script>