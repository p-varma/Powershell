$upload = Import-Csv "C:\Users\Prashant\Desktop\New folder\upload.csv"
$output = New-Object System.Collections.ArrayList
$csvfile = "C:\Users\Prashant\Desktop\New folder\testpickup.csv"
# Create the CSV title header
Add-Content $csvfile "Air Waybill number,Order Number,Product,Shipper,Consignee,Consignee Address1,Consignee Address2,Consignee Address3,Destination City,Pincode,State,Mobile,Telephone,Item Description,Pieces,Collectable Value,Declared value,Actual Weight(g),Volumetric Weight(g),Length(cms),Breadth(cms),Height(cms),Sub Customer ID,Pickup name,Pickup Address,Pickup Phone,PINCODE,Return Name,Return Address,Return Phone,Return Pincode,DG_SHIPMENT,SELLER_TIN,INVOICE_NUMBER,INVOICE_DATE,ESUGAM_NUMBER,ITEM_CATEGORY,PACKING_TYPE,PICKUP_TYPE,RETURN_TYPE,PICKUP_LOCATION_CODE,SELLER_GSTIN,GST_HSN,GST_ERN,GST_TAX_NAME,GST_TAX_BASE,DISCOUNT,GST_TAX_RATE_CGSTN,GST_TAX_RATE_SGSTN,GST_TAX_RATE_IGSTN,GST_TAX_TOTAL,GST_TAX_CGSTN,GST_TAX_SGSTN,GST_TAX_IGSTN"
$output.Clear()
foreach ($up in $upload)
{ 
    if( $up."Air Waybill number" -ne ""){
        $output.Add($up.("Air Waybill number")) | Out-Null
        $output.Add($up.("Order Number"))| Out-Null
        $output.Add($up.("Product Type ( COD / PPD )"))| Out-Null
        $output.Add($up.("Shipper"))| Out-Null
        $output.Add($up.("Consignee Name"))| Out-Null
        $output.Add(($up.("Consignee Address1")-replace "`n"," " -replace "`r"," " -replace ","," "))| Out-Null
        $output.Add(($up.("Consignee Address2")-replace "`n"," " -replace "`r"," " -replace ","," "))| Out-Null
        $output.Add(($up.("Consignee Address3")-replace "`n"," " -replace "`r"," " -replace ","," "))| Out-Null
        $output.Add($up.("Destination City"))| Out-Null
        $output.Add($up.("Consignee Pincode"))| Out-Null
        $output.Add($up.("State"))| Out-Null
        $output.Add($up.("Mobile"))| Out-Null
        $output.Add($up.("Telephone"))| Out-Null
        $output.Add($up.("Item Description"))| Out-Null
        $output.Add($up.("Pieces"))| Out-Null
        $output.Add($up.("Collectable Value"))| Out-Null
        $output.Add($up.("Declared value"))| Out-Null
        $output.Add($up.("Actual Weight"))| Out-Null
        $output.Add($up.("Actual Weight"))| Out-Null
        $output.Add($up.("Length(cms)"))| Out-Null
        $output.Add($up.("Breadth(cms)"))| Out-Null
        $output.Add($up.("Height(cms)"))| Out-Null
        $output.Add("911062")| Out-Null
        $output.Add("Anwitaa")| Out-Null
        $output.Add("A 605 Padmavati Dhara  Kaspate Chowk Wakad Pune 411057")| Out-Null
        $output.Add("9421264842")| Out-Null
        $output.Add("411057")| Out-Null
        $output.Add("Anwitaa")| Out-Null
        $output.Add("A 605 Padmavati Dhara Kaspate Chowk Wakad Pune 411057")| Out-Null
        $output.Add("9421264842")| Out-Null
        $output.Add("411057")| Out-Null
        $output.Add("")| Out-Null
        $output.Add("")| Out-Null
        $output.Add("")| Out-Null
        $output.Add($up.("Order Date"))| Out-Null
        $output.Add("")| Out-Null
        $output.Add("")| Out-Null
        $output.Add("")| Out-Null
        $output.Add("")| Out-Null
        $output.Add("")| Out-Null
        $output.Add("")| Out-Null
        $output.Add("27ENBPS7209M1ZF")| Out-Null

        $csvline = $output[0] + "," + $output[1] + "," + $output[2] + "," + $output[3] + "," + $output[4] + "," + $output[5] + "," + $output[6] + "," + $output[7] + "," + $output[8] + "," + $output[9] + "," + $output[10] + "," + $output[11] + "," + $output[12] + "," + $output[13] + "," + $output[14] + "," + $output[15] + "," + $output[16] + "," + $output[17] + "," + $output[18] + "," + $output[19] + "," + $output[20] + "," + $output[21] + "," + $output[22] + "," + $output[23] + "," + $output[24] + "," + $output[25] + "," + $output[26] + "," + $output[27] + "," + $output[28] + "," + $output[29] + "," + $output[30] + "," + $output[31] + "," + $output[32] + "," + $output[33] + "," + $output[34] + "," + $output[35] + "," + $output[36] + "," + $output[37] + "," + $output[38] + "," + $output[39] + "," + $output[40] + "," + $output[41] 
        Add-Content $csvfile $csvline
        $output.Clear()
    }
}
