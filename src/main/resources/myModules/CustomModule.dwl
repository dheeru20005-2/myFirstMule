

// getting offer price in 3 diff ways
//simple function
fun getofferprice(originalprice,discountpercentage) = 
      originalprice*(100-discountpercentage)/100

//Multiline function. Do var scope is local to do
fun getofferprice1(originalprice,discountpercentage) = do {
	var step1=100-discountpercentage
	var step2=originalprice * step1
	var step3=step2/100
	---
	step3 //returnvalue
}

//Anonymous function. Always define variable to store the anonymous function

var getofferprice3=(originalprice,discountpercentage)-> originalprice*(100-discountpercentage)/100