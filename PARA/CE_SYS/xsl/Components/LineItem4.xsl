<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
  <xsl:include href="LineItemDetails6.xsl"/>
  <xsl:include href="Incoterms2.xsl"/>
  <xsl:include href="Charge13.xsl"/>
<xsl:include href="Adjustment4.xsl"/>
<xsl:include href="Tax12.xsl"/>

<xsl:include href="UserDefinedInformation1.xsl"/>
<!--  *********** point <LineItem4> Start ********** -->
	<xsl:template name="LineItem4">
		<xsl:param name="LineItem4"/>
		<xsl:param name="LineItem4_parent"/>
		<xsl:param name="Line_FullName"/>
		<xsl:variable name="LineItem4_name" select="name($LineItem4)"/>
		<xsl:variable name="LineItem4_pname" select="$LineItem4_parent"/>
		<xsl:variable name="Line_FullName_fox" select="$Line_FullName"/>
		
	<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$LineItem4_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TtlNetAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TtlNetAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="LineItmsTtlAmtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:LineItmsTtlAmt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$LineItem4_pname"/>_<xsl:value-of select="$Line_FullName_fox"/>_<xsl:value-of select="$LineItem4_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$LineItem4_pname"/>_<xsl:value-of select="$Line_FullName_fox"/>_<xsl:value-of select="$LineItem4_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<xsl:variable name="DocumentIdentification7" select="$LineItem4/Doc:PurchsOrdrRef"/>
						<xsl:call-template name="DocumentIdentification7">
							<xsl:with-param name="DocumentIdentification7" select="$DocumentIdentification7"/>
							<xsl:with-param name="DocumentIdentification7_parent">
							     <xsl:value-of select="$LineItem4_pname"/>_<xsl:value-of select="$Line_FullName_fox"/>_<xsl:value-of select="$LineItem4_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$LineItem4/Doc:ComrclLineItms">
						<xsl:variable name="LineItemDetails6" select="."/>
						<xsl:call-template name="LineItemDetails6">
							<xsl:with-param name="LineItemDetails6" select="$LineItemDetails6"/>
							<xsl:with-param name="Line2_FullName">
								<xsl:value-of select="$Line_FullName_fox"/>_<xsl:value-of select="$LineItem4_name"/>
							</xsl:with-param>
							<xsl:with-param name="LineItemDetails6_parent">
							     <xsl:number value="position()"/>_<xsl:value-of select="$LineItem4_pname"/>_<xsl:value-of select="$Line_FullName_fox"/>_<xsl:value-of select="$LineItem4_name"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$LineItmsTtlAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem4_pname"/>_<xsl:value-of select="$LineItem4_name"/>_LineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem4_pname"/>_<xsl:value-of select="$LineItem4_name"/>_LineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem4/Doc:LineItmsTtlAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="Incoterms2" select="$LineItem4/Doc:Incotrms"/>
						<xsl:call-template name="Incoterms2">
							<xsl:with-param name="Incoterms2" select="$Incoterms2"/>
							<xsl:with-param name="Inco_FullName">
								<xsl:value-of select="substring($LineItem4_name,5)"/>
							</xsl:with-param>
							<xsl:with-param name="Incoterms2_parent">
							     <xsl:value-of select="$LineItem4_pname"/>_<xsl:value-of select="$Line_FullName_fox"/>_<xsl:value-of select="$LineItem4_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Charge13" select="$LineItem4/Doc:FrghtChrgs"/>
						<xsl:call-template name="Charge13">
							<xsl:with-param name="Charge13" select="$Charge13"/>
							<xsl:with-param name="Char_FullName">
								<xsl:value-of select="substring($LineItem4_name,5)"/>
							</xsl:with-param>
							<xsl:with-param name="Charge13_parent">
							     <xsl:value-of select="$LineItem4_pname"/>_<xsl:value-of select="$Line_FullName_fox"/>_<xsl:value-of select="$LineItem4_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Adjustment4" select="$LineItem4/Doc:Adjstmnt"/>
						<xsl:call-template name="Adjustment4">
							<xsl:with-param name="Adjustment4" select="$Adjustment4"/>
							<xsl:with-param name="Adjust_FullName">
								<xsl:value-of select="$Line_FullName_fox"/>_<xsl:value-of select="substring($LineItem4_name,5)"/>
							</xsl:with-param>
							<xsl:with-param name="Adjustment4_parent">
							     <xsl:value-of select="$LineItem4_pname"/>_<xsl:value-of select="$Line_FullName_fox"/>_<xsl:value-of select="$LineItem4_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Tax12" select="$LineItem4/Doc:Tax"/>
						<xsl:call-template name="Tax12">
							<xsl:with-param name="Tax12" select="$Tax12"/>
							<xsl:with-param name="Tax12_parent">
							     <xsl:value-of select="$LineItem4_pname"/>_<xsl:value-of select="$Line_FullName_fox"/>_<xsl:value-of select="$LineItem4_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$TtlNetAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem4_pname"/>_<xsl:value-of select="$LineItem4_name"/>_TtlNetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem4_pname"/>_<xsl:value-of select="$LineItem4_name"/>_TtlNetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem4/Doc:TtlNetAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="UserDefinedInformation1" select="$LineItem4/Doc:BuyrDfndInf"/>
						<xsl:call-template name="UserDefinedInformation1">
							<xsl:with-param name="UserDefinedInformation1" select="$UserDefinedInformation1"/>
							<xsl:with-param name="User_FullName">
								<xsl:value-of select="substring($LineItem4_name,5)"/>
							</xsl:with-param>
							<xsl:with-param name="UserDefinedInformation1_parent">
							     <xsl:value-of select="$LineItem4_pname"/>_<xsl:value-of select="$Line_FullName_fox"/>_<xsl:value-of select="$LineItem4_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="UserDefinedInformation1_double" select="$LineItem4/Doc:SellrDfndInf"/>
						<xsl:call-template name="UserDefinedInformation1">
							<xsl:with-param name="UserDefinedInformation1" select="$UserDefinedInformation1_double"/>
							<xsl:with-param name="User_FullName">
								<xsl:value-of select="substring($LineItem4_name,5)"/>
							</xsl:with-param>
							<xsl:with-param name="UserDefinedInformation1_parent">
							     <xsl:value-of select="$LineItem4_pname"/>_<xsl:value-of select="$Line_FullName_fox"/>_<xsl:value-of select="$LineItem4_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <LineItem4> end ********** -->
</xsl:stylesheet>
