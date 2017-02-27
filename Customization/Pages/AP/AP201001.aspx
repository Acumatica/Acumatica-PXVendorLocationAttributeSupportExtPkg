<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="AP201001.aspx.cs" Inherits="Page_AP201001" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
    <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%" PrimaryView="VendorLocationClasses" TypeName="PXVendorLocationAttributeSupportExtPkg.VendorLocationClassMaint">
        <CallbackCommands>
        </CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
    <px:PXFormView ID="form" runat="server" DataSourceID="ds" Style="z-index: 100" 
		Width="100%" DataMember="VendorLocationClasses" TabIndex="1100">
		<Template>
			<px:PXLayoutRule runat="server" StartRow="True"/>
		    <px:PXSelector ID="edVendorLocationClassID" runat="server" DataField="VendorLocationClassID">
            </px:PXSelector>
            <px:PXTextEdit ID="edDescr" runat="server" DataField="Descr">
            </px:PXTextEdit>
		</Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
	<px:PXGrid runat="server" BorderWidth="0px" Height="150px" SkinID="Details" Width="100%" ID="AttributesGrid" MatrixMode="True" DataSourceID="ds">
		<AutoSize Enabled="True" Container="Window" MinHeight="150" />
		<Levels>
			<px:PXGridLevel DataMember="Mapping">
				<RowTemplate>
					<px:PXSelector runat="server" DataField="AttributeID" FilterByAllFields="True" AllowEdit="True" CommitChanges="True" ID="edAttributeID" /></RowTemplate>
				<Columns>
					<px:PXGridColumn DataField="AttributeID" Width="81px" AutoCallBack="True" LinkCommand="ShowDetails" />
					<px:PXGridColumn DataField="Description" Width="351px" AllowNull="False" />
					<px:PXGridColumn DataField="SortOrder" TextAlign="Right" Width="81px" />
					<px:PXGridColumn DataField="Required" Type="CheckBox" TextAlign="Center" AllowNull="False" />
					<px:PXGridColumn DataField="CSAttribute__IsInternal" Type="CheckBox" TextAlign="Center" AllowNull="True" />
					<px:PXGridColumn DataField="ControlType" Type="DropDownList" Width="81px" AllowNull="False" />
					<px:PXGridColumn DataField="DefaultValue" RenderEditorText="False" Width="100px" AllowNull="True" />

				</Columns>
			</px:PXGridLevel>
		</Levels>
	</px:PXGrid>
</asp:Content>