package com.brihaspathee.zeus.mapper.interfaces;

import com.brihaspathee.zeus.domain.entity.Rule;
import com.brihaspathee.zeus.dto.rules.RuleDto;

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
public interface RuleMapper {

    /**
     * Convert rule entity to rule dto
     * @param rule
     * @return
     */
    RuleDto ruleToRuleDto(Rule rule);

    /**
     * Convert rule dto to entity
     * @param ruleDto
     * @return
     */
    Rule ruleDtoToRule(RuleDto ruleDto);

    /**
     * Convert rule entities to dtos
     * @param rules
     * @return
     */
    List<RuleDto> rulesToRuleDtos(List<Rule> rules);

    /**
     * Convert rule dtos to rule entities
     * @param ruleDtos
     * @return
     */
    List<Rule> ruleDtosToRules(List<RuleDto> ruleDtos);
}
