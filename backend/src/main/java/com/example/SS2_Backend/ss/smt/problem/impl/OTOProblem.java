package com.example.SS2_Backend.ss.smt.problem.impl;

import com.example.SS2_Backend.ss.smt.evaluator.FitnessEvaluator;
import com.example.SS2_Backend.ss.smt.match.Matches;
import com.example.SS2_Backend.ss.smt.preference.impl.provider.NewProvider;
import com.example.SS2_Backend.ss.smt.problem.MatchingProblem;
import org.moeaframework.core.Variable;

public class OTOProblem extends MatchingProblem {

    public OTOProblem(String problemName,
                      String[] evaluateFunctions,
                      String fitnessFunction,
                      NewProvider preferencesProvider,
                      String[][] individualRequirements,
                      double[][] individualWeights,
                      double[][] individualProperties,
                      int numberOfIndividuals,
                      int setNum,
                      int[] individualCapacities,
                      FitnessEvaluator fitnessEvaluator) {
        super(problemName,
                evaluateFunctions,
                fitnessFunction,
                preferencesProvider,
                individualRequirements,
                individualWeights,
                individualProperties,
                numberOfIndividuals,
                setNum,
                individualCapacities,
                fitnessEvaluator);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    protected Matches stableMatching(Variable var) {
        return null;
    }
}
