<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsd="http://www.w3.org/1999/XSL/Tranform"
	xmlns:functx="https://www.functx.com/" xmlns:wd="urn:com.workday.report/Rahul_Test_Security_Group">
	<xsl:output method="xml" />
	<xsl:template match="wd:Report_Data">
		<root>
			<xsl:for-each select="wd:Report_Entry">
				<row>
					<xsl:value-of select="wd:Security_Group/@wd:Descriptor"/>
				</row>
			</xsl:for-each>
		</root>
		<!-- TODO: Auto-generated template -->
	</xsl:template>
</xsl:stylesheet>