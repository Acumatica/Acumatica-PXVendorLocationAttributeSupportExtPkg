[![Project Status](http://opensource.box.com/badges/active.svg)](http://opensource.box.com/badges)

Adding Attribute Support to out-of-box Vendor Location Entity
==================================
An extension that allows to add attribute support to out-of-box Vendor Location Entity.

###Prerequisites
* Acumatica 6.0 or higher

Quick Start
-----------

### Installation

##### Install the customization deployment package
1. Download PXVendorLocationAttributeSupportExtPkg.zip from this repository
2. In your Acumatica ERP instance, navigate to System -> Customization -> Customization Projects (SM204505), import PXVendorLocationAttributeSupportExtPkg.zip as a customization project
3. Publish the customization project.

### Usage

1. Go to Attributes Screen (CS205000) and create new attributes if you need to.
2. Navigate to Vendor Location Classes Screen (AP201001) and create new Vendor Location Class for which you need to specify list of Attributes.
![Screenshot](/_ReadMeImages/AP201001.png)
3. Navigate to Vendor Locations Screen (AP303010) and select the Class ID for which you have specified the Attributes in Step # 2, you should be able to see Attributes specified in Step # 2 and can specify value for them.
![Screenshot](/_ReadMeImages/AP303010.png)

Known Issues
------------
None at the moment

## Copyright and License

Copyright © `2017` `Acumatica`

This component is licensed under the MIT License, a copy of which is available online [here](LICENSE.md)
