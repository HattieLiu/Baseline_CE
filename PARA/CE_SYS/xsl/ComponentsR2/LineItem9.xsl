<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="LineItemDetails9.xsl"/>
	<xsl:include href="Adjustment4.xsl"/>
	<xsl:include href="Tax12.xsl"/>
	<!--  *********** point <LineItem9> Start ********** -->
	<xsl:template name="LineItem9">
		<xsl:param name="LineItem9"/>
		<xsl:param name="LineItem9_parent"/>
		<xsl:param name="stmt2" select="Goods"/>
		<xsl:variable name="LineItem9_name" select="name($LineItem9)"/>
		<xsl:variable name="LineItem9_pname" select="$LineItem9_parent"/>
		<xsl:variable name="GoodsDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$LineItem9_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="FnlSubmissnDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'FnlSubmissn'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$LineItem9_pname"/>_<xsl:value-of select="$LineItem9_name"/>')</xsl:attribute>
					<xsl:value-of select="$GoodsDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$LineItem9_pname"/>_<xsl:value-of select="$LineItem9_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$FnlSubmissnDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem9_pname"/>_<xsl:value-of select="$LineItem9_name"/>_FnlSubmissn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem9_pname"/>_<xsl:value-of select="$LineItem9_name"/>_FnlSubmissn</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem9/FnlSubmissn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$LineItmsTtlAmtDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem9_pname"/>_<xsl:value-of select="$LineItem9_name"/>_LineItmsTtlAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem9_pname"/>_<xsl:value-of select="$LineItem9_name"/>_LineItmsTtlAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem9/LineItmsTtlAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem9_pname"/>_<xsl:value-of select="$LineItem9_name"/>_LineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem9_pname"/>_<xsl:value-of select="$LineItem9_name"/>_LineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem9/LineItmsTtlAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$TtlNetAmtDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem9_pname"/>_<xsl:value-of select="$LineItem9_name"/>_TtlNetAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem9_pname"/>_<xsl:value-of select="$LineItem9_name"/>_TtlNetAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem9/TtlNetAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem9_pname"/>_<xsl:value-of select="$LineItem9_name"/>_TtlNetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem9_pname"/>_<xsl:value-of select="$LineItem9_name"/>_TtlNetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem9/TtlNetAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="DocumentIdentification7" select="$LineItem9/PurchsOrdrRef"/>
						<xsl:call-template name="DocumentIdentification7">
							<xsl:with-param name="DocumentIdentification7" select="$DocumentIdentification7"/>
							<xsl:with-param name="DocumentIdentification7_parent">
								<xsl:value-of select="$LineItem9_pname"/>_<xsl:value-of select="$LineItem9_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$LineItem9/ComrclLineItms">
							<xsl:variable name="LineItemDetails9" select="."/>
							<xsl:call-template name="LineItemDetails9">
								<xsl:with-param name="LineItemDetails9" select="$LineItemDetails9"/>
								<xsl:with-param name="LineItemDetails9_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItem9_pname"/>_<xsl:value-of select="$LineItem9_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="Incoterms2" select="$LineItem9/Incotrms"/>
						<xsl:call-template name="Incoterms2">
							<xsl:with-param name="Incoterms2" select="$Incoterms2"/>
							<xsl:with-param name="Incoterms2_parent">
								<xsl:value-of select="$LineItem9_pname"/>_<xsl:value-of select="$LineItem9_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$LineItem9/Adjstmnt">
							<xsl:variable name="Adjustment4" select="."/>
							<xsl:call-template name="Adjustment4">
								<xsl:with-param name="Adjustment4" select="$Adjustment4"/>
								<xsl:with-param name="Adjustment4_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItem9_pname"/>_<xsl:value-of select="$LineItem9_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="Charge13" select="$LineItem9/FrghtChrgs"/>
						<xsl:call-template name="Charge13">
							<xsl:with-param name="Charge13" select="$Charge13"/>
							<xsl:with-param name="Charge13_parent">
								<xsl:value-of select="$LineItem9_pname"/>_<xsl:value-of select="$LineItem9_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$LineItem9/Tax">
							<xsl:variable name="Tax12" select="."/>
							<xsl:call-template name="Tax12">
								<xsl:with-param name="Tax12" select="$Tax12"/>
								<xsl:with-param name="Tax12_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItem9_pname"/>_<xsl:value-of select="$LineItem9_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$LineItem9/BuyrDfndInf">
							<xsl:variable name="UserDefinedInformation1" select="."/>
							<xsl:call-template name="UserDefinedInformation1">
								<xsl:with-param name="UserDefinedInformation1" select="$UserDefinedInformation1"/>
								<xsl:with-param name="UserDefinedInformation1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItem9_pname"/>_<xsl:value-of select="$LineItem9_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$LineItem9/SellrDfndInf">
							<xsl:variable name="UserDefinedInformation1_double" select="."/>
							<xsl:call-template name="UserDefinedInformation1">
								<xsl:with-param name="UserDefinedInformation1" select="$UserDefinedInformation1_double"/>
								<xsl:with-param name="UserDefinedInformation1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItem9_pname"/>_<xsl:value-of select="$LineItem9_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <LineItem9> end ********** -->
</xsl:stylesheet>
