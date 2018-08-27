<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
     <xsl:include href="Replacement1.xsl"/>
     <xsl:include href="Deletion1.xsl"/>
     <xsl:include href="Addition1.xsl"/>
	<!--  *********** point <ComparisonResult1> start ********** -->
	<xsl:template name="ComparisonResult1">
		<xsl:param name="ComparisonResult1"/>
		<xsl:param name="ComparisonResult1_parent"/>
		<xsl:variable name="ComparisonResult1_name" select="name($ComparisonResult1)"/>
		<xsl:variable name="ComparisonResult1_pname" select="$ComparisonResult1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$ComparisonResult1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ElmtSeqNbDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'ElmtSeqNb'"/>
			</xsl:call-template>
		</xsl:variable>
	   	<xsl:variable name="ElmtPthDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'ElmtPth'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ElmtNmDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'ElmtNm'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ComparisonResult1_pname"/>_<xsl:value-of select="$ComparisonResult1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$ComparisonResult1_pname"/>_<xsl:value-of select="$ComparisonResult1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$ElmtSeqNbDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ComparisonResult1_pname"/>_<xsl:value-of select="$ComparisonResult1_name"/>_ElmtSeqNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ComparisonResult1_pname"/>_<xsl:value-of select="$ComparisonResult1_name"/>_ElmtSeqNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ComparisonResult1/Doc:ElmtSeqNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$ElmtPthDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ComparisonResult1_pname"/>_<xsl:value-of select="$ComparisonResult1_name"/>_ElmtPth</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ComparisonResult1_pname"/>_<xsl:value-of select="$ComparisonResult1_name"/>_ElmtPth</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ComparisonResult1/Doc:ElmtPth"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$ElmtNmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ComparisonResult1_pname"/>_<xsl:value-of select="$ComparisonResult1_name"/>_ElmtNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ComparisonResult1_pname"/>_<xsl:value-of select="$ComparisonResult1_name"/>_ElmtNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ComparisonResult1/Doc:ElmtNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="Replacement1" select="$ComparisonResult1/Doc:Rplcmnt"/>
						<xsl:call-template name="Replacement1">
							<xsl:with-param name="Replacement1" select="$Replacement1"/>
							<xsl:with-param name="Replacement1_parent">
							     <xsl:value-of select="$ComparisonResult1_pname"/>_<xsl:value-of select="$ComparisonResult1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Deletion1" select="$ComparisonResult1/Doc:Deltn"/>
						<xsl:call-template name="Deletion1">
							<xsl:with-param name="Deletion1" select="$Deletion1"/>
						</xsl:call-template>
						<xsl:variable name="Addition1" select="$ComparisonResult1/Doc:Addtn"/>
						<xsl:call-template name="Addition1">
							<xsl:with-param name="Addition1" select="$Addition1"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ComparisonResult1> end ********** -->
</xsl:stylesheet>
