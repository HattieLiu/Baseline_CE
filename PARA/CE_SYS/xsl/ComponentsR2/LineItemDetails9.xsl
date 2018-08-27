<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="UnitPrice9.xsl"/>
	<xsl:include href="ProductIdentifier2Choice.xsl"/>
	<xsl:include href="ProductCharacteristics1Choice.xsl"/>
	<xsl:include href="ProductCategory1Choice.xsl"/>
	<!--  *********** point <LineItemDetails9> Start ********** -->
	<xsl:template name="LineItemDetails9">
		<xsl:param name="LineItemDetails9"/>
		<xsl:param name="LineItemDetails9_parent"/>
		<xsl:variable name="LineItemDetails9_name" select="name($LineItemDetails9)"/>
		<xsl:variable name="LineItemDetails9_pname" select="$LineItemDetails9_parent"/>
		<xsl:variable name="ComrclLineItmsDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$LineItemDetails9_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$LineItemDetails9_pname"/>_<xsl:value-of select="$LineItemDetails9_name"/>')</xsl:attribute>
					<xsl:value-of select="$ComrclLineItmsDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails9_pname"/>_<xsl:value-of select="$LineItemDetails9_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$LineItmIdDesc"/>
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails9_pname"/>_<xsl:value-of select="$LineItemDetails9_name"/>_LineItmId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails9_pname"/>_<xsl:value-of select="$LineItemDetails9_name"/>_LineItmId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails9/LineItmId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$PdctNmDesc"/>
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails9_pname"/>_<xsl:value-of select="$LineItemDetails9_name"/>_PdctNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails9_pname"/>_<xsl:value-of select="$LineItemDetails9_name"/>_PdctNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails9/PdctNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$PdctOrgnDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails9_pname"/>_<xsl:value-of select="$LineItemDetails9_name"/>_PdctOrgn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails9_pname"/>_<xsl:value-of select="$LineItemDetails9_name"/>_PdctOrgn</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails9/PdctOrgn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$TtlAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails9_pname"/>_<xsl:value-of select="$LineItemDetails9_name"/>_TtlAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails9_pname"/>_<xsl:value-of select="$LineItemDetails9_name"/>_TtlAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails9/TtlAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails9_pname"/>_<xsl:value-of select="$LineItemDetails9_name"/>_TtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails9_pname"/>_<xsl:value-of select="$LineItemDetails9_name"/>_TtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails9/TtlAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="Quantity4" select="$LineItemDetails9/Qty"/>
						<xsl:call-template name="Quantity4">
							<xsl:with-param name="Quantity4" select="$Quantity4"/>
							<xsl:with-param name="Quantity4_parent">
								<xsl:value-of select="$LineItemDetails9_pname"/>_<xsl:value-of select="$LineItemDetails9_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="UnitPrice9" select="$LineItemDetails9/UnitPric"/>
						<xsl:call-template name="UnitPrice9">
							<xsl:with-param name="UnitPrice9" select="$UnitPrice9"/>
							<xsl:with-param name="UnitPrice9_parent">
								<xsl:value-of select="$LineItemDetails9_pname"/>_<xsl:value-of select="$LineItemDetails9_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$LineItemDetails9/PdctIdr">
							<xsl:variable name="ProductIdentifier2Choice" select="."/>
							<xsl:call-template name="ProductIdentifier2Choice">
								<xsl:with-param name="ProductIdentifier2Choice" select="$ProductIdentifier2Choice"/>
								<xsl:with-param name="ProductIdentifier2Choice_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItemDetails9_pname"/>_<xsl:value-of select="$LineItemDetails9_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$LineItemDetails9/PdctChrtcs">
							<xsl:variable name="ProductCharacteristics1Choice" select="."/>
							<xsl:call-template name="ProductCharacteristics1Choice">
								<xsl:with-param name="ProductCharacteristics1Choice" select="$ProductCharacteristics1Choice"/>
								<xsl:with-param name="ProductCharacteristics1Choice_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItemDetails9_pname"/>_<xsl:value-of select="$LineItemDetails9_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$LineItemDetails9/PdctCtgy">
							<xsl:variable name="ProductCategory1Choice" select="."/>
							<xsl:call-template name="ProductCategory1Choice">
								<xsl:with-param name="ProductCategory1Choice" select="$ProductCategory1Choice"/>
								<xsl:with-param name="ProductCategory1Choice_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItemDetails9_pname"/>_<xsl:value-of select="$LineItemDetails9_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$LineItemDetails9/Adjstmnt">
							<xsl:variable name="Adjustment4" select="."/>
							<xsl:call-template name="Adjustment4">
								<xsl:with-param name="Adjustment4" select="$Adjustment4"/>
								<xsl:with-param name="Adjustment4_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItemDetails9_pname"/>_<xsl:value-of select="$LineItemDetails9_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="Charge13" select="$LineItemDetails9/FrghtChrgs"/>
						<xsl:call-template name="Charge13">
							<xsl:with-param name="Charge13" select="$Charge13"/>
							<xsl:with-param name="Charge13_parent">
								<xsl:value-of select="$LineItemDetails9_pname"/>_<xsl:value-of select="$LineItemDetails9_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$LineItemDetails9/Tax">
							<xsl:variable name="Tax12" select="."/>
							<xsl:call-template name="Tax12">
								<xsl:with-param name="Tax12" select="$Tax12"/>
								<xsl:with-param name="Tax12_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItemDetails9_pname"/>_<xsl:value-of select="$LineItemDetails9_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <LineItemDetails9> end ********** -->
</xsl:stylesheet>
