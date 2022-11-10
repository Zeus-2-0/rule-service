package com.brihaspathee.zeus.mapper.impl;

import com.brihaspathee.zeus.domain.entity.Rule;
import com.brihaspathee.zeus.dto.rules.RuleDto;
import com.brihaspathee.zeus.mapper.interfaces.RuleMapper;
import com.brihaspathee.zeus.mapper.interfaces.RuleTransactionMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

/**
 * Created in Intellij IDEA
 * User: Balaji Varadharajan
 * Date: 10, November 2022
 * Time: 4:42 AM
 * Project: Zeus
 * Package Name: com.brihaspathee.zeus.mapper.impl
 * To change this template use File | Settings | File and Code Template
 */
@Slf4j
@Component
@RequiredArgsConstructor
public class RuleMapperImpl implements RuleMapper {

    /**
     * Rule transaction mapper instance to map the transaction types of the rule
     */
    private final RuleTransactionMapper ruleTransactionMapper;

    /**
     * Convert rule entity to rule dto
     * @param rule
     * @return
     */
    @Override
    public RuleDto ruleToRuleDto(Rule rule) {
        if(rule == null){
            return null;
        }
        RuleDto ruleDto = RuleDto.builder()
                .ruleId(rule.getRuleId())
                .ruleName(rule.getRuleName())
                .ruleDesc(rule.getRuleDesc())
                .ruleImplName(rule.getRuleImplName())
                .active(rule.isActive())
                .ruleTransactions(ruleTransactionMapper
                        .ruleTransactionsToRuleTransactionDtos(
                                rule.getRuleTransactions()))
                .build();
        return ruleDto;
    }

    /**
     * Convert rule dto to entity
     * @param ruleDto
     * @return
     */
    @Override
    public Rule ruleDtoToRule(RuleDto ruleDto) {
        if(ruleDto == null){
            return null;
        }
        Rule rule = Rule.builder()
                .ruleId(ruleDto.getRuleId())
                .ruleName(ruleDto.getRuleName())
                .ruleDesc(ruleDto.getRuleDesc())
                .ruleImplName(ruleDto.getRuleImplName())
                .active(ruleDto.isActive())
                .ruleTransactions(ruleTransactionMapper
                        .ruleTransactionDtosToRuleTransactions(
                                ruleDto.getRuleTransactions()))
                .build();
        return rule;
    }

    /**
     * Convert rule entities to dtos
     * @param rules
     * @return
     */
    @Override
    public List<RuleDto> rulesToRuleDtos(List<Rule> rules) {
        return rules.stream().map(this::ruleToRuleDto).collect(Collectors.toList());
    }

    /**
     * Convert rule dtos to rule entities
     * @param ruleDtos
     * @return
     */
    @Override
    public List<Rule> ruleDtosToRules(List<RuleDto> ruleDtos) {
        return ruleDtos.stream().map(this::ruleDtoToRule).collect(Collectors.toList());
    }
}
