%dw 2.0
output application/dw
import * from myModules::CustomModule
import dw::core::Strings
var name = payload.name

var myupper= upper // function can be stored to var

// defining function. takes input and a function as input
fun formatData(myinput, myformatter) = myformatter(myinput) // fun or variable passed as input to another function

// above same func - coercing input to string and function input so that it is easy to read and know what are inputs exactly
fun formatData(myinput:String, myformatter: (String)->String) = myformatter(myinput) // fun or variable passed as input to another function

---

//Strings::isLowerCase("raj")

//formatData("Dheeraj", lower)

"Dheeraj" formatData lower // if func is taking 2 args you can call like this. Not 3

/* 
prodcut :
{
	pid: payload.productId,
	name: upper(name),
	price: payload.originalPrice,
	offerprice: getofferprice(payload.originalPrice,payload.offer.discountPercentage),
	offerprice1: getofferprice1(payload.originalPrice,payload.offer.discountPercentage) - 50,
	offerprice2: getofferprice3(payload.originalPrice,payload.offer.discountPercentage) - 100,
	images: payload.images
	
	
	
} */