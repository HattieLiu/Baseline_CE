<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="BICIdentification1.xsl"/>
	<!--  *********** point <DocumentIdentification10> Start ********** -->
	<xsl:template name="DocumentIdentification10">
		<xsl:param name="DocumentIdentification10"/>
		<xsl:param name="DocumentIdentification10_parent"/>
		<xsl:variable name="DocumentIdentification10_name" select="name($DocumentIdentification10)"/>
		<xsl:variable name="DocumentIdentification10_pname" select="$DocumentIdentification10_parent"/>
		<xsl:variable name="CmpardDocRefDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$DocumentIdentification10_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="IdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Id'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="VrsnDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Vrsn'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TpDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Tp'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="DocIndxDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'DocIndx'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$DocumentIdentification10_pname"/>_<xsl:value-of select="$DocumentIdentification10_name"/>')</xsl:attribute>
					<xsl:value-of select="$CmpardDocRefDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification10_pname"/>_<xsl:value-of select="$DocumentIdentification10_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$IdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification10_pname"/>_<xsl:value-of select="$DocumentIdentification10_name"/>_Id</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification10_pname"/>_<xsl:value-of select="$DocumentIdentification10_name"/>_Id</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DocumentIdentification10/Id"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$VrsnDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification10_pname"/>_<xsl:value-of select="$DocumentIdentification10_name"/>_Vrsn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification10_pname"/>_<xsl:value-of select="$DocumentIdentification10_name"/>_Vrsn</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DocumentIdentification10/Vrsn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$TpDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification10_pname"/>_<xsl:value-of select="$DocumentIdentification10_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification10_pname"/>_<xsl:value-of select="$DocumentIdentification10_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DocumentIdentification10/Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$DocIndxDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification10_pname"/>_<xsl:value-of select="$DocumentIdentification10_name"/>_DocIndx</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification10_pname"/>_<xsl:value-of select="$DocumentIdentification10_name"/>_DocIndx</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DocumentIdentification10/DocIndx"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="BICIdentification1" select="Submitr"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
							<xsl:with-param name="BICIdentification1_parent">
								<xsl:value-of select="$DocumentIdentification10_pname"/>_<xsl:value-of select="$DocumentIdentification10_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <DocumentIdentification10> end ********** -->
</xsl:stylesheet>
