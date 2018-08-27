<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="LineItemDetails7.xsl"/>
	<xsl:include href="Incoterms1.xsl"/>
	<xsl:include href="Charge12.xsl"/>
	<xsl:include href="Adjustment3.xsl"/>
	<xsl:include href="Tax13.xsl"/>
	<xsl:include href="UserDefinedInformation1.xsl"/>
	<xsl:include href="TransportMeans1.xsl"/>
	<xsl:include href="ShipmentDateRange1.xsl"/>
	<!--  *********** point <LineItem7> Start ********** -->
	<xsl:template name="LineItem7">
		<xsl:param name="LineItem7"/>
		<xsl:param name="LineItem7_parent"/>
		<xsl:param name="stmt2" select="Goods"/>
		<xsl:variable name="LineItem7_name" select="name($LineItem7)"/>
		<xsl:variable name="LineItem7_pname" select="$LineItem7_parent"/>
		<xsl:variable name="goods">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$LineItem7_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="goodsDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'GoodsDesc'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PrtlShipmntDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PrtlShipmnt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TrnsShipmntDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TrnsShipmnt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ShipmntDtRgDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'ShipmntDtRg'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="LatstShipmntDtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'LatstShipmntDt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="LineItmsTtlAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'LineItmsTtlAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TtlNetAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TtlNetAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>')</xsl:attribute>
					<xsl:value-of select="$goods"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$goodsDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>_GoodsDesc</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>_GoodsDesc</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem7/GoodsDesc"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$PrtlShipmntDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>_PrtlShipmnt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>_PrtlShipmnt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem7/PrtlShipmnt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$TrnsShipmntDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>_TrnsShipmnt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>_TrnsShipmnt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem7/TrnsShipmnt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$LineItmsTtlAmtDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>_LineItmsTtlAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>_LineItmsTtlAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem7/LineItmsTtlAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>_LineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>_LineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem7/LineItmsTtlAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$TtlNetAmtDesc"/>
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>_TtlNetAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>_TtlNetAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem7/TtlNetAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>_TtlNetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>_TtlNetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem7/TtlNetAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="ShipmentDateRange1" select="$LineItem7/ShipmntDtRg"/>
						<xsl:call-template name="ShipmentDateRange1">
							<xsl:with-param name="ShipmentDateRange1" select="$ShipmentDateRange1"/>
							<xsl:with-param name="ShipmentDateRange1_parent">
								<xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$LineItem7/LineItmDtls">
							<xsl:variable name="LineItemDetails7" select="."/>
							<xsl:call-template name="LineItemDetails7">
								<xsl:with-param name="LineItemDetails7" select="$LineItemDetails7"/>
								<xsl:with-param name="LineItemDetails7_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="TransportMeans1" select="$LineItem7/RtgSummry"/>
						<xsl:call-template name="TransportMeans1">
							<xsl:with-param name="TransportMeans1" select="$TransportMeans1"/>
							<xsl:with-param name="TransportMeans1_parent">
								<xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$LineItem7/Incotrms">
							<xsl:variable name="Incoterms1" select="."/>
							<xsl:call-template name="Incoterms1">
								<xsl:with-param name="Incoterms1" select="$Incoterms1"/>
								<xsl:with-param name="Incoterms1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$LineItem7/Adjstmnt">
							<xsl:variable name="Adjustment3" select="."/>
							<xsl:call-template name="Adjustment3">
								<xsl:with-param name="Adjustment3" select="$Adjustment3"/>
								<xsl:with-param name="Adjustment3_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="Charge12" select="$LineItem7/FrghtChrgs"/>
						<xsl:call-template name="Charge12">
							<xsl:with-param name="Charge12" select="$Charge12"/>
							<xsl:with-param name="Charge12_parent">
								<xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$LineItem7/Tax">
							<xsl:variable name="Tax13" select="."/>
							<xsl:call-template name="Tax13">
								<xsl:with-param name="Tax13" select="$Tax13"/>
								<xsl:with-param name="Tax13_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$LineItem7/BuyrDfndInf">
							<xsl:variable name="UserDefinedInformation1" select="."/>
							<xsl:call-template name="UserDefinedInformation1">
								<xsl:with-param name="UserDefinedInformation1" select="$UserDefinedInformation1"/>
								<xsl:with-param name="UserDefinedInformation1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$LineItem7/SellrDfndInf">
							<xsl:variable name="UserDefinedInformation1_double" select="."/>
							<xsl:call-template name="UserDefinedInformation1">
								<xsl:with-param name="UserDefinedInformation1" select="$UserDefinedInformation1_double"/>
								<xsl:with-param name="UserDefinedInformation1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItem7_pname"/>_<xsl:value-of select="$LineItem7_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <LineItem7> end ********** -->
</xsl:stylesheet>
