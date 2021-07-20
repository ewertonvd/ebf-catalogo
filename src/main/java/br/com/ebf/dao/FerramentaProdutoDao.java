package br.com.ebf.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.caelum.vraptor.Result;
import br.com.ebf.modelo.EbfmesFerramentaProduto;

@RequestScoped
public class FerramentaProdutoDao {

	private EntityManager manager;

	@Inject
	public FerramentaProdutoDao(EntityManager manager) {
		this.manager = manager;
	}

	// PARA USO DO CDI
	public FerramentaProdutoDao() {
	}

	/*****************************************************************************************************/
	// public void salvaFerramentaProdVaz(FerramentaProdVaz ferramentaProdVaz) {
	// manager.getTransaction().begin();
	// if (ferramentaProdVaz.getId() == null) {
	// manager.persist(ferramentaProdVaz);
	// } else {
	// manager.merge(ferramentaProdVaz);
	// }
	// manager.getTransaction().commit();
	// manager.close();
	// }

	/*****************************************************************************************************/
	// public FerramentaProdVaz atualizaFerramentaProdVaz(Integer id, Result
	// result) {
	// FerramentaProdVaz ferramentaProdVaz = this.buscaFerramentaProdVaz(id);
	// return ferramentaProdVaz;
	// }

	/*****************************************************************************************************/
	public EbfmesFerramentaProduto carregaFerramenta(String codigoFerramenta, Result result) {
		EbfmesFerramentaProduto ebfmesFerramentaProduto = this.buscaFerramenta(codigoFerramenta);
		return ebfmesFerramentaProduto;
	}

	public EbfmesFerramentaProduto buscaFerramenta(String codigoFerramenta) {
		try {
			TypedQuery<EbfmesFerramentaProduto> query = manager.createQuery(
					"Select f from Ebfmes.Ferramenta_Produto f Where f.codigoFerramenta :=codigoFerramenta",
					EbfmesFerramentaProduto.class);
			query.setParameter("codigoFerramenta", codigoFerramenta);
			return query.getSingleResult();
		} catch (Exception e) {
			return null;
		}
	}
	
	public List<EbfmesFerramentaProduto> listaFerramentas() {
		try {
			TypedQuery<EbfmesFerramentaProduto> query = manager.createQuery("Select f from Ebfmes.Ferramenta_Produto f",
					EbfmesFerramentaProduto.class);
			return query.getResultList();
		} catch (Exception e) {
			return null;
		}
	}

	/*****************************************************************************************************/
	// LISTA DE PRODUTOS:
	// public List<Produto> listaProdVaz(String marca1, String marca2) {
	// try {
	// TypedQuery<Produto> query = manager.createQuery(
	// "Select p From Produto p join p.produtoVaz Where p.marca = :marca1 or
	// p.marca = :marca2 ",
	// Produto.class);
	// query.setParameter("marca1", marca1);
	// query.setParameter("marca2", marca2);
	// return query.getResultList();
	// } catch (Exception e) {
	// return null;
	// }
	// }

	/*****************************************************************************************************/
	// public List<FerramentaProdVaz> listaFerramProduto() {
	// try {
	// TypedQuery<FerramentaProdVaz> query = manager.createQuery("Select fpv
	// from FerramentaProdVaz fpv",
	// FerramentaProdVaz.class);
	// return query.getResultList();
	// } catch (Exception e) {
	// return null;
	// }
	// }
}