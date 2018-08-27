<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="Quantity4.xsl"/>
	<xsl:include href="PercentageTolerance1.xsl"/>
	<xsl:include href="ProductIdentifier2Choice.xsl"/>
	<xsl:include href="ProductCharacteristics1Choice.xsl"/>
	<xsl:include href="ProductCategory1Choice.xsl"/>
	<xsl:include href="GenericIdentification4.xsl"/>
	<!--  *********** point <LineItemDetails8> Start ********** -->
	<xsl:template name="LineItemDetails8">
		<xsl:param name="LineItemDetails8"/>
		<xsl:param name="LineItemDetails8_parent"/>
		<xsl:variable name="LineItemDetails8_name" select="name($LineItemDetails8)"/>
		<xsl:variable name="LineItemDetails8_pname" select="$LineItemDetails8_parent"/>
		<xsl:variable name="LineItmDtlsDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$LineItemDetails8_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="LineItmIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'LineItmId'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PdctNmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PdctNm'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OrdrdAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'OrdrdAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AccptdAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'AccptdAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OutsdngAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'OutsdngAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PdgAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PdgAmt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>')</xsl:attribute>
					<xsl:value-of select="$LineItmDtlsDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<!--<tr>
							<xsl:element name="TD">
								<table width="85%" border="0" cellpadding="0" cellspacing="0" align="left">-->
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$LineItmIdDesc"/>
								<!--</xsl:element>
										<xsl:element name="TD">-->
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>_LineItmId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>_LineItmId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails8/LineItmId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$PdctNmDesc"/>
								<!--</xsl:element>
										<xsl:element name="TD">-->
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>_PdctNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>_PdctNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails8/PdctNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$OrdrdAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>_OrdrdAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>_OrdrdAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails8/OrdrdAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>_OrdrdAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>_OrdrdAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails8/OrdrdAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$AccptdAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>_AccptdAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>_AccptdAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails8/AccptdAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>_AccptdAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>_AccptdAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails8/AccptdAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$OutsdngAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>_OutsdngAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>_OutsdngAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails8/OutsdngAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>_OutsdngAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>_OutsdngAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails8/OutsdngAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$PdgAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>_PdgAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>_PdgAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails8/PdgAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>_PdgAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>_PdgAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails8/PdgAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:for-each select="$LineItemDetails8/PdctIdr">
							<xsl:variable name="ProductIdentifier2Choice" select="."/>
							<xsl:call-template name="ProductIdentifier2Choice">
								<xsl:with-param name="ProductIdentifier2Choice" select="$ProductIdentifier2Choice"/>
								<xsl:with-param name="ProductIdentifier2Choice_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$LineItemDetails8/PdctChrtcs">
							<xsl:variable name="ProductCharacteristics1Choice" select="."/>
							<xsl:call-template name="ProductCharacteristics1Choice">
								<xsl:with-param name="ProductCharacteristics1Choice" select="$ProductCharacteristics1Choice"/>
								<xsl:with-param name="ProductCharacteristics1Choice_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$LineItemDetails8/PdctCtgy">
							<xsl:variable name="ProductCategory1Choice" select="."/>
							<xsl:call-template name="ProductCategory1Choice">
								<xsl:with-param name="ProductCategory1Choice" select="$ProductCategory1Choice"/>
								<xsl:with-param name="ProductCategory1Choice_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="Quantity4" select="$LineItemDetails8/OrdrdQty"/>
						<xsl:call-template name="Quantity4">
							<xsl:with-param name="Quantity4" select="$Quantity4"/>
							<xsl:with-param name="Quantity4_parent">
								<xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Quantity4_double" select="$LineItemDetails8/AccptdQty"/>
						<xsl:call-template name="Quantity4">
							<xsl:with-param name="Quantity4" select="$Quantity4_double"/>
							<xsl:with-param name="Quantity4_parent">
								<xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Quantity4_three" select="$LineItemDetails8/OutsdngQty"/>
						<xsl:call-template name="Quantity4">
							<xsl:with-param name="Quantity4" select="$Quantity4_three"/>
							<xsl:with-param name="Quantity4_parent">
								<xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Quantity4_four" select="$LineItemDetails8/PdgQty"/>
						<xsl:call-template name="Quantity4">
							<xsl:with-param name="Quantity4" select="$Quantity4_four"/>
							<xsl:with-param name="Quantity4_parent">
								<xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PercentageTolerance1" select="$LineItemDetails8/QtyTlrnce"/>
						<xsl:call-template name="PercentageTolerance1">
							<xsl:with-param name="PercentageTolerance1" select="$PercentageTolerance1"/>
							<xsl:with-param name="PercentageTolerance1_parent">
								<xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PercentageTolerance1_double" select="$LineItemDetails8/PricTlrnce"/>
						<xsl:call-template name="PercentageTolerance1">
							<xsl:with-param name="PercentageTolerance1" select="$PercentageTolerance1_double"/>
							<xsl:with-param name="PercentageTolerance1_parent">
								<xsl:value-of select="$LineItemDetails8_pname"/>_<xsl:value-of select="$LineItemDetails8_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<!--</table>
							</xsl:element>
						</tr>-->
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <LineItemDetails8> end ********** -->
</xsl:stylesheet>
