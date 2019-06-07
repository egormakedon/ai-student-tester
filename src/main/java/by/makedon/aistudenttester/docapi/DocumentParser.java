package by.makedon.aistudenttester.docapi;

import by.makedon.aistudenttester.util.BaseException;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.extractor.WordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.springframework.web.multipart.MultipartFile;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author Yahor Makedon
 */
public class DocumentParser {
	private static final String REGEX_DOC = ".+\\.doc";

	public List<String> parseDocument(MultipartFile file) {
		if (file.getOriginalFilename().matches(REGEX_DOC)) {
			try (HWPFDocument document = new HWPFDocument(file.getInputStream())) {
				WordExtractor extractor = new WordExtractor(document);

				return Arrays.stream(extractor.getParagraphText())
						.map(String::trim)
						.filter(s -> !StringUtils.isBlank(s))
						.collect(Collectors.toList());
			} catch (Exception e) {
				throw new BaseException("Error on parsing document", e);
			}
		} else {
			try (XWPFDocument document = new XWPFDocument(file.getInputStream())) {
				return document.getParagraphs()
						.stream()
						.map(XWPFParagraph::getText)
						.map(String::trim)
						.filter(s -> !StringUtils.isBlank(s))
						.collect(Collectors.toList());
			} catch (Exception e) {
				throw new BaseException("Error on parsing document", e);
			}
		}
	}
}