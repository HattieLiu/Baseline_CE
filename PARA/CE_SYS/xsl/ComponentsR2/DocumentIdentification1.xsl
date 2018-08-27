<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--  *********** point <DocumentIdentification1> Start ********** -->
	<xsl:template name="DocumentIdentification1">
		<xsl:param name="DocumentIdentification1"/>
		<xsl:param name="DocumentIdentification1_parent"/>
		<xsl:variable name="DocumentIdentification1_name" select="name($DocumentIdentification1)"/>
		<xsl:variable name="DocumentIdentification1_pname" select="$DocumentIdentification1_parent"/>
		<xsl:variable name="submitBaseInIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$DocumentIdentification1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="vrsnDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Vrsn'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="IdentificationDesc">
		<xsl:call-template name="getFldDesc1">
			<xsl:with-param name="FldId" select="'Id'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$DocumentIdentification1_pname"/>_<xsl:value-of select="$DocumentIdentification1_name"/>')</xsl:attribute>
					<xsl:value-of select="$submitBaseInIdDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
			<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification1_pname"/>_<xsl:value-of select="$DocumentIdentification1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:100%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$IdentificationDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification1_pname"/>_<xsl:value-of select="$DocumentIdentification1_name"/>_Id</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification1_pname"/>_<xsl:value-of select="$DocumentIdentification1_name"/>_Id</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DocumentIdentification1/Id"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$vrsnDesc"/>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification1_pname"/>_<xsl:value-of select="$DocumentIdentification1_name"/>_Vrsn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification1_pname"/>_<xsl:value-of select="$DocumentIdentification1_name"/>_Vrsn</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DocumentIdentification1/Vrsn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="BICIdentification1" select="$DocumentIdentification1/Submitr"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
							<xsl:with-param name="BICIdentification1_parent">
								<xsl:value-of select="$DocumentIdentification1_pname"/>_<xsl:value-of select="$DocumentIdentification1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <DocumentIdentification1> end ********** -->
</xsl:stylesheet>
