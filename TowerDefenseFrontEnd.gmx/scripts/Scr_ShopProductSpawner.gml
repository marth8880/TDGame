//Scr_ShopProductSpawner function script

var xx, yy, headerText, headerFontType, headerVOffset, subHeaderText, subHeaderFontType, subHeaderVOffset, benefitText, benefitFontType, benefitVOffset, buttonFontColor, productSprite, productCost;

//args
xx = argument0;
yy = argument1;
headerText = argument2;
//headerFontType = argument3;
headerVOffset = argument3;
subHeaderText = argument4;
//subHeaderFontType = argument6;
subHeaderVOffset = argument5;
benefitText = argument6;
//benefitFontType = argument9;
benefitVOffset = argument7;
//buttonFontColor = argument8;
productSprite = argument8;
productCost = argument9;

//create the object with its new properties
button = instance_create(xx, yy, obj_shop_product);
button.myHeaderText = headerText;
button.myHeaderFontType = fnt_shop_product_header;
button.myHeaderVOffset = headerVOffset;
button.mySubHeaderText = subHeaderText;
button.mySubHeaderFontType = fnt_shop_product_subheader;
button.mySubHeaderVOffset = subHeaderVOffset;
button.myBenefitText = benefitText;
button.myBenefitFontType = fnt_shop_product_benefit;
button.myBenefitVOffset = benefitVOffset;
button.myButtonFontColor = c_white;
button.myProductSprite = productSprite;
button.myProductCost = productCost;
