<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:include href="BICIdentification1.xsl"/>
	<xsl:include href="Addition1.xsl"/>
	<!--  *********** point <DocumentIdentification5> start ********** -->
	<xsl:template name="DocumentIdentification5">
		<xsl:param name="DocumentIdentification5"/>
		<xsl:variable name="DocumentIdentification5_name" select="name($DocumentIdentification5)"/>
		<!-- Winston Law * For get the Field Description * 060614 begin-->
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$DocumentIdentification5_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="IdentificationDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Id'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="IdentificationDescName">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="Doc:Name"/>
			</xsl:call-template>
		</xsl:variable>
		<!-- Winston Law * For get the Field Description * 060614 end-->
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:element name="INPUT">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name">Doc:UsrTxRef_<xsl:value-of select="$DocumentIdentification5_name"/></xsl:attribute>
					<xsl:attribute name="tsu">N</xsl:attribute>
					<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('_<xsl:value-of select="$DocumentIdentification5_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id">_<xsl:value-of select="$DocumentIdentification5_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:UsrTxRef">
						<xsl:for-each select="$DocumentIdentification5/Doc:Id">
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									Identification:
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification5_name"/>_ID</xsl:attribute>
										<xsl:attribute name="id">Identification </xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										<xsl:attribute name="tsu">N</xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
						</xsl:for-each>
						<xsl:for-each select="$DocumentIdentification5/Doc:Name">
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									Identification  Name:
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification5_name"/>_Name</xsl:attribute>
										<xsl:attribute name="id">Identification  Name</xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										<xsl:attribute name="tsu">N</xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
						</xsl:for-each>
						<xsl:variable name="BICIdentification1" select="$DocumentIdentification5/Doc:IdIssr"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
						</xsl:call-template>
						<xsl:for-each select="Doc:Idt">
						<xsl:variable name="Addition1" select="."/>
						<xsl:call-template name="Addition1">
							<xsl:with-param name="Addition1" select="$Addition1"/>
						</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <DocumentIdentification5> end ********** -->
</xsl:stylesheet>
