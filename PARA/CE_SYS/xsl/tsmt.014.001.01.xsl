<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:include href="Goods.xsl"/>
	<xsl:template match="Doc:Document/Doc:tsmt.014.001.01">
		<html>
			<head>
				<title>CS Eximbills Enterprise Trade Servise Utility Message Viewer</title>
				<LINK REL="stylesheet" TYPE="text/css" HREF="../TSU/theme/swift.css"/>
				<script language="JavaScript">
				function Swap(n){
				var x;
				y=document.getElementById(n);
				y=y.style;
				if(y.display=="none"){
					y.display="block"		
					}
				else if(y.display=="block"){
					y.display="none";
					}
				}
			</script>
			</head>
			<body>
				<table width="99%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="style">height:22</xsl:attribute>
							<xsl:attribute name="colspan">1000</xsl:attribute>
							<xsl:attribute name="class">Heading2</xsl:attribute>
							<xsl:text>DataSetSubmission (tsmt.014.001.01)</xsl:text>
						</xsl:element>
					</tr>
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="style">height:22</xsl:attribute>
							<xsl:attribute name="colspan">1000</xsl:attribute>
							<xsl:attribute name="class">ContentBorderTopLeft</xsl:attribute>
							<xsl:text>.</xsl:text>
						</xsl:element>
					</tr>
					<tr>
						<td width="3%" height="22" align="right" class="ContentBorderLeft">.</td>
						<td colspan="100">
							<table width="99%" border="0" cellpadding="0" cellspacing="0">
								<!--	<xsl:choose> 
								 <xsl:when test="*[tsmt.001.001.01]"> -->
								<!-- SubmissnId -->
								 <xsl:variable name="MessageIdentification1" select="Doc:SubmissnId"></xsl:variable>
								<xsl:call-template name="MessageIdentification1">
									<xsl:with-param name="MessageIdentification1" select="$MessageIdentification1"/>
								</xsl:call-template>
								<!-- TxRltdRefs -->
								<xsl:variable name="DataSetSubmissionReferences1" select="Doc:TxRltdRefs"></xsl:variable>
								<xsl:call-template name="DataSetSubmissionReferences1">
									<xsl:with-param name="DataSetSubmissionReferences1" select="$DataSetSubmissionReferences1"/>
								</xsl:call-template>
								<!-- Instr -->
								<xsl:variable name="InstructionType3" select="Doc:Instr"></xsl:variable>
								<xsl:call-template name="InstructionType3">
									<xsl:with-param name="InstructionType3" select="$InstructionType3"/>
								</xsl:call-template>
								<!-- BuyrBk -->
								<xsl:variable name="BICIdentification1" select="Doc:BuyrBk"></xsl:variable>
								<xsl:call-template name="BICIdentification1">
									<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
								</xsl:call-template>
								<!-- SellrBk -->
								<xsl:variable name="BICIdentification1_double" select="Doc:SellrBk"></xsl:variable>
								<xsl:call-template name="BICIdentification1">
									<xsl:with-param name="BICIdentification1" select="$BICIdentification1_double"/>
								</xsl:call-template>
								<!-- StordDataSetRef -->
								<xsl:variable name="DocumentIdentification1" select="Doc:StordDataSetRef"></xsl:variable>
								<xsl:call-template name="DocumentIdentification1">
									<xsl:with-param name="DocumentIdentification1" select="$DocumentIdentification1"/>
								</xsl:call-template>
								<!-- NewComrclDataSet -->
								<xsl:variable name="CommercialDataSet1" select="Doc:NewComrclDataSet"></xsl:variable>
								<xsl:call-template name="CommercialDataSet1">
									<xsl:with-param name="CommercialDataSet1" select="$CommercialDataSet1"/>
								</xsl:call-template>
								<!-- NewTrnsprtDataSet -->
								<xsl:variable name="TransportDataSet1" select="Doc:NewTrnsprtDataSet"></xsl:variable>
								<xsl:call-template name="TransportDataSet1">
									<xsl:with-param name="TransportDataSet1" select="$TransportDataSet1"/>
								</xsl:call-template>
								<!--	 </xsl:when>
								 <xsl:otherwise>
									<xsl:apply-templates select="ReqForActn" />
								 </xsl:otherwise> 
								</xsl:choose> -->
								<!-- bottom -->
							</table>
						</td>
					</tr>
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="class">ContentBorderBottomLeft</xsl:attribute>
							<xsl:text disable-output-escaping="yes">.</xsl:text>
						</xsl:element>
						<xsl:element name="TD">
							<xsl:attribute name="class">FieldName</xsl:attribute>
							<xsl:text disable-output-escaping="yes">.</xsl:text>
						</xsl:element>
					</tr>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
