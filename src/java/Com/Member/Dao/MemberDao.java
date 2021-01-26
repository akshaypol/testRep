/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Com.Member.Dao;

import Com.Member.Model.MemberModel;
import Com.Util.HibernateUtil;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author roveena
 */
public class MemberDao {

    public boolean save(MemberModel r) {
        Session session = HibernateUtil.getSessionFactory().openSession();

        Transaction t = null;

        try {
            t = session.getTransaction();
            t.begin();
            session.saveOrUpdate(r);
            t.commit();
        } catch (Exception e) {
            e.printStackTrace();
            t.rollback();
        } finally {
            session.close();
        }
        return true;
    }

    public List<MemberModel> getAll() {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        Criteria c = hsession.createCriteria(MemberModel.class);
        Transaction tx = hsession.beginTransaction();
        try {
              c.addOrder(Order.desc("Id"));
                c.add(Restrictions.eq("status",true));
            List<MemberModel> empList = c.list();
            tx.commit();
            return empList;
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
        return null;
    }

    public MemberModel getMember(MemberModel d) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        MemberModel u = null;
        Criteria c = hsession.createCriteria(MemberModel.class);
        Transaction tx = hsession.beginTransaction();
        try {
//            System.out.println("id in dao" + id);
            c.add(Restrictions.eq("Password", d.getPassword()));
            c.add(Restrictions.eq("Email", d.getEmail()));
            c.add(Restrictions.eq("status",true));
            u = (MemberModel) c.uniqueResult();
            tx.commit();
            if (u != null) {
                return u;
            }

        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
        return null;
    }

    public MemberModel getById(long id) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        MemberModel u = null;
        Criteria c = hsession.createCriteria(MemberModel.class);
        Transaction tx = hsession.beginTransaction();
        try {
//            System.out.println("id in dao" + id);
            c.add(Restrictions.eq("Id", id));
              c.add(Restrictions.eq("status",true));
            u = (MemberModel) c.uniqueResult();
            tx.commit();
            if (u != null) {
                return u;
            }

        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
        return null;
    }

    public MemberModel getBySponcerID(String id) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        MemberModel u = null;
        Criteria c = hsession.createCriteria(MemberModel.class);
        Transaction tx = hsession.beginTransaction();
        try {
//            System.out.println("id in dao" + id);
            c.add(Restrictions.eq("Username", id));
              c.add(Restrictions.eq("status",true));
            u = (MemberModel) c.uniqueResult();
            tx.commit();
            if (u != null) {
                return u;
            }

        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
        return null;
    }

    public void Update(MemberModel i) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();

        try {
            System.err.println(i);
            session.update(i);
            tx.commit();

        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            session.close();
        }
    }

    public int Delete(long id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        try {
            MemberModel deleteObject = (MemberModel) session.load(MemberModel.class, id);
            session.delete(deleteObject);
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
            return 0;
        } finally {
            session.close();

        }
        return 1;
    }

//    public long getMaxIDByRestoId(MemberModel o) {
//        Session session = HibernateUtil.getSessionFactory().openSession();
//        Transaction tx = session.beginTransaction();
//        long Id = 0;
//        try {
//            Query query = session.createQuery("SELECT MAX(id) FROM MemberModel");
////            query.setParameter("RestoID", o.getRestoID());
//            Id = (long) query.uniqueResult();
//            // System.err.println("Last Invoice ID " + empID);
//            tx.commit();
//            return Id;
//        } catch (Exception e) {
//            e.printStackTrace();
//            tx.rollback();
//        } finally {
//            session.close();
//        }
//        return Id;
//    }
    public List<MemberModel> QueryList(String query) {
        List<MemberModel> list = null;
        Transaction tra = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            tra = session.beginTransaction();
            list = session.createQuery(query).list();
        } catch (RuntimeException e) {
            e.printStackTrace();
        } finally {
            session.close();
        }

        return list;
    }

    public List<MemberModel> getMYMember(String query) {
        List<MemberModel> list = null;
        Transaction tra = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            tra = session.beginTransaction();
            list = session.createQuery(query).list();
        } catch (RuntimeException e) {
            e.printStackTrace();
        } finally {
            session.close();
        }

        return list;
    }

    public MemberModel getByUserID(String Username) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        MemberModel u = null;
        Criteria c = hsession.createCriteria(MemberModel.class);
        Transaction tx = hsession.beginTransaction();
        try {
//            System.out.println("id in dao" + id);
            c.add(Restrictions.eq("Username", Username));
              c.add(Restrictions.eq("status",true));
            u = (MemberModel) c.uniqueResult();
            tx.commit();
            if (u != null) {
                return u;
            }

        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
        return null;
    }



   




 

    public List<MemberModel> getBySpID(String id) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        Criteria c = hsession.createCriteria(MemberModel.class);
        Transaction tx = hsession.beginTransaction();
        try {

            c.add(Restrictions.eq("SponcerID", id));
              c.add(Restrictions.eq("status",true));
            List<MemberModel> empList = c.list();
            tx.commit();
            return empList;
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
        return null;
    }
    
     public MemberModel getbyEmail(String Email) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        MemberModel u = null;
        Criteria c = hsession.createCriteria(MemberModel.class);
        Transaction tx = hsession.beginTransaction();
        try {
//            System.out.println("id in dao" + id);
            c.add(Restrictions.eq("Email", Email));
              c.add(Restrictions.eq("status",true));
            u = (MemberModel) c.uniqueResult();
            tx.commit();
            if (u != null) {
                return u;
            }

        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
        return null;
    }
     
     
      public MemberModel getByIdTemp(long id) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        MemberModel u = null;
        Criteria c = hsession.createCriteria(MemberModel.class);
        Transaction tx = hsession.beginTransaction();
        try {
//            System.out.println("id in dao" + id);
            c.add(Restrictions.eq("Id", id));
             
            u = (MemberModel) c.uniqueResult();
            tx.commit();
            if (u != null) {
                return u;
            }

        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
        return null;
    }
}
