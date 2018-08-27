<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:include href="ProductIdentifier2Choice.xsl"/>
	<xsl:include href="ProductCharacteristics1Choice.xsl"/>
	<xsl:include href="ProductCategory1Choice.xsl"/>
	<xsl:include href="Quantity2.xsl"/>
	<xsl:include href="PercentageTolerance1.xsl"/>
	<!--  *********** point <LineItemDetails5> Start ********** -->
	<xsl:template name="LineItemDetails5">
		<xsl:param name="LineItemDetails5"/>
		<xsl:param name="LineItemDetails5_parent"/>
		<xsl:param name="Line3_FullName"/>
		<xsl:variable name="LineItemDetails5_name" select="name($LineItemDetails5)"/>
		<xsl:variable name="LineItemDetails5_pname" select="$LineItemDetails5_parent"/>
		<xsl:variable name="Line3_FullName_fox" select="$Line3_FullName"/>
		<xsl:variable name="submissnIDDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$LineItemDetails5_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="LineItmIdDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:LineItmId'"/>
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
		<xsl:variable name="AmtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Amt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$Line3_FullName_fox"/>_<xsl:value-of select="$LineItemDetails5_name"/>')</xsl:attribute>
					<xsl:value-of select="$submissnIDDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$Line3_FullName_fox"/>_<xsl:value-of select="$LineItemDetails5_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$LineItmIdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$LineItemDetails5_name"/>_LineItmId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$LineItemDetails5_name"/>_LineItmId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails5/Doc:LineItmId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$PdctNmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$LineItemDetails5_name"/>_PdctNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$LineItemDetails5_name"/>_PdctNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails5/Doc:PdctNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:for-each select="$LineItemDetails5/Doc:PdctIdr">
								<xsl:variable name="ProductIdentifier2Choice" select="."/>
								<xsl:call-template name="ProductIdentifier2Choice">
									<xsl:with-param name="ProductIdentifier2Choice" select="$ProductIdentifier2Choice"/>
									<xsl:with-param name="ProductIdentifier2Choice_parent">
										<xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$Line3_FullName_fox"/>_<xsl:value-of select="$LineItemDetails5_name"/>
									</xsl:with-param>
								</xsl:call-template>
							</xsl:for-each>
							<xsl:for-each select="$LineItemDetails5/Doc:PdctChrtcs">
								<xsl:variable name="ProductCharacteristics1Choice" select="."/>
								<xsl:call-template name="ProductCharacteristics1Choice">
									<xsl:with-param name="ProductCharacteristics1Choice" select="$ProductCharacteristics1Choice"/>
									<xsl:with-param name="ProductCharacteristics1Choice_parent">
										<xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$Line3_FullName_fox"/>_<xsl:value-of select="$LineItemDetails5_name"/>
									</xsl:with-param>
								</xsl:call-template>
							</xsl:for-each>
							<xsl:for-each select="$LineItemDetails5/Doc:PdctCtgy">
								<xsl:variable name="ProductCategory1Choice" select="."/>
								<xsl:call-template name="ProductCategory1Choice">
									<xsl:with-param name="ProductCategory1Choice" select="$ProductCategory1Choice"/>
									<xsl:with-param name="ProductCategory1Choice_parent">
										<xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$Line3_FullName_fox"/>_<xsl:value-of select="$LineItemDetails5_name"/>
									</xsl:with-param>
								</xsl:call-template>
							</xsl:for-each>
							<xsl:variable name="Quantity2" select="$LineItemDetails5/Doc:OrdrdQty"/>
							<xsl:call-template name="Quantity2">
								<xsl:with-param name="Quantity2" select="$Quantity2"/>
								<xsl:with-param name="Quantity2_parent">
									<xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$Line3_FullName_fox"/>_<xsl:value-of select="$LineItemDetails5_name"/>
								</xsl:with-param>
								<xsl:with-param name="Quantity2_qname">Ordered Quantity</xsl:with-param>
							</xsl:call-template>
							<xsl:variable name="Quantity2_double" select="$LineItemDetails5/Doc:AccptdQty"/>
							<xsl:call-template name="Quantity2">
								<xsl:with-param name="Quantity2" select="$Quantity2_double"/>
								<xsl:with-param name="Quantity2_parent">
									<xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$Line3_FullName_fox"/>_<xsl:value-of select="$LineItemDetails5_name"/>
								</xsl:with-param>
								<xsl:with-param name="Quantity2_qname">Accepted Quantity</xsl:with-param>
							</xsl:call-template>
							<xsl:variable name="Quantity2_three" select="$LineItemDetails5/Doc:OutsdngQty"/>
							<xsl:call-template name="Quantity2">
								<xsl:with-param name="Quantity2" select="$Quantity2_three"/>
								<xsl:with-param name="Quantity2_parent">
									<xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$Line3_FullName_fox"/>_<xsl:value-of select="$LineItemDetails5_name"/>
								</xsl:with-param>
								<xsl:with-param name="Quantity2_qname">Outstanding Quantity</xsl:with-param>
							</xsl:call-template>
							<xsl:variable name="Quantity2_four" select="$LineItemDetails5/Doc:PdgQty"/>
							<xsl:call-template name="Quantity2">
								<xsl:with-param name="Quantity2" select="$Quantity2_four"/>
								<xsl:with-param name="Quantity2_parent">
									<xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$Line3_FullName_fox"/>_<xsl:value-of select="$LineItemDetails5_name"/>
								</xsl:with-param>
								<xsl:with-param name="Quantity2_qname">Pending Quantity</xsl:with-param>
							</xsl:call-template>
							<xsl:variable name="PercentageTolerance1" select="$LineItemDetails5/Doc:QtyTlrnce"/>
							<xsl:call-template name="PercentageTolerance1">
								<xsl:with-param name="PercentageTolerance1" select="$PercentageTolerance1"/>
								<xsl:with-param name="PercentageTolerance1_parent">
									<xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$Line3_FullName_fox"/>_<xsl:value-of select="$LineItemDetails5_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$OrdrdAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$LineItemDetails5_name"/>_OrdrdAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$LineItemDetails5_name"/>_OrdrdAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails5/Doc:OrdrdAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$AccptdAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$LineItemDetails5_name"/>_AccptdAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$LineItemDetails5_name"/>_AccptdAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails5/Doc:AccptdAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$OutsdngAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$LineItemDetails5_name"/>_OutsdngAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$LineItemDetails5_name"/>_OutsdngAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails5/Doc:OutsdngAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$PdgAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$LineItemDetails5_name"/>_PdgAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$LineItemDetails5_name"/>_PdgAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails5/Doc:PdgAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="PercentageTolerance1_double" select="$LineItemDetails5/Doc:PricTlrnce"/>
						<xsl:call-template name="PercentageTolerance1">
							<xsl:with-param name="PercentageTolerance1" select="$PercentageTolerance1_double"/>
							<xsl:with-param name="PercentageTolerance1_parent">
								<xsl:value-of select="$LineItemDetails5_pname"/>_<xsl:value-of select="$Line3_FullName_fox"/>_<xsl:value-of select="$LineItemDetails5_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <LineItemDetails5> end ********** -->
</xsl:stylesheet>
