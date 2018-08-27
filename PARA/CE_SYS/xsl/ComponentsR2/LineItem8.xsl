<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="LineItemDetails8.xsl"/>
	<!--  *********** point <LineItem8> Start ********** -->
	<xsl:template name="LineItem8">
		<xsl:param name="LineItem8"/>
		<xsl:param name="LineItem8_parent"/>
		<xsl:param name="stmt2" select="Goods"/>
		<xsl:variable name="LineItem8_name" select="name($LineItem8)"/>
		<xsl:variable name="LineItem8_pname" select="$LineItem8_parent"/>
		<xsl:variable name="RptdLineItmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$LineItem8_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OrdrdLineItmsTtlAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'OrdrdLineItmsTtlAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AccptdLineItmsTtlAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'AccptdLineItmsTtlAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OutsdngLineItmsTtlAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'OutsdngLineItmsTtlAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PdgLineItmsTtlAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PdgLineItmsTtlAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OrdrdTtlNetAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'OrdrdTtlNetAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AccptdTtlNetAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'AccptdTtlNetAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OutsdngTtlNetAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'OutsdngTtlNetAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PdgTtlNetAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PdgTtlNetAmt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>')</xsl:attribute>
					<xsl:value-of select="$RptdLineItmDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$OrdrdLineItmsTtlAmtDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_OrdrdLineItmsTtlAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_OrdrdLineItmsTtlAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem8/OrdrdLineItmsTtlAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_OrdrdLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_OrdrdLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem8/OrdrdLineItmsTtlAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$AccptdLineItmsTtlAmtDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_AccptdLineItmsTtlAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_AccptdLineItmsTtlAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem8/AccptdLineItmsTtlAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_AccptdLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_AccptdLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem8/AccptdLineItmsTtlAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$OutsdngLineItmsTtlAmtDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_OutsdngLineItmsTtlAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_OutsdngLineItmsTtlAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem8/OutsdngLineItmsTtlAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_OutsdngLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_OutsdngLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem8/OutsdngLineItmsTtlAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$PdgLineItmsTtlAmtDesc"/>
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_PdgLineItmsTtlAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_PdgLineItmsTtlAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem8/PdgLineItmsTtlAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_PdgLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_PdgLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem8/PdgLineItmsTtlAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$OrdrdTtlNetAmtDesc"/>
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_OrdrdTtlNetAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_OrdrdTtlNetAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem8/OrdrdTtlNetAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_OrdrdTtlNetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_OrdrdTtlNetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem8/OrdrdTtlNetAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$AccptdTtlNetAmtDesc"/>
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_AccptdTtlNetAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_AccptdTtlNetAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem8/AccptdTtlNetAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_AccptdTtlNetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_AccptdTtlNetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem8/AccptdTtlNetAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$OutsdngTtlNetAmtDesc"/>
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_OutsdngTtlNetAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_OutsdngTtlNetAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem8/OutsdngTtlNetAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_OutsdngTtlNetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_OutsdngTtlNetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem8/OutsdngTtlNetAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$PdgTtlNetAmtDesc"/>
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_PdgTtlNetAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_PdgTtlNetAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem8/PdgTtlNetAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_PdgTtlNetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>_PdgTtlNetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem8/PdgTtlNetAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:for-each select="$LineItem8/LineItmDtls">
							<xsl:variable name="LineItemDetails8" select="."/>
							<xsl:call-template name="LineItemDetails8">
								<xsl:with-param name="LineItemDetails8" select="$LineItemDetails8"/>
								<xsl:with-param name="LineItemDetails8_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItem8_pname"/>_<xsl:value-of select="$LineItem8_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <LineItem8> end ********** -->
</xsl:stylesheet>
