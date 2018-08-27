<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">

<!--  *********** point <RequiredSubmission1> Start ********** -->
	<xsl:template name="RequiredSubmission1">
		<xsl:param name="RequiredSubmission1"/>
		<xsl:param name="Requ1_FullName"/>
		<xsl:variable name="RequiredSubmission1_name" select="name($RequiredSubmission1)"/>
		<xsl:variable name="Requ1_FullName_fox" select="$Requ1_FullName"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$RequiredSubmission1_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Requ1_FullName_fox"/>_<xsl:value-of select="$RequiredSubmission1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$Requ1_FullName_fox"/>_<xsl:value-of select="$RequiredSubmission1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Latest Match Date:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequiredSubmission1_name"/>_LatstMtchDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequiredSubmission1_name"/>_LatstMtchDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequiredSubmission1/Doc:LatstMtchDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Required Commercial Data Set:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequiredSubmission1_name"/>_ReqrdComrclDataSet</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequiredSubmission1_name"/>_ReqrdComrclDataSet</xsl:attribute>
									<xsl:attribute name="class">W_4</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequiredSubmission1/Doc:ReqrdComrclDataSet"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Required Transport Data Set:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequiredSubmission1_name"/>_ReqrdTrnsprtDataSet</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequiredSubmission1_name"/>_ReqrdTrnsprtDataSet</xsl:attribute>
									<xsl:attribute name="class">W_4</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequiredSubmission1/Doc:ReqrdTrnsprtDataSet"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="BICIdentification1" select="$RequiredSubmission1/Doc:Submitr"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
							<xsl:with-param name="BIC_FullName">
								<xsl:value-of select="$Requ1_FullName_fox"/>_<xsl:value-of select="$RequiredSubmission1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <RequiredSubmission1> end ********** -->
	
	</xsl:stylesheet>