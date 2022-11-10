package com.brihaspathee.zeus.mapper.interfaces;

import com.brihaspathee.zeus.domain.entity.RuleSet;
import com.brihaspathee.zeus.dto.rules.RuleSetDto;

import java.util.List;

/**
 * Created in Intellij IDEA
 * User: Balaji Varadharajan
 * Date: 10, November 2022
 * Time: 3:45 AM
 * Project: Zeus
 * Package Name: com.brihaspathee.zeus.mapper.interfaces
 * To change this template use File | Settings | File and Code Template
 */
public interface RuleSetMapper {

    /**
     * Convert rule set entity to rule set dto
     * @param ruleSet
     * @return
     */
    RuleSetDto ruleSetToRuleSetDto(RuleSet ruleSet);

    /**
     * Convert Ruleset dto to entity
     * @param ruleSetDto
     * @return
     */
    RuleSet ruleSetDtoToRuleSet(RuleSetDto ruleSetDto);

    /**
     * Convert ruleset entities to rule set dtos
     * @param ruleSets
     * @return
     */
    List<RuleSetDto> ruleSetsToRuleSetDtos(List<RuleSet> ruleSets);

    /**
     * Convert rule set dtos to entities
     * @param ruleSetDtos
     * @return
     */
    List<RuleSet> ruleSetDtosToRuleSets(List<RuleSetDto> ruleSetDtos);
}
