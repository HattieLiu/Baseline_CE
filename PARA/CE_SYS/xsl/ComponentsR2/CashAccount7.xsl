<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="AccountIdentification3Choice.xsl"/>
	<xsl:include href="CashAccountType2.xsl"/>
	<!--  *********** point <CashAccount7> Start ********** -->
	<xsl:template name="CashAccount7">
		<xsl:param name="CashAccount7"/>
		<xsl:param name="CashAccount7_parent"/>
		<xsl:variable name="CashAccount7_name" select="name($CashAccount7)"/>
		<xsl:variable name="CashAccount7_pname" select="$CashAccount7_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$CashAccount7_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CcyDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Ccy'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="NmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Nm'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$CashAccount7_pname"/>_<xsl:value-of select="$CashAccount7_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$CashAccount7_pname"/>_<xsl:value-of select="$CashAccount7_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$CcyDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$CashAccount7_pname"/>_<xsl:value-of select="$CashAccount7_name"/>_Ccy</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CashAccount7_pname"/>_<xsl:value-of select="$CashAccount7_name"/>_Ccy</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$CashAccount7/Ccy"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$NmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$CashAccount7_pname"/>_<xsl:value-of select="$CashAccount7_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CashAccount7_pname"/>_<xsl:value-of select="$CashAccount7_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$CashAccount7/Nm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="AccountIdentification3Choice" select="$CashAccount7/Id"/>
						<xsl:call-template name="AccountIdentification3Choice">
							<xsl:with-param name="AccountIdentification3Choice" select="$AccountIdentification3Choice"/>
							<xsl:with-param name="AccountIdentification3Choice_parent">
								<xsl:value-of select="$CashAccount7_pname"/>_<xsl:value-of select="$CashAccount7_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="CashAccountType2" select="$CashAccount7/Tp"/>
						<xsl:call-template name="CashAccountType2">
							<xsl:with-param name="CashAccountType2" select="$CashAccountType2"/>
							<xsl:with-param name="CashAccountType2_parent">
								<xsl:value-of select="$CashAccount7_pname"/>_<xsl:value-of select="$CashAccount7_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <CashAccount7> end ********** -->
</xsl:stylesheet>
