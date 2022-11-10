package com.brihaspathee.zeus.mapper.interfaces;

import com.brihaspathee.zeus.domain.entity.RuleCategory;
import com.brihaspathee.zeus.dto.rules.RuleCategoryDto;

import java.util.List;

/**
 * Created in Intellij IDEA
 * User: Balaji Varadharajan
 * Date: 10, November 2022
 * Time: 3:44 AM
 * Project: Zeus
 * Package Name: com.brihaspathee.zeus.mapper.interfaces
 * To change this template use File | Settings | File and Code Template
 */
public interface RuleCategoryMapper {

    /**
     * Convert rule category entity to rule category dto
     * @param ruleCategory
     * @return
     */
    RuleCategoryDto ruleCategoryToRuleCategoryDto(RuleCategory ruleCategory);

    /**
     * Convert rule category dto to entity
     * @param ruleCategoryDto
     * @return
     */
    RuleCategory ruleCategoryDtoToRuleCategory(RuleCategoryDto ruleCategoryDto);

    /**
     * Convert rule category entities to dtos
     * @param ruleCategories
     * @return
     */
    List<RuleCategoryDto> ruleCategoriesToRuleCategoryDtos(List<RuleCategory> ruleCategories);

    /**
     * Convert rule category dtos to entities
     * @param ruleCategoryDtos
     * @return
     */
    List<RuleCategory> ruleCategoryDtosToRuleCategories(List<RuleCategoryDto> ruleCategoryDtos);
}
