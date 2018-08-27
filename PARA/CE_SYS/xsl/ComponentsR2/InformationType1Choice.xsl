<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="InformationType1Choice">
		<xsl:param name="InformationType1Choice"/>
		<xsl:param name="InformationType1Choice_parent"/>
		<xsl:variable name="InformationType1Choice_name" select="name($InformationType1Choice)"/>
		<xsl:variable name="InformationType1Choice_pname" select="$InformationType1Choice_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$InformationType1Choice_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Cd'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PrtryDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Prtry'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$InformationType1Choice_pname"/>_<xsl:value-of select="$InformationType1Choice_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$InformationType1Choice_pname"/>_<xsl:value-of select="$InformationType1Choice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$CdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InformationType1Choice_pname"/>_<xsl:value-of select="$InformationType1Choice_name"/>_Cd</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InformationType1Choice_pname"/>_<xsl:value-of select="$InformationType1Choice_name"/>_Cd</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InformationType1Choice/Cd"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$PrtryDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InformationType1Choice_pname"/>_<xsl:value-of select="$InformationType1Choice_name"/>_Prtry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InformationType1Choice_pname"/>_<xsl:value-of select="$InformationType1Choice_name"/>_Prtry</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InformationType1Choice/Prtry"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
