<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:include href="Reason2.xsl"/>
 <xsl:include href="RejectedElement1.xsl"/>
<!--  *********** point <RejectionReason1Choice> start ********** -->
	<xsl:template name="RejectionReason1Choice">
		<xsl:param name="RejectionReason1Choice"/>
		<xsl:param name="RejectionReason1Choice_parent"/>
		<xsl:variable name="RejectionReason1Choice_name" select="name($RejectionReason1Choice)"/>
		<xsl:variable name="RejectionReason1Choice_pname" select="$RejectionReason1Choice_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$RejectionReason1Choice_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$RejectionReason1Choice_pname"/>_<xsl:value-of select="$RejectionReason1Choice_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$RejectionReason1Choice_pname"/>_<xsl:value-of select="$RejectionReason1Choice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr><td/></tr>
						<xsl:variable name="Reason2" select="$RejectionReason1Choice/GblRjctnRsn"/>
						<xsl:call-template name="Reason2">
							<xsl:with-param name="Reason2" select="$Reason2"/>
							<xsl:with-param name="Reason2_parent">
							     <xsl:value-of select="$RejectionReason1Choice_pname"/>_<xsl:value-of select="$RejectionReason1Choice_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$RejectionReason1Choice/RjctdElmt">
						<xsl:variable name="RejectedElement1" select="."/>
						<xsl:call-template name="RejectedElement1">
							<xsl:with-param name="RejectedElement1" select="$RejectedElement1"/>
							<xsl:with-param name="RejectedElement1_parent">
							     <xsl:number value="position()"/>_<xsl:value-of select="$RejectionReason1Choice_pname"/>_<xsl:value-of select="$RejectionReason1Choice_name"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <RejectionReason1Choice> end ********** -->
</xsl:stylesheet>
