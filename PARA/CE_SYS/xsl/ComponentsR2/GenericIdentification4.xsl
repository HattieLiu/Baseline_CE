<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--  *********** point <GenericIdentification4> Start ********** -->
	<xsl:template name="GenericIdentification4">
		<xsl:param name="GenericIdentification4"/>
		<xsl:param name="GenericIdentification4_parent"/>
		<xsl:variable name="GenericIdentification4_name" select="name($GenericIdentification4)"/>
		<xsl:variable name="GenericIdentification4_pname" select="$GenericIdentification4_parent"/>
		<xsl:variable name="OthrPdctIdrDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$GenericIdentification4_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="IdentificationDesc">
		<xsl:call-template name="getFldDesc1">
			<xsl:with-param name="FldId" select="'Id'"/>
		</xsl:call-template>
	</xsl:variable>
	<xsl:variable name="IdTpnDesc">
		<xsl:call-template name="getFldDesc1">
			<xsl:with-param name="FldId" select="'IdTp'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$GenericIdentification4_pname"/>_<xsl:value-of select="$GenericIdentification4_name"/>')</xsl:attribute>
					<xsl:value-of select="$OthrPdctIdrDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$GenericIdentification4_pname"/>_<xsl:value-of select="$GenericIdentification4_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$IdentificationDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$GenericIdentification4_pname"/>_<xsl:value-of select="$GenericIdentification4_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$GenericIdentification4_pname"/>_<xsl:value-of select="$GenericIdentification4_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$GenericIdentification4/Id"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$IdTpnDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$GenericIdentification4_pname"/>_<xsl:value-of select="$GenericIdentification4_name"/>_IdTp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$GenericIdentification4_pname"/>_<xsl:value-of select="$GenericIdentification4_name"/>_IdTp</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$GenericIdentification4/IdTp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <GenericIdentification4> end ********** -->
</xsl:stylesheet>
