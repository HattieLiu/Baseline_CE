<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
    <xsl:include href="Quantity2.xsl"/>
    <xsl:include href="UnitPrice8.xsl"/>
    <xsl:include href="ProductIdentifier2Choice.xsl"/>
    <xsl:include href="ProductCharacteristics1Choice.xsl"/>
    <xsl:include href="ProductCategory1Choice.xsl"/>
    
<!--  *********** point <LineItemDetails6> Start ********** -->
	<xsl:template name="LineItemDetails6">
		<xsl:param name="LineItemDetails6"/>
		<xsl:param name="Line2_FullName"/>
		<xsl:variable name="LineItemDetails6_name" select="name($LineItemDetails6)"/>
		<xsl:variable name="Line2_FullName_fox" select="$Line2_FullName"/>
		<xsl:for-each select="$LineItemDetails6">
			<xsl:variable name="refrain">
				<xsl:value-of select="string(position())"/>
			</xsl:variable>
			<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$LineItemDetails6_name"/>
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
		<xsl:variable name="PdctOrgnDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PdctOrgn'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TtlAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TtlAmt'"/>
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
						<xsl:attribute name="onClick">Swap('<xsl:value-of select="$LineItemDetails6_name"/>_<xsl:value-of select="$refrain"/>')</xsl:attribute>
						<xsl:value-of select="$fldDesc"/>
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
						<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails6_name"/>_<xsl:value-of select="$refrain"/></xsl:attribute>
						<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
						<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$LineItmIdDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails6_name"/>_LineItmId</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails6_name"/>_LineItmId</xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails6/Doc:LineItmId"/></xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
							<xsl:variable name="Quantity2" select="$LineItemDetails6/Doc:Qty"/>
							<xsl:call-template name="Quantity2">
								<xsl:with-param name="Quantity2" select="$Quantity2"/>
							</xsl:call-template>
							<xsl:variable name="UnitPrice8_one" select="$LineItemDetails6/Doc:UnitPric"/>
							<xsl:call-template name="UnitPrice8">
								<xsl:with-param name="UnitPrice8" select="$UnitPrice8_one"/>
							</xsl:call-template>
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$PdctNmDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails6_name"/>_PdctNm</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails6_name"/>_PdctNm</xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails6/Doc:PdctNm"/></xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
							<xsl:variable name="ProductIdentifier2Choice" select="$LineItemDetails6/Doc:PdctIdr"/>
							<xsl:call-template name="ProductIdentifier2Choice">
								<xsl:with-param name="ProductIdentifier2Choice" select="$ProductIdentifier2Choice"/>
							</xsl:call-template>
							<xsl:variable name="ProductCharacteristics1Choice" select="$LineItemDetails6/Doc:PdctChrtcs"/>
							<xsl:call-template name="ProductCharacteristics1Choice">
								<xsl:with-param name="ProductCharacteristics1Choice" select="$ProductCharacteristics1Choice"/>
							</xsl:call-template>
							<xsl:variable name="ProductCategory1Choice" select="$LineItemDetails6/Doc:PdctCtgy"/>
							<xsl:call-template name="ProductCategory1Choice">
								<xsl:with-param name="ProductCategory1Choice" select="$ProductCategory1Choice"/>
							</xsl:call-template>
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$PdctOrgnDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails6_name"/>_PdctOrgn</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails6_name"/>_PdctOrgn</xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails6/Doc:PdctOrgn"/></xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
							<xsl:variable name="Adjustment4" select="$LineItemDetails6/Doc:Adjstmnt"/>
							<xsl:call-template name="Adjustment4">
								<xsl:with-param name="Adjustment4" select="$Adjustment4"/>
								<xsl:with-param name="Adjust_FullName">
									<xsl:value-of select="$Line2_FullName_fox"/>_<xsl:value-of select="substring($LineItemDetails6_name,5)"/>
								</xsl:with-param>
							</xsl:call-template>
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$TtlAmtDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails6_name"/>_TtlAmt</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails6_name"/>_TtlAmt</xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails6/Doc:TtlAmt"/></xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
						</table>
					</xsl:element>
				</xsl:element>
			</tr>
		</xsl:for-each>
	</xsl:template>
	<!--  *********** point <LineItemDetails6> end ********** -->
</xsl:stylesheet>
