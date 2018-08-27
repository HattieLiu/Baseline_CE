<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">

<!--  *********** point <Tax12> Start ********** -->
	<xsl:template name="Tax12">
		<xsl:param name="Tax12"/>
		<xsl:param name="Tax12_parent"/>
		<xsl:variable name="Tax12_name" select="name($Tax12)"/>
		<xsl:variable name="Tax12_pname" select="$Tax12_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$Tax12_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TpDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:Tp'"/>
		</xsl:call-template>
	</xsl:variable>
	<xsl:variable name="OthrTaxTpDesc">
		<xsl:call-template name="getFldDesc1">
			<xsl:with-param name="FldId" select="'OthrTaxTp'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Tax12_pname"/>_<xsl:value-of select="$Tax12_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$Tax12_pname"/>_<xsl:value-of select="$Tax12_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax12_pname"/>_<xsl:value-of select="$Tax12_name"/>_Tp_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax12_pname"/>_<xsl:value-of select="$Tax12_name"/>_Tp_check</xsl:attribute>
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:element>
								<xsl:value-of select="$TpDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax12_pname"/>_<xsl:value-of select="$Tax12_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax12_pname"/>_<xsl:value-of select="Tax12_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Tax12/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax12_pname"/>_<xsl:value-of select="$Tax12_name"/>_OthrAdjstmntTp_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax12_pname"/>_<xsl:value-of select="$Tax12_name"/>_OthrAdjstmntTp_check</xsl:attribute>
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:element>
								<xsl:value-of select="$OthrTaxTpDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax12_pname"/>_<xsl:value-of select="$Tax12_name"/>_OthrTaxTp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax12_pname"/>_<xsl:value-of select="$Tax12_name"/>_OthrTaxTp</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Tax12/Doc:OthrTaxTp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$AmtDesc"/>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax12_pname"/>_<xsl:value-of select="$Tax12_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax12_pname"/>_<xsl:value-of select="$Tax12_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Tax12/Doc:Amt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Tax12> end ********** -->
</xsl:stylesheet>
