package com.brihaspathee.zeus.service.impl;

import com.brihaspathee.zeus.domain.entity.RuleCategory;
import com.brihaspathee.zeus.domain.repository.RuleCategoryRepository;
import com.brihaspathee.zeus.dto.rules.RuleCategoryDto;
import com.brihaspathee.zeus.exception.RuleCategoryNotFoundException;
import com.brihaspathee.zeus.mapper.interfaces.RuleCategoryMapper;
import com.brihaspathee.zeus.service.interfaces.RuleService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.Optional;

/**
 * Created in Intellij IDEA
 * User: Balaji Varadharajan
 * Date: 10, November 2022
 * Time: 5:46 AM
 * Project: Zeus
 * Package Name: com.brihaspathee.zeus.service.impl
 * To change this template use File | Settings | File and Code Template
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class RuleServiceImpl implements RuleService {

    /**
     * Rule Category mapper instance
     */
    private final RuleCategoryMapper categoryMapper;

    /**
     * Rule category repository instance
     */
    private final RuleCategoryRepository repository;

    /**
     * Get rules by category name and type
     * @param ruleCategoryName
     * @param ruleType
     * @return
     */
    @Override
    public RuleCategoryDto getRules(String ruleCategoryName,
                                    String ruleType) {
        RuleCategory ruleCategory =
                repository.findRuleCategoryByRuleCategoryName(
                        ruleCategoryName).orElseThrow(() ->
                        new RuleCategoryNotFoundException("Rule with category: " + ruleCategoryName + " not found"));
        ruleCategory.getRuleTypes().removeIf(ruleType1 -> !ruleType1.getRuleTypeName().equals(ruleType));
        return categoryMapper.ruleCategoryToRuleCategoryDto(ruleCategory);
    }
}
